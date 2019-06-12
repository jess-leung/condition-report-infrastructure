FROM marcelocorreia/terraform
WORKDIR /infra
COPY . /infra
RUN ["ls"]
RUN ["./create-aws-credentials-file.sh"]
ENTRYPOINT ["./provision-infrastructure.sh"]