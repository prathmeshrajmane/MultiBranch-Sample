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
		   sh 'docker run -d -it -p 1234:80 simple-nginx1'
                   sh 'docker ps '
		   sh 'docker rm -f simple-nginx1'
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
