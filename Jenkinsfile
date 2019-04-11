#!/usr/bin/env groovy

node {
    docker.image('3musketeers').inside {
        stage('Test') {
            sh 'cim --version'
        }
        stage('Deploy') {
            sh 'docker ps'
        }
    }
}

/*
node {
    stage('Checkout') {
        checkout scm

        sh "git rev-parse HEAD | tail -c 8 > var_short_commit-id"
    }

    stage('Test') {
        sh "cim --version"
    }

}
*/