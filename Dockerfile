#
#
# docker postgres 
#
FROM postgres:11.2-alpine
LABEL kankuu="akhmadbasir5@gmail.com"
WORKDIR /var/lib/postgresql/data
USER postgres