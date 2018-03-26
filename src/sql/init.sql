
--- FILE types
SELECT set_ref( 0,'type,file',                  'File');
SELECT set_ref( 1,'type,file,normal',           'Normal');

--- FILE states
SELECT set_ref( 0,'state,file',                 'File');
SELECT set_ref( 1,'state,file,new',             'New');
SELECT set_ref( 2,'state,file,ok',              'Ok');
SELECT set_ref( 3,'state,file,deleted',         'Deleted');

--- FILE providers
SELECT set_ref( 0,'type,provider',              'Provider');
SELECT set_ref( 1,'type,provider,filestack',    'Filestack');

--- MIME types
SELECT set_ref( 0,'type,mimetype',              'MIME type');
SELECT set_ref( 1,'type,mimetype,image/gif',    'GIF');
SELECT set_ref( 2,'type,mimetype,image/jpeg',   'JPEG');
SELECT set_ref( 3,'type,mimetype,image/png',    'PNG');
SELECT set_ref( 4,'type,mimetype,image/x-icon', 'ICO');
SELECT set_ref(11,'type,mimetype,image/svg+xml','SVG');
SELECT set_ref(21,'type,mimetype,audio/ogg',    'OGA');
SELECT set_ref(31,'type,mimetype,video/mpeg',   'MPEG');
SELECT set_ref(32,'type,mimetype,video/ogg',    'OGV');
