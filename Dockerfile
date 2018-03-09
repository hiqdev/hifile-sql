### TMP IMAGE
FROM postgres:9.6 as tmp

ARG db_name=signage_file
ARG db_user=signage
ARG db_password=signage

ENV PGDATA /var/lib/postgresql/app
ENV POSTGRES_DB $db_name
ENV POSTGRES_USER $db_user
ENV POSTGRES_PASSWORD $db_password

COPY src /app
RUN /app/bin/initdb.sh

# MAIN IMAGE
FROM postgres:9.6
ENV PGDATA /var/lib/postgresql/app

COPY src /app
RUN /app/bin/00-configure-host.sh

COPY --from=tmp --chown=postgres:postgres ${PGDATA} ${PGDATA}
RUN chmod 700 ${PGDATA}

ENTRYPOINT ["/app/bin/entrypoint.sh"]
CMD ['postgres']
