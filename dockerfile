FROM python:3-alpine

RUN mkdir /plex_rcs /nas && cd /plex_rcs && wget https://raw.githubusercontent.com/mattmac24/plex_rcs/master/plex_rcs.py && wget https://raw.githubusercontent.com/mattmac24/plex_rcs/master/requirements.txt && wget https://raw.githubusercontent.com/mattmac24/plex_rcs/master/entrypoint.sh

RUN chmod 755 /plex_rcs/entrypoint.sh && pip install -r /plex_rcs/requirements.txt 

CMD [ "python /plex_rcs/plex_rcs.py" ]
