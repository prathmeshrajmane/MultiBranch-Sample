pipeline {

    agent {
        node {
            label 'master'
        }
    }
       stages {
	stage("Build"){
            steps {
                   sh 'docker build -t simple-nginx1 .'
                   echo "Build completed"
		   		   sh 'docker rm -f engine'
		   sh 'docker run -d -it -p 1234:80 --name engine simple-nginx1'
                   sh 'docker ps '
                   }
                }
	       
	       stage("deploy"){
	    when {
	         branch 'feature'
		 }
		steps {
		  sh sample.sh
		      }
		 }
       }    
}
