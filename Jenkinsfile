pipeline {
    agent any

    environment { 
        NAME = 'vue-blog-app'
        PORT = 80
        IMAGE_NAME = 'vue-blog-images'
    }
    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('SonarImage') { 
            steps {
                sh 'docker ps -a | grep -q $NAME | docker stop {}' 
                sh 'docker images | grep -q $NAME | docker rmi {}'
                echo '*****************build images...******************'
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'docker run -d -p $PORT:80 --restart=always --name $NAME $IMAGE_NAME' 
            }
        }
    }
}