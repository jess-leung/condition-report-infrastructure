FROM marcelocorreia/terraform
WORKDIR /infra
COPY . /infra
RUN ["./create-aws-credentials-file.sh"]
RUN ["ls"]
RUN ["ls", "~/.aws"]
ENTRYPOINT ["./provision-infrastructure.sh"]