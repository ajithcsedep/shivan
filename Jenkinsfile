node{
    stage('SCM Checkout'){
        git url: 'https://github.com/MithunTechnologiesDevOps/java-web-app-docker.git',branch: 'master'
    }
    stage(" Maven Clean Package"){
      def mavenHome =  tool name: "MAVEN_HOME", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh "${mavenCMD} clean package"
    }
      stage('Build Docker Image'){
        sh 'docker build -t hackcse/dockerajith .'
    }
       stage('Push Docker Image'){
        withCredentials([string(credentialsId: 'Dockerhub', variable: 'Dockerhub')]) {
          sh "docker login -u hackcse -p ${Dockerhub}"
        }
        sh 'docker push hackcse/ajithdocker'
     }
}    
    
     
