ARG jenkins_tag
ARG jenkins_password
ARG xld_password
ARG xlr_password
ARG gogs_password
ARG artifactory_password
FROM jenkins/jenkins:${jenkins_tag}
COPY plugins.txt /usr/share/jenkins/additional-plugins.txt
COPY ./jenkins.yaml /var/jenkins_home/casc_configs/jenkins.yaml
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs/jenkins.yaml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN install-plugins.sh < /usr/share/jenkins/additional-plugins.txt

