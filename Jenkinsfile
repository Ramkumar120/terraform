pipeline{
    agent any

    environment{
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }

    stages{
        stage("git checkout"){
            steps{
                git branch:"${env.BRANCH_NAME}", url:"https://github.com/Ramkumar120/terraform.git" 
            }
        }

        stage("terraform init"){
            steps{
                dir("${TF_WORKDIR}") {
                sh "terraform init"
                }

            }
        }

        stage("terraform plan"){
            steps{

                dir ("${TF_WORKDIR}") {
                sh "terraform plan -out=tfplan"
                sh "terraform show -no-color tfplan > tfplan.txt"
                sh "cat tfplan.txt"
            }
            }
        }

        stage("approval"){
            steps{
                input message: "Approve the deployment to production?", ok:"Deploy"

            }
        }

        stage("Terraform apply"){
            steps{

                dir("${TF_WORKDIR}") {
                sh "terraform apply tfplan"
            }
            }
        }
    }
}