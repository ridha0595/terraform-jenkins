pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git branch: 'trial', url: 'https://github.com/ridha0595/terraform-jenkins.git'
      }
    }
    stage('Terraform Init') {
      steps {
        script {
          sh 'terraform init'
        }
      }
    }
    stage('Terraform Apply') {
      steps {
        script {
          sh 'terraform apply -auto-approve'
        }
      }
    }
    stage('Publish Artifacts') {
      steps {
        script {
          // Example: Archive the Terraform state file as an artifact
          archiveArtifacts artifacts: '**/*.tfstate', allowEmptyArchive: true
        }
      }
    }
  }
}
