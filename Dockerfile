FROM python:3.8
LABEL maintainer="bc-maia"

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

# command to run on container start
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]