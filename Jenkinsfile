pipeline {
    agent any
    
    tools{
        maven "maven"
    }    

    stages {
        stage('Git Clone') {
            steps {
               git branch: 'main', url: 'https://github.com/sanjayk1512/01_products_api.git'
            }
        }
        stage('Maven Build'){
            steps{
             sh 'mvn clean package'
            }
        }
        stage('Docker Image'){
            steps{
             sh 'docker build -t sanjayk062/products_api .'
            }
        }
        stage('Docker Image push'){
            steps
            withCredentials([string(credentialsId: 'docker_pwd', variable: 'docker_pwd')]) {
                   sh 'docker login -u sanjayk062 -p ${docker_pwd}'
                   sh 'docker push sanjayk062/products_api'
            }
            }
        }
        stage('k8s deployment'){
            steps{
             sh 'kubectl apply -f Deployment.yml'
            }
        }        
    }
}
