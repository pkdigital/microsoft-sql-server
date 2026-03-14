FROM mcr.microsoft.com/mssql/server:2019-latest

# Hardcoding the "Small Mode" variables to prevent Stack Overflow
ENV MSSQL_MEMORY_LIMIT_MB=2000
ENV MSSQL_MAX_WORKER_THREADS=128
ENV PAL_MAX_SESSIONS=128
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer

