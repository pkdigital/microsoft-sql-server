# Railway does not support deploying images directly from Microsoft's Container Registery at this time.
ARG TAG_NAME=2019-latest

FROM mcr.microsoft.com/mssql/server:$TAG_NAME

USER root
# No ulimit, no taskset (since SQL ignores it anyway)
CMD ["/opt/mssql/bin/sqlservr"]


