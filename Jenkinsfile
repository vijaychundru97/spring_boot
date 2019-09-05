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
                sh 'docker build .'
            }
        }
	stage('publish') {
            steps {
                echo 'publish stage completed'
            }
        }
    }
}
