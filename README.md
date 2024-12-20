# ODC DevOps Final Project

This project demonstrates how to set up a CI/CD pipeline using GitHub, Jenkins, Docker, and Ansible. It automates the process of deploying an application from source code to a Dockerized environment.

---

## Prerequisites

- A private GitHub repository for the source code
- Docker Hub account
- Vagrant installed on the main host(for virtual machine setup)
- Ubuntu Virtual Machine with a minimum 6GB memory
- SSH key configured for GitHub access
- Jenkins installed and configured with:
  - Ansible Plugin
  - Blue Ocean
- Ansible installed 

---

## Features

- CI/CD pipeline using Jenkins
- Docker containerization for `The Weather App` application deployment
- Ansible playbook for automation
- GitHub integration with Jenkins for automated builds
- Docker Hub integration for storing and sharing images

---

## Project Workflow

1. **Setup**
   - Create a private repository and push the code.
   - Generate and add an SSH key for secure GitHub access.
   - Write a Dockerfile for the application.
   - Push the Docker image to Docker Hub.

2. **Automation**
   - Configure Jenkins with GitHub and Docker Hub plugins.
   - Create a Jenkins pipeline to automate the following tasks:
     - Clone or fetch updates from the repository.
     - Build a Docker image and push it to Docker Hub.

3. **Deployment**
   - Use Vagrant to set up virtual machines.
   - Share SSH keys between machines.
   - Write an Ansible playbook to deploy the application.

---

## Steps to Run the Project

1. Clone this repository:
   ```bash
   git clone git@github.com:<your-repo>.git
   ```

2. Set up the SSH key:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ssh-add ~/.ssh/id_rsa
   ```

3. Configure Docker and create a Docker Hub account.

4. Push the Docker image:
   ```bash
   docker build -t <your-image-name> .
   docker push <your-dockerhub-username>/<your-image-name>
   ```

5. Configure Jenkins:
   - Add GitHub credentials.
   - Create a Jenkins pipeline.

6. Deploy using Ansible:
   - Run the playbook:
     ```bash
     ansible-playbook -i inventory playbook.yml
     ```

---



## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
