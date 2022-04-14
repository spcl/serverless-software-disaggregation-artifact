#!/bin/bash
/rodinia/gaussian -f /rodinia/matrix1024.txt | tail -n2 | head -n1 | grep -o '[0-9.]*'
