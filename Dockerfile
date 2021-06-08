FROM python:3.9-slim

ENV DASH_DEBUG_MODE True
ADD ./indexe.py /index.py
ADD ./requirements-dash.txt /requirements.txt
WORKDIR /
RUN set -ex && \
    pip install -r requirements.txt
EXPOSE 8050
CMD ["python", "index.py"]