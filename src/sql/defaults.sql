
-- STATEs
ALTER TABLE ONLY file               ALTER state_id      SET DEFAULT state_id('file,new');

-- TYPEs
ALTER TABLE ONLY file               ALTER type_id       SET DEFAULT type_id('file,normal');

