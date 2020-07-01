FROM continuumio/anaconda3:latest
WORKDIR /opt/project
#WORKDIR is a must for running properly
#Dont setup any stupid path except this
ADD . .
#RUN apt-get --no-cache gcc musl-dev linux-header
#COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

#Copy own folder to the relative folder
#COPY . .
CMD hostname -a
CMD ["python", "main.py"]