import io
import time
import minio
from mpi4py import MPI


# Function to get an object from Minio and store it in memory
def get_minio_object(size):
    object_name = f'{size}'
    try:
        obj = minio_client.get_object('bucket', object_name)
        data = obj.read()
        if data:
            return True
    except Exception as e:
        print(f"Rank {rank}: Error retrieving {size} file {object_name}: {str(e)}")
        return None

    return False

# Function to get a file from PFS and store it in memory
def get_pfs_file(size):
    file_name = f"/users/mchrapek/minio/data/{size}"
    try:
        with open(file_name, 'rb') as file:
            data = file.read()
            if data:
                return True
    except FileNotFoundError:
        print(f"Error: {size} file {file_name} not found on the local filesystem")
        return None

    return False

# Convert a string to the number of bytes
def size_to_bytes(size_str):
    size_str = size_str.upper()
    multiplier = 1  # Default multiplier for bytes

    if size_str.endswith("KB"):
        multiplier = 1000  # 1 kilobyte = 1000 bytes
    elif size_str.endswith("MB"):
        multiplier = 1000 ** 2  # 1 megabyte = 1000^2 bytes
    elif size_str.endswith("GB"):
        multiplier = 1000 ** 3  # 1 gigabyte = 1000^3 bytes
    elif size_str.endswith("B"):
        size_str += " "
    
    size_str = size_str[:-2]
    try:
        # Try to parse the remaining string as an integer
        size = int(size_str)
        return size * multiplier
    except ValueError:
        raise ValueError("Invalid size format")


# Initialize MPI
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
world_size = comm.Get_size()

# Initialize Minio client
minio_client = minio.Minio(
    '148.187.38.90:9000',
    access_key='myuserserviceaccount',
    secret_key='myuserserviceaccountpassword',
    secure=False
)

# List of object sizes
object_sizes = ['1B', '1KB', '1MB', '10MB', '100MB', '1GB']

# Experiment duration (in seconds)
experiment_end = 60  # Change this to the desired duration

for kind in ["minio", "pfs"]:
    for size in object_sizes:
        count = 0
        latency = 0

        # Measure latency
        comm.barrier()
        start_time = time.time()
        if kind == "minio":
            data = get_minio_object(size)
        else:
            data = get_pfs_file(size)
        if data:
            latency = time.time() - start_time

        # Measure throughput
        comm.barrier()
        start_time = time.time()
        while (time.time() - start_time) < experiment_end:
            if kind == "minio":
                data = get_minio_object(size)
            else:
                data = get_pfs_file(size)
            if data:
                count += 1
        total_time = time.time() - start_time

        # Print the current throughput

        # Print the total count across all processes
        total_count = comm.allreduce(count, op=MPI.SUM)
        total_time = comm.allreduce(total_time, op=MPI.MAX)
        print(f"{kind},{rank},{world_size},{size},{latency},{count * size_to_bytes(size) / total_time},{total_count * size_to_bytes(size) / total_time}", flush=True)
