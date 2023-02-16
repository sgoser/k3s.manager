# GitHub Action with multijobs

## Application

Simple Nginx Web-server with changeable index.html created as configmap in deployment manifest.

## Steps of GitHub workflow (multijob)

### Job 1. Docker

Make image from files in repo and push it to DockerHub registry

### Job 2. SSH and Cluster

Turn up SSH tunnel using sshuttle.

Deployig app on cluster using docker image from previous step (namespase must exist)

Check pods statuses on cluster

### Job 3. Slack notification

Send message and file with pods statuses (multiline rich json formatted - [Slack Block Kit](https://api.slack.com/block-kit/building))

### Job 4. Send file to Slack

Send Deployments, ReplicaSet, Pods statuses as file to Slack
