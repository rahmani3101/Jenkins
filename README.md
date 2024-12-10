# Simple Java Application with Jenkins CI/CD

## Project Overview
This is a simple Java application demonstrating a complete CI/CD pipeline using Jenkins, Maven, and Docker.

## Prerequisites
- Java 11+
- Maven 3.8+
- Docker
- Jenkins
- Git


## Local Development

### Building the Project
```bash
# Clean and compile the project
mvn clean compile

# Run tests
mvn test

# Package the application
mvn package
```


## Jenkins Pipeline Stages
The Jenkins pipeline includes the following stages:
1. **Checkout**: Retrieve source code from repository
2. **Build**: Compile the application
3. **Test**: Run unit tests
4. **Package**: Create executable JAR
5. **Deploy**: Deploy to target environment

## Docker Support
```bash
# Build Docker image
docker build -t simple-java-app .

# Run Docker container
docker run -p 8080:8080 simple-java-app
```

## Deployment
The `deploy.sh` script handles:
- Building the application
- Running tests
- Copying JAR to remote server
- Starting the application

## Troubleshooting
- Ensure all prerequisites are installed
- Check Jenkins logs for build issues
- Verify network and server configurations

## Contributing
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request


## Contact
- Mohammad Asad Rahmani
- Email: asadrahmani3101@gmail.com
