#!/bin/bash

# Deployment Script for Java Application

set -e

APP_NAME="simple-java-app"
JAR_PATH="target/${APP_NAME}-1.0-SNAPSHOT.jar"
REMOTE_SERVER="user@your-server-ip"
REMOTE_PATH="/opt/myapp/"

# Step 1: Build the application
echo "Building the application..."
mvn clean package

# Step 2: Run tests
echo "Running tests..."
mvn test

# Step 3: Copy JAR to remote server
echo "Deploying to remote server..."
scp ${JAR_PATH} ${REMOTE_SERVER}:${REMOTE_PATH}

# Step 4: SSH into remote server and restart application
ssh ${REMOTE_SERVER} << EOF
    # Navigate to application directory
    cd ${REMOTE_PATH}
    
    # Stop existing Java process if running
    pkill -f ${APP_NAME} || true
    
    # Start new Java application
    nohup java -jar ${APP_NAME}-1.0-SNAPSHOT.jar > app.log 2>&1 &
    
    # Verify application is running
    sleep 5
    ps aux | grep ${APP_NAME}
EOF

echo "Deployment completed successfully!"
