pipeline {
    agent any
    tools{
        maven 'maven'
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: '6ed82982-b217-43b4-9885-0837e69a259b', url: 'https://github.com/RahulTiple31/first-terraform-project.git'
            }
        }

        stage('Build Maven'){
            steps{
                sh 'mvn clean install'
            }
        }

        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t rahultipledockers/springboot-app .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u rahultipledocker -p ${dockerhubpwd}'
                   }
                   sh 'docker push rahultipledocker/springboot-app'
                }
            }
        }

        stage("Create an EKS Cluster") {
            steps {s
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name springboot-eks"
                        sh "kubectl apply -f springboot-app.yaml"
                    }
                }
            }
        }
    }
}
