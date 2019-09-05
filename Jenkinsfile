pipeline {
	environment {
	    registry = "https://cloud.docker.com/repository/docker/praveenellaiyan/jenkins-springboot-app"
	    registryCredentials = "docker"
	}
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
	stage('package') {
            steps {
                sh 'docker build -t praveenellaiyan/app .'
            }
        }
	stage('publish') {
            steps {
                sh 'docker push praveenellaiyan/app:latest'
            }
        }
    }
}
