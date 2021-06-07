#FROM python:3.7  
from python:3.7-slim

# Setting Working directory different from root
WORKDIR /app/ 

# Installing requirements
ADD ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt --no-cache-dir
#RUN pip3 install -r requirements.txt --no-cache-dir

EXPOSE 8050

# Add the config.toml file
ADD .streamlit/config.toml /app/.streamlit/config.toml
ADD /css/ /app/css/
ADD /utils/ /app/utils/
ADD /models/ /app/models/
ADD /images/ /app/images/ 

ADD /index.py  /app/index.py 
 
CMD ["streamlit", "run" ,"/app/index.py"]