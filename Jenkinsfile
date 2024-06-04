pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "omarsamy/ci-cd-pipeline:${env.BUILD_NUMBER}"
        GIT_REPO = "https://github.com/omarsamyi/CI-CD-Pipeline.git"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: env.GIT_REPO
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        docker.image(env.DOCKER_IMAGE).push("${env.BUILD_NUMBER}")
                        docker.image(env.DOCKER_IMAGE).push("latest")
                    }
                }
            }
        }
    }
}
