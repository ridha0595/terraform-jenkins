pipeline {
  agent any
  tools {
    terraform 'terraform'  // Use the name you provided in Global Tool Configuration
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
          withEnv(["PATH+AZURE=/opt/homebrew/opt/azure-cli/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin"]) {
            sh 'terraform init'
          }
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
