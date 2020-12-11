1. get an IBMCLOUD API Key and fill it in
2. execute this command:
docker run -i -v $PWD:/app -e IBMCLOUD_API_KEY="" provision-infrastructure "terraform init -input=false && terraform plan -input=false -out=tfplan && terraform apply -input=false tfplan"

3. it will run all terraform scripts provided here