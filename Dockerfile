FROM python:alpine
LABEL maintainer="visaev@nil.com"

WORKDIR /usr/app

COPY requires.txt ./
RUN pip install -r requires.txt

EXPOSE 5000/tcp

COPY ./app ./

ENTRYPOINT ["python"]
CMD ["start.py"]