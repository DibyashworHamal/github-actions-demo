# GitHub Actions Overview

- **With Jenkins**: You have to provision an EC2 instance, install Java, install Jenkins, manage plugins, set up worker nodes, and keep the server running 24/7.

- **With GitHub Actions**: You do nothing. The CI/CD engine is built directly into GitHub. GitHub gives you free, fresh servers (called Runners) on demand every time you push code.

## 📚 The 5 Magic Words of GitHub Actions
To understand GitHub Actions, you just need to know these 5 terms:

1. **Workflow (The Pipeline)**: This is the equivalent of your Jenkinsfile. It is an automated process written in a YAML file.
2. **Event (The Trigger)**: What causes the workflow to start? Usually, it’s when someone pushes code to the main branch, or creates a Pull Request.
3. **Runner (The Server)**: This is the machine that runs your code. Instead of setting up a server, you just type ubuntu-latest, and GitHub instantly spins up a fresh Ubuntu Linux machine for you.
4. **Job**: A Workflow is made up of Jobs. For example, you might have one Job called build-java-app and another Job called build-docker-image. By default, Jobs run in parallel (at the same time).
5. **Step**: Inside a Job, you have Steps. These are the actual commands, like mvn clean install or docker build.

## Why is this so powerful for you?
In Jenkins, if you wanted to run docker build, you had to manually install Docker on your Jenkins worker node.
In GitHub Actions, the ubuntu-latest runner comes with Docker, Java, Maven, Python, and Node.js already installed.