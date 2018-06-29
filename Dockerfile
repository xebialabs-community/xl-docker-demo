ARG jenkins_tag
FROM jenkins/jenkins:$jenkins_tag
RUN /usr/local/bin/install-plugins.sh scm-api git-client git gradle deployit-plugin:7.5.0 xlrelease-plugin:7.5.1 workflow-aggregator:2.5 dashboard-view:2.9.11
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
