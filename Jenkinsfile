node {

  checkout scm
  def dockerImage

  stage('Build image') {
    dockerImage = docker.build("praveenellaiyan/jenkins-springboot-app:myapp")
  }

  stage('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker') {
      dockerImage.push()
    }
  }   

}
