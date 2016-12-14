FROM jenkins:2.19.4
RUN /usr/local/bin/install-plugins.sh scm-api git-client git gradle deployit-plugin:5.0.3 xltestview-plugin:1.2.0 xlrelease-plugin:5.0.0
