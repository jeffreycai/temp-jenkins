#!/usr/bin/env groovy

node {
    docker.image('3musketeers').inside {
        stage('Checkout') {
            checkout scm
        }
        stage('Build') {
            sh 'docker build . -t "helloworld"'
        }
        stage('Run') {
            sh 'docker run --rm helloworld'
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