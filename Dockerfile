FROM ubuntu:22.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libtext-csv-perl
    
# install modules that are needed
 
WORKDIR /opt
COPY itunes-to-csv.pl /opt/itunes-to-csv.pl
 
ENTRYPOINT ["perl", "itunes-to-csv.pl"]
