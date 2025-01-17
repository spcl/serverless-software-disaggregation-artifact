
Download Minio release. We used the version: `RELEASE.2023-09-30T07-02-29Z (go1.21.1 linux/amd64)`

Generating files using `dd if=/dev/urandom of=random_file.xgb bs=1M count=1024`. Verified using: `head -c 100 random_file.xgb`.

Generating the proper keys for minio:
```
./mc admin user svcacct add --access-key "myuserserviceaccount" --secret-key "myuserserviceaccountpassword" myminio admin
```

Starting client (output by server):
```
./mc alias set myminio http://148.187.33.208:9000 admin password
```

Starting server:
```
MINIO_ROOT_USER=admin MINIO_ROOT_PASSWORD=password ./minio server /tmp/data -console-address ":9001"
```

For running the program:
```
srun -A g34 -C mc --nodelist=nid00462 -N1 -n2 python3 benchmark.py
```

Creating bucket:
```
mc mb myminio/bucket
```

Copy files to bucket:
```
mc cp -r /path/to/local/directory myminio/mybucket/
```
