pipeline {
  agent any
    stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init -input=false"
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "terraform plan"
      }
    }
    stage('Terraform Dev') {
      steps {
        input 'Apply Plan'
        sh "terraform apply -var-file='dev.tfvars' -auto-approve"
      }
    }
  }
}
