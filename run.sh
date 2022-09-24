#!/bin/bash

read -p "Please Your Expose Port:" PORT
rm .env
cp env.example .env
sed -i "s/6547/$PORT/g" .env
docker-compose up -d
echo "Your application is ready to use:\n\ndownload:\tHOST:$PORT/FILE\n\nmonitoring:\tHOST:9113\n\nminio:\tHOST:$PORT/minio\n\tminio acccess key:\tPFTTDKXLCSZLGEYE\n\tminio secret key:\t7jC7YD22DaS8L3AQKW7yCDPl0UvXlXXj"
