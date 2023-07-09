pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("Git Checkout") {
            steps {
                git branch: 'main', credentialsId: '6ed82982-b217-43b4-9885-0837e69a259b', url: 'https://github.com/RahulTiple31/first-terraform-project.git'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
