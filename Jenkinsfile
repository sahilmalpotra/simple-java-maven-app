pipeline 
{
    agent any   // run on any available agent (node)

    stages {
        stage('build') {
            steps {
                // Pull code from Git repo
                //git branch: 'master', url: 'https://github.com/sahilmalpotra/simple-java-maven-app.git'
                echo 'bbuilding'
            }
        }

        stage('test') {
            steps {
                //sh 'mvn clean package -DskipTests'
                echo 'bbuilding'
            }
        }

        // stage('Docker Build & Push') {
        //     steps {
        //         script {
        //             docker.build("${APP_NAME}:latest")
        //         }
        //     }
        // }

        // stage('Test') {
        //     steps {
        //         sh 'mvn test'
        //     }
        // }

        // stage('Deploy') {
        //     steps {
        //         echo "Deploying ${APP_NAME}..."
        //         // Example only, here you might run kubectl, ansible, helm etc.
        //     }
        // }
    }

    post {
        always {
            echo 'Cleaning up...'
        }
        success {
            echo 'Pipeline completed successfully ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
