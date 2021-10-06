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
    stage('parallel deploy){
       parallel {
            stage('Terraform Dev') {
              steps {
                echo 'Apply Plan for Dev'
                sh "terraform apply -var="bucketname=multideploydevs3" -auto-approve"
              }
            }
            stage('Terraform Test') {
              steps {
                echo 'Apply Plan for Test'
                sh "terraform apply -var="bucketname=multideploytests3" -auto-approve"
              }
            }
            stage('Terraform Prod') {
              steps {
                echo 'Apply Plan for Prod'
                sh "terraform apply -var="bucketname=multideployprods3" -auto-approve"
              }
            }
        }
     }
  }
}
