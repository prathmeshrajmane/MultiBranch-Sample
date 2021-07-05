pipeline {

    agent {
        node {
            label 'master'
        }
    }
       stages {
	stage("Build"){
            steps {
                   sh 'docker build -t simple-nginx .'
                   echo "Build completed"
		   sh 'docker run -d -it -p 8080:80 simple-nginx'
                   sh 'docker ps -a'
                   }
                }
       }    
}
