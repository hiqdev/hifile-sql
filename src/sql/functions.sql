--- FILE
CREATE OR REPLACE FUNCTION replace_file (a_id uuid, a hstore) RETURNS uuid AS $$
DECLARE
    the_id          uuid    := a_id;
    a_client_id     integer := str2integer(a->'client_id');
    a_provider_id   integer := coalesce(str2integer(a->'provider_id'), type_id('provider', a->'provider'));
    a_mimetype_id   integer := coalesce(str2integer(a->'mimetype_id'), mimetype_id(a->'mimetype'));
    a_state_id      integer := coalesce(str2integer(a->'state_id'), state_id('file', a->'state'));
    a_type_id       integer := coalesce(str2integer(a->'type_id'), type_id('file', a->'type'));
    a_size          integer := str2bigint(a->'size');
    prep            replace_data;
    cur             file%ROWTYPE;
BEGIN
    IF the_id IS NOT NULL THEN
        SELECT INTO cur * FROM file WHERE id=the_id;
    END IF;
    prep := (NULL,NULL,NULL);
    prep := prepare_replace(prep, 'client_id',      a_client_id,    cur.client_id);
    prep := prepare_replace(prep, 'provider_id',    a_provider_id,  cur.provider_id);
    prep := prepare_replace(prep, 'mimetype_id',    a_mimetype_id,  cur.mimetype_id);
    prep := prepare_replace(prep, 'state_id',       a_state_id,     cur.state_id);
    prep := prepare_replace(prep, 'type_id',        a_type_id,      cur.type_id);
    prep := prepare_replace(prep, 'size',           a_size,         cur.size);
    prep := prepare_replace(prep, 'remoteid',       a->'remoteid',  cur.remoteid);
    prep := prepare_replace(prep, 'filename',       a->'filename',  cur.filename);
    prep := prepare_replace(prep, 'label',          a->'label',     cur.label);
    prep := prepare_replace(prep, 'descr',          a->'descr',     cur.descr);
    IF prep.sets IS NULL THEN
        -- DO NOTHING
    ELSIF the_id IS NULL THEN
        EXECUTE 'INSERT INTO file ('||prep.keys||') VALUES ('||prep.vals||') RETURNING id' INTO the_id;
    ELSIF prep.sets!='' THEN
        EXECUTE 'UPDATE file SET '||prep.sets||' WHERE id='||quote_literal(the_id);
    END IF;
    RETURN the_id;
END;
$$ LANGUAGE plpgsql VOLATILE CALLED ON NULL INPUT;
CREATE OR REPLACE FUNCTION add_file (a hstore) RETURNS uuid AS $$
    SELECT replace_file(null, a);
$$ LANGUAGE sql VOLATILE CALLED ON NULL INPUT;
CREATE OR REPLACE FUNCTION set_file (a hstore) RETURNS uuid AS $$
    SELECT replace_file((a->'id')::uuid, a);
$$ LANGUAGE sql VOLATILE CALLED ON NULL INPUT;

--- MIME type
CREATE OR REPLACE FUNCTION get_mimetype_id (a_name text) RETURNS integer AS $$
    SELECT ref_id(a_name, top_ref_id('type', 'mimetype'));
$$ LANGUAGE sql IMMUTABLE STRICT;
CREATE OR REPLACE FUNCTION set_mimetype_id (a_name text) RETURNS integer AS $$
    SELECT set_ref(999, 'type,mimetype,'||a_name, a_name);
$$ LANGUAGE sql VOLATILE STRICT;
CREATE OR REPLACE FUNCTION mimetype_id (a_name text) RETURNS integer AS $$
    SELECT coalesce(get_mimetype_id(a_name), set_mimetype_id(a_name));
$$ LANGUAGE sql VOLATILE STRICT;
