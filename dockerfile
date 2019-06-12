FROM marcelocorreia/terraform
WORKDIR /infra
COPY . /infra
RUN ["./create-aws-credentials-file.sh"]
ENTRYPOINT ["./provision-infrastructure.sh"]