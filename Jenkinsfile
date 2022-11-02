currentBuild.displayName = "online-shopping-#"+currentBuild.number

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
                // sh "mv target/*.war target/myweb.war"
               // sh " sudo mv  /var/lib/jenkins/workspace/git-checkout-pipeline/webapp/target/webapp.war  /opt/tomcat_8/apache-tomcat-8.5.83/webapps/"
            }
            steps{
                sh "mv target/*.war  target/webapps.war"
            }
        }
        stage("Deploy on tomcat"){
            steps{
                sshagent(['tomcat-new']) {
                    sh """
                          scp -o StrictHostKeyChecking=no target/webapps.war ec2-user@172.31.95.33:/opt/tomcat_8/apache-tomcat-8.5.83/webapps/
                          ssh ec2-user@172.31.95.33 tomcatdown
                          ssh ec2-user@172.31.95.33 tomcatup
                    """
                }
            }
        }
    }
}
