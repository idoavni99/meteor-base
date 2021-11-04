FROM debian:buster-slim

RUN apt-get update && apt-get install -y g++ build-essential git curl python-minimal

RUN curl https://install.meteor.com/?release=2.2 | sh

CMD ["echo $(meteor --version)"]