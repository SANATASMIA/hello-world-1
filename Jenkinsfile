pipeline{
    agent any
    environment{
        PATH= "/opt/maven/apache-maven-3.8.6/bin:$PATH"
    }
    stages{
        stage("Git-Checkout"){
            steps{
                git url: "https://github.com/SANATASMIA/hello-world-1.git"
            }
        }
        stage("maven Build"){
            steps{
                sh " mvn clean package "
            }
        }
    }
}
