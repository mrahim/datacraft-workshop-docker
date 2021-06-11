FROM python:3.7-slim

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

WORKDIR /app/
ADD datacraft.py /app/datacraft.py
ADD images/ /app/images
ADD css/ /app/css
ADD models/ /app/models
ADD utils/ /app/utils

EXPOSE 8501

CMD ["streamlit", "run", "/app/datacraft.py"]
