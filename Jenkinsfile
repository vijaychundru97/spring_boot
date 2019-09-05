pipeline {
	environment {
	    registry = "https://cloud.docker.com/repository/docker/praveenellaiyan/jenkins-springboot-app"
	    registryCredentials = "docker"
	}
    agent any
    def imageBuilt
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
	stage('package') {
            steps {
                script {
                    imageBuilt = docker.build("praveenellaiyan/jenkins-springboot-app:myapp")
                }
            }
        }
	stage('publish') {
            steps {
                //sh 'docer push praveenellaiyan/jenkins-springboot-app:app:1.0'
                script {
                    docker.withRegistry(registry, registryCredentials) {
      					imageBuilt.push()
    				}
                }
            }
        }
    }
}
