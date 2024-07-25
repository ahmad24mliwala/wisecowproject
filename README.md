# Task 1 : Wisecow Application Deployment on Kubernetes

## Project Overview

This repository contains the source code, Dockerfile, Kubernetes manifests, and CI/CD configuration for the Wisecow application. The goal of this project is to containerize the Wisecow application, deploy it on a Kubernetes cluster, and ensure secure TLS communication.

## Objective

The objective of this project is to:
1. Containerize the Wisecow application using Docker.
2. Deploy the containerized application to a Kubernetes environment.
3. Implement Continuous Integration and Continuous Deployment (CI/CD) using GitHub Actions.
4. Ensure the application supports secure TLS communication.

## Repository Contents

This repository includes:

- **Source Code**: The source code for the Wisecow application.
- **Dockerfile**: Instructions for building a Docker image for the application.
- **Kubernetes Manifests**: YAML files for deploying the application and exposing it as a service on Kubernetes.
- **CI/CD Configuration**: GitHub Actions workflow files for automating the build, push, and deployment processes.
- **TLS Configuration**: Instructions and configurations for enabling TLS communication.

## Requirements

### Dockerization

- **Dockerfile**: Create a Dockerfile that builds a container image for the Wisecow application. This file should specify the base image, install dependencies, copy the application code, and define the entry point.

### Kubernetes Manifests**:

- **Kubernetes Manifests:** Develop Kubernetes manifest files for:
- Deploying the Wisecow application as a Kubernetes Deployment.
- Exposing the application through a Kubernetes Service.
- Configuring TLS for secure communication.

### CI/CD Configuration

- **GitHub Actions Workflow:** Implement a workflow for:
- Building and pushing the Docker image to a container registry upon code changes.
- Automatically deploying the updated Docker image to the Kubernetes environment after a successful build.


### TLS Configuration

- **TLS Configuration:** Ensure the Wisecow application supports secure TLS communication. This may involve setting up certificates and configuring the application and Kubernetes to use them.

## Goal

- The goal of this project is the successful containerization and deployment of the Wisecow application on a Kubernetes environment with an automated CI/CD pipeline and secure TLS communication.

# Task 2 : 

## System Health Monitoring Script:

- Develop a script that monitors the health of a Linux system. It should check CPU usage, memory usage, disk space, and running processes. If any of these metrics exceed predefined thresholds (e.g., CPU usage > 80%), the script should send an alert to the console or a log file. 

## Application Health Checker: 

- Please write a script that can check the uptime of an application and determine if it is functioning correctly or not. The script must accurately assess the application's status by checking HTTP status codes. It should be able to detect if the application is 'up', meaning it is functioning correctly, or 'down', indicating that it is unavailable or not responding.

