--- FILE

CREATE SEQUENCE "file_id_seq" START 1000000;
CREATE TABLE file (
    id              integer             NOT NULL DEFAULT nextval('file_id_seq'),
    type_id         integer             NOT NULL,
    state_id        integer             NOT NULL,
    client_id       integer             NOT NULL,
    label           text                NULL,
    descr           text                NULL,
    create_time     timestamp           NOT NULL DEFAULT now(),
    update_time     timestamp           NULL
);
SELECT * INTO del_file FROM file LIMIT 0;
