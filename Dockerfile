From alpine:3.15
ADD ./requirements.txt /
RUN apk add --update --no-cache python3 && apk add py-pip && pip install -r requirements.txt
ADD ./app /app
CMD uvicorn app.main:app --host 0.0.0.0 --port 8080
