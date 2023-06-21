FROM python:3.11-slim
COPY . /shatlin_pytest
WORKDIR /shatlin_pytest
RUN pip install pytest
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null