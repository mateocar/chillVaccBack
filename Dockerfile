# 
FROM python:3.10
RUN mkdir -p /app
WORKDIR /app
# 
COPY ./requirements.txt /
#
RUN apt-get update && apt-get install -y git
# 
RUN pip install --upgrade -r /requirements.txt && \ 
pip install git+https://github.com/MihaMarkic/tflearn.git@fix/is_sequence_missing
#
COPY ./app /app
#
EXPOSE 8000
# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
