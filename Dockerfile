### TMP IMAGE
FROM postgres:9.6 as tmp

ENV PGDATA /var/lib/postgresql/app
ENV POSTGRES_DB app
ENV POSTGRES_USER app
ENV POSTGRES_PASSWORD app

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
