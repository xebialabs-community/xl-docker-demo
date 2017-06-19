FROM jenkins:2.46.3-alpine
RUN /usr/local/bin/install-plugins.sh scm-api git-client git gradle deployit-plugin:6.1.1 xlrelease-plugin:6.1.2 workflow-aggregator:2.4 dashboard-view:2.9.10
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false