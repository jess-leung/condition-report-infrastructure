FROM hashicorp/terraform:light
WORKDIR /infra
COPY . /infra
RUN ["ls"]
RUN ["terraform", "init"]
RUN ["terraform", "plan"]
RUN ["terraform", "apply"]
