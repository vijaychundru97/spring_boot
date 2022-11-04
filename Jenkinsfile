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
                bat 'docker build -t vijaychundru/jenkins-springboot-app:myapp .'
            }
        }
        // push built docker image to docker hub
		stage('Publish') {
            steps {
		 bat 'docker login -u vijaychundru --password Venkatach@789'   
                 bat 'docker push vijaychundru/jenkins-springboot-app:myapp'
	          }
        }
	    	stage('run') {
            steps {
                 bat 'docker run -it -d -p 8081:8080 vijaychundru/jenkins-springboot-app:myapp'
	          }
        }
    }
}
