pipeline {
  agent any
  tools {
    terraform 'terraform'  // This should match the name used in Jenkins Global Tool Configuration
  }
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
          archiveArtifacts artifacts: '**/*.tfstate', allowEmptyArchive: true
        }
      }
    }
  }
}
