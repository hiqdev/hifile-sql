--- FILE

CREATE TABLE file (
    id              uuid                NOT NULL DEFAULT gen_random_uuid(),
    type_id         integer             NOT NULL,
    state_id        integer             NOT NULL,
    client_id       integer             NOT NULL,
    remoteid        text                NOT NULL,
    label           text                NULL,
    descr           text                NULL,
    create_time     timestamp           NOT NULL DEFAULT now(),
    update_time     timestamp           NULL
);
SELECT * INTO del_file FROM file LIMIT 0;
