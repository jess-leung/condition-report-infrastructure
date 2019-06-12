FROM marcelocorreia/terraform
WORKDIR /infra
COPY . /infra
RUN ["./create-aws-credentials-file.sh"]
RUN ["ls"]
ENTRYPOINT ["./provision-infrastructure.sh"]