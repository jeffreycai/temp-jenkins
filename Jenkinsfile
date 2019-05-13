#!/usr/bin/env groovy

node {

    APP_TYPE = "temp-jenkins"

    stage('Checkout') {
        checkout scm

        // Get commit ID
        sh "git rev-parse HEAD | tail -c 8 > var_short_commit-id"

        // Make version
        if ("${BRANCH_NAME}" == "master") {
            sh "echo `date +%y.%m%d`.${BUILD_NUMBER} > .version"
        } else {
            sh "echo `date +%y.%m%d`.${BUILD_NUMBER}-develop > .version"
        }
        sh "cp .version var_version"
        def APP_VERSION = readFile('var_version').trim()

        // Stash vars
        stash includes: "var_*", name: "var-stash"
    }

}


/*
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
*/

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