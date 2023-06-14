pipeline {
    agent {
        label 'jdk11'
    }
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('vcs') {
            steps {
                git branch: 'main', url: 'https://github.com/GitPracticeRepositorys/spring-petclinic.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('docker image build') {
            agent {
                label 'docker-1'
            }
            steps {
                script {
                    def imageName = "shivakrishna99/spring-petclinic"
                    def dockerImage = docker.build(imageName, "--pull .")
                    dockerImage.push()
                }
            }
        }
        stage('deploy to tomcat') {
            agent {
                label 'tomcat'
            }
            steps {
                sh 'cp target/spring-petclinic.war /path/to/tomcat/webapps/'
            }
        }
    }
}
