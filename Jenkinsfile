def artifact
pipeline {
	// configure environmental variables
//	environment {
//	    registry = "https://registry.hub.docker.com"
//	    registryCredentials = "docker"
//	}
	
	// instruct jenkins to allocate executor and workspace for entire pipeline
    agent any
	
    tools{
		maven 'maven'
	}	
    
    stages {
    	// compile and generate single executable jar with all dependencies
		stage('Build') {
            steps {
                bat 'mvn install'
            }
        }
        // build docker image of an application
      stage('Package') {
            steps {
                bat 'docker build -t vijaychundru97/jenkins-springboot-app:myapp .'
            }
        }
        // push built docker image to docker hub
		stage('Publish') {
            steps {				
                 bat 'docker push vijaychundru97/jenkins-springboot-app:myapp'
	          }
            }
        }
    }
}
