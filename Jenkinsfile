#!/usr/bin/env groovy

properties(
  [buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '30', numToKeepStr: '50')), [$class: 'RebuildSettings', autoRebuild: false, rebuildDisabled: false], pipelineTriggers([])]
)

node {
    stage('Checkout') {
        checkout scm

        sh "git rev-parse HEAD | tail -c 8 > var_short_commit-id"
    }

    stage('Test') {
        sh "cim --version"
    }

}