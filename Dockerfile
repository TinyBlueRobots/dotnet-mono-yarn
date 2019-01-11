FROM microsoft/dotnet

RUN apt-get update 
RUN apt-get install -y apt-transport-https
RUN apt-key adv --no-tty --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt update
RUN apt install -y mono-complete
RUN apt-get update 
RUN apt-get install -y nodejs yarn zip
