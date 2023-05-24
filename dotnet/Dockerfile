FROM jupyter/base-notebook:latest
USER root
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN sudo rm /etc/apt/sources.list.d/microsoft-prod.list
RUN sudo apt-get update -y
RUN apt-get install -y dotnet-sdk-7.0
RUN apt-get install -y git
USER jovyan
RUN dotnet tool install -g Microsoft.dotnet-interactive
ENV PATH="${PATH}:${HOME}/.dotnet/tools"
RUN dotnet interactive jupyter install
RUN pip3 install nbgitpuller