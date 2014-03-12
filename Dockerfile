FROM jonmorehouse/ubuntu
MAINTAINER Jon Morehouse <morehousej09@gmail.com>

# install golang dependencies
RUN apt-get -y install subversion bzr

# install godeb / latest go
RUN curl https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz > godeb-amd64.tar.gz
RUN tar -xzvf godeb-amd64.tar.gz
RUN ./godeb install 
RUN rm godeb

# set up gopath
RUN mkdir /go
ENV GOPATH /go

# install godeb 
RUN go get gopkg.in/niemeyer/v0/godeb

# install custom go-env package for loading files
RUN git clone https://github.com/jonmorehouse/go-env
RUN cd /go-env && git checkout tags/v1.0.2
ENV PATH /go-env/bin:$PATH



