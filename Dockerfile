FROM fedora:latest
RUN dnf -y install curl tar
RUN curl -L -o install.tar.gz https://download.schneider-electric.com/files?p_Doc_Ref=SPD-PCSS_LNX_EN&p_enDocType=Software+-+Release&p_File_Name=pcssagent-1.2.0-301-EN.x86_64.tar.gz
RUN tar -xzvf install.tar.gz
RUN dnf -y install *.rpm
