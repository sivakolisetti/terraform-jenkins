pipeline {
  agent any
    stages {
      stage('Terraform Init') {
        steps {
          sh "terraform init"
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
    stage('Terraform Test') {
      steps {
        input 'Apply Plan'
        sh "terraform apply -var-file='test.tfvars' -auto-approve"
      }
    }
    stage('Terraform Prod') {
      steps {
        input 'Apply Plan'
        sh "terraform apply -var-file='prod.tfvars' -auto-approve"
      }
    }
  }
}
