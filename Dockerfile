FROM ubuntu:20.04
RUN apt-get update && apt-get -y install build-essential && mkdir -p /python-instagram_test
COPY . /python-instargram_test/
WORKDIR /python-instagram_test/
CMD python3 tests.py
