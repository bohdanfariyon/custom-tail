# Dockerfile

FROM python:3.9-slim


WORKDIR /app


COPY setup.py ./
COPY README.md ./
COPY custom_tail/ ./custom_tail/


RUN pip install .


ENTRYPOINT ["ctail"]

CMD ["--help"]