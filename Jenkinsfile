pipeline {
    agent any
    
    tools
    {
       maven "maven"
    }
     
    stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/ralphizuike/Ansible-cicd.git'
             
          }
        }
         stage('Tools Init') {
            steps {
                script {
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
               def tfHome = tool name: 'Ansible'
                env.PATH = "${tfHome}:${env.PATH}"
                 sh 'ansible --version'
                    
            }
            }
        }
      
         stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
 
        stage('Ansible Deploy') {
             
            steps {
               sh "ansible-playbook etechnginx.yaml -i inventories/dev/hosts --user jenkins "     
            }
        }
    }
}
