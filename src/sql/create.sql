--- FILE

CREATE TABLE file (
    id              uuid                NOT NULL DEFAULT gen_random_uuid(),
    type_id         integer             NOT NULL,
    state_id        integer             NOT NULL,
    client_id       integer             NOT NULL,
    provider_id     integer             NOT NULL,
    mimetype_id     integer             NULL,
    remoteid        text                NOT NULL,
    filename        text                NULL,
    size            bigint              NULL,
    data            jsonb               NULL,
    md5             text                NULL,
    label           text                NULL,
    descr           text                NULL,
    create_time     timestamp           NOT NULL DEFAULT now(),
    update_time     timestamp           NULL
);
SELECT * INTO del_file FROM file LIMIT 0;
