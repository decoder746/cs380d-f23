FROM anshul746/kvs:base
# FROM sekwonlee/kvs:base


# MAINTAINER Sekwon Lee <sklee@cs.utexas.edu> version: 0.1

USER root

WORKDIR $KVS_HOME

# CMD bash run_frontend.sh

CMD python3 frontend.py
