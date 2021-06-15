#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t demolocal .
#docker build --tag=rluzardo/app .
#docker push rluzardo/app

# Step 2: 
docker image ls

# Step 3: 
docker run -p 8000:80 demolocal
