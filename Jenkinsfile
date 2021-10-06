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
        echo 'Apply Plan for Dev'
        sh "terraform apply -var-file='dev.tfvars' -auto-approve"
      }
    }
    stage('Terraform Test') {
      steps {
        echo 'Apply Plan for Test'
        sh "terraform apply -var-file='test.tfvars' -auto-approve"
      }
    }
    stage('Terraform Prod') {
      steps {
        echo 'Apply Plan for Prod'
        sh "terraform apply -var-file='prod.tfvars' -auto-approve"
      }
    }
  }
}
