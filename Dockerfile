# Railway does not support deploying images directly from Microsoft's Container Registery at this time.
ARG TAG_NAME=2019-latest

FROM mcr.microsoft.com/mssql/server:$TAG_NAME

# We must run as root to adjust limits and use taskset
USER root

# 1. Increase the stack size limit (fixes the Stack Overflow)
# 2. Use taskset to restrict the process to only see CPU 0 and 1
CMD /bin/bash -c "ulimit -s 65536 && taskset -c 0,1 /opt/mssql/bin/sqlservr"