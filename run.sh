#!/bin/bash

read -p "Please Your Expose Port:" PORT
rm .env
cp env.example .env
sed -i "s/6547/$PORT/g" .env
docker-compose up -d
