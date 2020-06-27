FROM python:3.6-slim

WORKDIR /app

COPY . /app

RUN echo 'nameserver 8.8.8.8'>/etc/resolv.conf

RUN export http_proxy=http://web-proxy.in.softwaregrp.net:8080/

RUN export https_proxy=http://web-proxy.in.softwaregrp.net:8080/

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
