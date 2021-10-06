pipeline {
    agent any
    stage {
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
            echo 'Apply Plan for Dev'
            sh "terraform apply -var="bucketname=multideploydevs3" -auto-approve"
            }
        }
    } 
}
