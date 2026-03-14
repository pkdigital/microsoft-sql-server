FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

# This removes the crash-lock and fixes volume permissions before starting
ENTRYPOINT ["/bin/bash", "-c", "chown -R mssql:root /var/opt/mssql && rm -f /var/opt/mssql/.sqlservr.lock && exec /opt/mssql/bin/sqlservr"]