pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'docker build -t ola-unicamp .'
            }
        }

        stage('Run') {
            steps {
                bat 'docker run --rm ola-unicamp'
            }
        }
    }
}