#!/bin/bash
PORT=8080
#Check if port is in use
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null ;then
	echo "Server is already running on port $PORT"
else
	echo "Starting server on port $PORT..."
	python3 -m http.server $PORT &
	echo "Server started!"
fi
