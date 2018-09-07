FROM centos/tools
MAINTAINER Florian Schroeder <florian@yinkan.de>

# install COPR
RUN yum -y install yum-plugin-copr
RUN yum copr enable -y ndokos/pbench

RUN yum -y update ca-certificates
RUN yum -y install epel-release
RUN yum -y install perl-JSON-XS
RUN yum -y install pbench-agent

RUN yum -y clean all

# Clone openshift-performance repo
RUN git clone https://github.com/redhat-performance/openshift-performance
