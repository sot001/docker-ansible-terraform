FROM sot001/python-base:latest

ENV TERRAFORM_VERSION=0.11.11

RUN apk add --update-cache ansible \
  && rm -rf /var/cache/apk/* \
  && wget -O /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  && unzip -d /usr/local/bin/ /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

