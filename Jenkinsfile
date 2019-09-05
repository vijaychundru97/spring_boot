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
                //sh 'docer push praveenellaiyan/jenkins-springboot-app:app:1.0'
                
                //withDockerRegistry([ credentialsId: registryCredentials, url: "" ]) {
				      // following commands will be executed within logged docker registry
				      //sh 'docker push ' + imageBuilt
				//}
				
                script {
                    docker.withRegistry('', registryCredentials) {
      					imageBuilt.push()
    				}
                }

            }
        }
    }
}
