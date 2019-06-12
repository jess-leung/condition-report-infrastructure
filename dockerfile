FROM marcelocorreia/terraform
WORKDIR /infra
COPY . /infra
ENTRYPOINT ["./provision-infrastructure.sh"]