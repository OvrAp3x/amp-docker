FROM cubecoders/amp

#Install dependencies
RUN apt-get update


#Add repository


#Install packages
RUN apt-get update
RUN apt-get install apt install apt-transport-https sudo ca-certificates wget dirmngr gnupg software-properties-common -y
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get update
RUN apt install adoptopenjdk-8-hotspot
#start!

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
STOPSIGNAL SIGINT
ENTRYPOINT ["/entrypoint.sh"]
