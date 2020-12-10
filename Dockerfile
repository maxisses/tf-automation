FROM hashicorp/terraform:0.13.4

RUN apk update
RUN apk add ca-certificates wget unzip curl jq
RUN update-ca-certificates

# IBM Cloud CLI
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install container-service

WORKDIR /app
COPY . .

ENTRYPOINT [ "/bin/sh", "-c" ]

#  docker run -i -v $PWD:/app \
#    -e IBMCLOUD_API_KEY="" \
#    bamf-vms \
#    "terraform init -input=false && terraform plan -input=false -out=tfplan && terraform apply -input=false tfplan"

