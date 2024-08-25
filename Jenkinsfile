pipeline {
  agent any
  tools {
    terraform 'terraform'  // Use the name you provided in Global Tool Configuration
  }
  environment {
    PATH = "/opt/homebrew/opt/azure-cli:${env.PATH}"
  }
  stages {
    
    stage('Verify PATH') {
  steps {
    script {
      sh 'echo $PATH'
    }
  }
 }

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
          archiveArtifacts artifacts: '**/*.tfstate', allowEmptyArchive: true
        }
      }
    }
  }
}
