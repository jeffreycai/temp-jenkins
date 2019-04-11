pipeline {
    agent {
        docker { image '3musketeers' }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker ps -a
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                cim --version
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}