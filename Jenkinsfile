pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your Git repository
                git 'https://github.com/your-repo/your-terraform-code.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Create a Terraform execution plan
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Apply the Terraform plan
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform applied successfully!'
        }
        failure {
            echo 'Terraform apply failed!'
        }
    }
}