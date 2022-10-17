FROM ubuntu:20.04

RUN apt update && apt upgrade && apt -y install python3

# Uncomment next line to remove sqlite vulnerabilities
RUN apt remove -y libsqlite3-0

WORKDIR /app

COPY app.py /app

CMD ["/app/app.py"]