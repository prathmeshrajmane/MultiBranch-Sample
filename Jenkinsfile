pipeline {

    agent {
        node {
            label 'master'
        }
    }
	 
 
            stage("Build"){
            steps {
                   docker build -t simple-nginx .

                   docker run -d -it -p 8080:80 simple-nginx
                   docker ps -a
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
