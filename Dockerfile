FROM RRR8RR/RRR8RR:slim-buster

#clonning repo 
RUN git clone https://github.com/RRR8RR/RRR8RR.git /root/JoKeRUB
#working directory 
WORKDIR /root/SedUb

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/SedUb/bin:$PATH"

CMD ["python3","-m","SedUb"]
