FROM jenkins:2.46.3-alpine
RUN /usr/local/bin/install-plugins.sh scm-api git-client git gradle deployit-plugin:6.1.1 xlrelease-plugin:6.1.2
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false