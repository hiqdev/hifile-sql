FROM postgres:9.6

ARG db_name=hifile
ARG db_user=hifile
ARG db_password=hifile

ENV PGDATA /var/lib/postgresql/app
ENV POSTGRES_DB $db_name
ENV POSTGRES_USER $db_user
ENV POSTGRES_PASSWORD $db_password

COPY src /app
RUN /app/bin/00-configure-host.sh

VOLUME ["/var/lib/postgresql/app"]
ENTRYPOINT ["/app/bin/entrypoint.sh"]
CMD ['postgres']
