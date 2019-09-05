def imageBuilt
pipeline {
	environment {
	    registry = "https://registry.hub.docker.com"
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
                script {
                    imageBuilt = docker.build("praveenellaiyan/jenkins-springboot-app:myapp")
                }
            }
        }
		stage('publish') {
            steps {				
                script {
                    docker.withRegistry(registry, registryCredentials) {
      					imageBuilt.push()
    				}
                }
            }
        }
    }
}
