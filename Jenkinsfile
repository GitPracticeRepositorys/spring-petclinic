pipeline {
    agent any
}
stages {
    stage('vcs') {
        steps {
            git branch: main , url: 'https://github.com/GitPracticeRepositorys/spring-petclinic.git'
        }
    }
}   stage('build') {
        steps {
            sh '/usr/local/apache-maven-3.8.4/bin/mvn clean package'
    }
}   stage('docker image build') {
            steps {
                sh 'docker image build -t shivakrishna99/spring-pet-clinic:DEV .'
            }
        }
        stage('push image to registry') {
            steps {
                sh 'docker image push shivakrishna99/spring-pet-clinic:DEV'
            }
        }
} 
