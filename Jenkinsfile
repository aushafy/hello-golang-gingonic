pipeline {

    agent any

    stages{

        stage("build"){
            steps{
               sh "docker build -t harbor.tkgi.vxrail.local/demo/hello-golang:$BUILD_NUMBER ."
               sh "docker login harbor.tkgi.vxrail.local --username $HARBOR_USERNAME --password $HARBOR_PASSWORD"
               sh "docker push harbor.tkgi.vxrail.local/demo/hello-golang:$BUILD_NUMBER"
            }
        }

        stage("test"){
            steps{
                echo "test stage ..."
            }
        }

        stage("deploy"){
            steps{
                sh "kubectl cluster-info"
            }
        }
    }
}
