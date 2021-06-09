#FROM python:3.7  
from python:3.7-slim

# Setting Working directory different from root
WORKDIR / 

# Installing requirements
ADD ./requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt --no-cache-dir
#RUN pip3 install -r requirements.txt --no-cache-dir

EXPOSE 8501

# Add the config.toml file
ADD .streamlit/ /.streamlit
ADD /css/ /css/
ADD /utils/ /utils/
ADD /models/ /models/
ADD /images/ /images/ 

ADD /index.py  /index.py 
 
CMD ["streamlit", "run" ,"/index.py"]