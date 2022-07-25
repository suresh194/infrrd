pipeline {
	agent any
	    tools { 
        maven 'maven'  
    }
	stages {
		stage('git checkout') {
			steps {
				git credentialsId: 'suresh194', url: 'https://github.com/suresh194/infrrd.git'
			}
		}
        stage('Build-dockerfile') { 
            steps { 
                script{
                 app = docker.build("suresh/springboot")
                }
            }
        }
    stage('Docker deploy') {
      agent any
      steps {
          sh 'docker run -itd -p 80:8080 suresh/springboot:latest'
        }
      }
    	
				
	}
}
