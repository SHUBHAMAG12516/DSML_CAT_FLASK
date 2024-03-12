FROM python:3.10.0-alpine3.15

# Install build dependencies
RUN apk add --no-cache gcc musl-dev g++

WORKDIR /Users/SHUBHAM AGARWAL/Desktop/DSML_CAT_FLASK/DOCKER

COPY requirements.txt ./

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "flask", "--app", "predictions.py", "run", "--host=0.0.0.0"]