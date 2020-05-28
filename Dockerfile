FROM mcr.microsoft.com/azure-cli 
#USER myuser
RUN printf "\n az login " |  tee -a ~/.bashrc >/dev/null
