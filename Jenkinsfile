pipeline 
{
    agent any   // run on any available agent (node)

    tools {
        maven 'maven'   // 👈 the name you gave in Jenkins Global Tool Configuration
        //jdk 'JDK-17'          // optional, if you also configured a JDK
    }


    stages {
        stage("build") {
            steps {
                // Pull code from Git repo
                //git branch: 'master', url: 'https://github.com/sahilmalpotra/simple-java-maven-app.git'
                echo 'bbuilding'
            }
        }

        stage("test") {
            steps {
                sh 'mvn clean package -DskipTests'
                echo 'building'
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

        stage("Deploy") {
            steps {
                // echo "Deploying ${APP_NAME}..."
                echo 'deploying'
                // Example only, here you might run kubectl, ansible, helm etc.
            }
        }
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
