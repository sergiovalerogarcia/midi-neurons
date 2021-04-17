FROM python:3.9.4

RUN apt-get update -y && \
  apt-get install --no-install-recommends -y -q \
## Packages
  git bash-completion && \
## Clean
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  && \
  rm /etc/apt/apt.conf.d/docker-clean

RUN pip install -U pip

# midicsv
RUN pip install py-midicsv==1.14.1

# netebooks
RUN pip install --upgrade pip && \
    pip install jupyterlab && \
    pip install notebook && \
    pip install pandas && \
    pip install SQLAlchemy && \
    pip install matplotlib

RUN pip install jupyter_contrib_nbextensions && \
    pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master && \
    pip install jupyter_nbextensions_configurator && \
    jupyter contrib nbextension install

RUN useradd -ms /bin/bash neuron

USER neuron

WORKDIR /home/neuron/app

ENTRYPOINT ["/bin/bash"]