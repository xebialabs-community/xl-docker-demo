FROM jenkins:2.7.4
RUN /usr/local/bin/install-plugins.sh scm-api git-client git gradle deployit-plugin xltestview-plugin xlrelease-plugin
