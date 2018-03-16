--- FILE
CREATE TRIGGER update_time_trigger                  BEFORE  UPDATE  ON file         FOR EACH ROW EXECUTE PROCEDURE update_time_trigger();
