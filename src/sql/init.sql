
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
SELECT set_ref( 2, 'type,mimetype,application/ecmascript',                                                      '[.es] ECMAScript (IANA Specification) (RFC 4329 Section 8.2)');
SELECT set_ref( 2, 'type,mimetype,application/epub+zip',                                                        '[.epub] Electronic publication (EPUB)');
SELECT set_ref( 2, 'type,mimetype,application/java-archive',                                                    '[.jar] Java Archive (JAR)');
SELECT set_ref( 2, 'type,mimetype,application/javascript',                                                      '[.js] JavaScript (IANA Specification) (RFC 4329 Section 8.2)');
SELECT set_ref( 2, 'type,mimetype,application/json',                                                            '[.json] JSON format');
SELECT set_ref( 2, 'type,mimetype,application/msword',                                                          '[.doc] Microsoft Word');
SELECT set_ref( 2, 'type,mimetype,application/octet-stream',                                                    '[.arc] Archive document (multiple files embedded)');
SELECT set_ref( 2, 'type,mimetype,application/octet-stream',                                                    '[.bin] Any kind of binary data');
SELECT set_ref( 2, 'type,mimetype,application/ogg',                                                             '[.ogx] OGG');
SELECT set_ref( 2, 'type,mimetype,application/pdf',                                                             '[.pdf] Adobe Portable Document Format (PDF)');
SELECT set_ref( 2, 'type,mimetype,application/rtf',                                                             '[.rtf] Rich Text Format (RTF)');
SELECT set_ref( 2, 'type,mimetype,application/typescript',                                                      '[.ts] Typescript file');
SELECT set_ref( 2, 'type,mimetype,application/vnd.amazon.ebook',                                                '[.azw] Amazon Kindle eBook format');
SELECT set_ref( 2, 'type,mimetype,application/vnd.apple.installer+xml',                                         '[.mpkg] Apple Installer Package');
SELECT set_ref( 2, 'type,mimetype,application/vnd.mozilla.xul+xml',                                             '[.xul] XUL');
SELECT set_ref( 2, 'type,mimetype,application/vnd.ms-excel',                                                    '[.xls] Microsoft Excel');
SELECT set_ref( 2, 'type,mimetype,application/vnd.ms-fontobject',                                               '[.eot] MS Embedded OpenType fonts');
SELECT set_ref( 2, 'type,mimetype,application/vnd.ms-powerpoint',                                               '[.ppt] Microsoft PowerPoint');
SELECT set_ref( 2, 'type,mimetype,application/vnd.oasis.opendocument.presentation',                             '[.odp] OpenDocument presentation document');
SELECT set_ref( 2, 'type,mimetype,application/vnd.oasis.opendocument.spreadsheet',                              '[.ods] OpenDocument spreadsheet document');
SELECT set_ref( 2, 'type,mimetype,application/vnd.oasis.opendocument.text',                                     '[.odt] OpenDocument text document');
SELECT set_ref( 2, 'type,mimetype,application/vnd.openxmlformats-officedocument.presentationml.presentation',   '[.pptx] Microsoft PowerPoint (OpenXML)');
SELECT set_ref( 2, 'type,mimetype,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',           '[.xlsx] Microsoft Excel (OpenXML)');
SELECT set_ref( 2, 'type,mimetype,application/vnd.openxmlformats-officedocument.wordprocessingml.document',     '[.docx] Microsoft Word (OpenXML)');
SELECT set_ref( 2, 'type,mimetype,application/vnd.visio',                                                       '[.vsd] Microsoft Visio');
SELECT set_ref( 2, 'type,mimetype,application/x-7z-compressed',                                                 '[.7z] 7-zip archive');
SELECT set_ref( 2, 'type,mimetype,application/x-abiword',                                                       '[.abw] AbiWord document');
SELECT set_ref( 2, 'type,mimetype,application/x-bzip2',                                                         '[.bz2] BZip2 archive');
SELECT set_ref( 2, 'type,mimetype,application/x-bzip',                                                          '[.bz] BZip archive');
SELECT set_ref( 2, 'type,mimetype,application/x-csh',                                                           '[.csh] C-Shell script');
SELECT set_ref( 2, 'type,mimetype,application/xhtml+xml',                                                       '[.xhtml] XHTML');
SELECT set_ref( 2, 'type,mimetype,application/xml',                                                             '[.xml] XML');
SELECT set_ref( 2, 'type,mimetype,application/x-rar-compressed',                                                '[.rar] RAR archive');
SELECT set_ref( 2, 'type,mimetype,application/x-shockwave-flash',                                               '[.swf] Small web format (SWF) or Adobe Flash document');
SELECT set_ref( 2, 'type,mimetype,application/x-sh',                                                            '[.sh] Bourne shell script');
SELECT set_ref( 2, 'type,mimetype,application/x-tar',                                                           '[.tar] Tape Archive (TAR)');
SELECT set_ref( 2, 'type,mimetype,application/zip',                                                             '[.zip] ZIP archive');
SELECT set_ref( 2, 'type,mimetype,audio/3gpp',                                                                  '[.3gp] 3GPP audio container');
SELECT set_ref( 2, 'type,mimetype,audio/aac',                                                                   '[.aac] AAC audio file');
SELECT set_ref( 2, 'type,mimetype,audio/midi',                                                                  '[.mid] Musical Instrument Digital Interface (MIDI)');
SELECT set_ref( 2, 'type,mimetype,audio/ogg',                                                                   '[.oga] OGG audio');
SELECT set_ref( 2, 'type,mimetype,audio/webm',                                                                  '[.weba] WEBM audio');
SELECT set_ref( 2, 'type,mimetype,audio/x-wav',                                                                 '[.wav] Waveform Audio Format');
SELECT set_ref( 2, 'type,mimetype,font/otf',                                                                    '[.otf] OpenType font');
SELECT set_ref( 2, 'type,mimetype,font/ttf',                                                                    '[.ttf] TrueType Font');
SELECT set_ref( 2, 'type,mimetype,font/woff2',                                                                  '[.woff2] Web Open Font Format (WOFF)');
SELECT set_ref( 2, 'type,mimetype,font/woff',                                                                   '[.woff] Web Open Font Format (WOFF)');
SELECT set_ref( 2, 'type,mimetype,image/gif',                                                                   '[.gif] Graphics Interchange Format (GIF)');
SELECT set_ref( 2, 'type,mimetype,image/jpeg',                                                                  '[.jpg] JPEG images');
SELECT set_ref( 2, 'type,mimetype,image/png',                                                                   '[.png] Portable Network Graphics');
SELECT set_ref( 2, 'type,mimetype,image/svg+xml',                                                               '[.svg] Scalable Vector Graphics (SVG)');
SELECT set_ref( 2, 'type,mimetype,image/tiff',                                                                  '[.tiff] Tagged Image File Format (TIFF)');
SELECT set_ref( 2, 'type,mimetype,image/webp',                                                                  '[.webp] WEBP image');
SELECT set_ref( 2, 'type,mimetype,image/x-icon',                                                                '[.ico] Icon format');
SELECT set_ref( 2, 'type,mimetype,text/calendar',                                                               '[.ics] iCalendar format');
SELECT set_ref( 2, 'type,mimetype,text/css',                                                                    '[.css] Cascading Style Sheets (CSS)');
SELECT set_ref( 2, 'type,mimetype,text/csv',                                                                    '[.csv] Comma-separated values (CSV)');
SELECT set_ref( 2, 'type,mimetype,text/html',                                                                   '[.html] HyperText Markup Language (HTML)');
SELECT set_ref( 2, 'type,mimetype,video/3gpp2',                                                                 '[.3g2] 3GPP2 audio container');
SELECT set_ref( 2, 'type,mimetype,video/3gpp2',                                                                 '[.3g2] 3GPP2 video container');
SELECT set_ref( 2, 'type,mimetype,video/3gpp',                                                                  '[.3gp] 3GPP video container');
SELECT set_ref( 2, 'type,mimetype,video/mpeg',                                                                  '[.mpeg] MPEG Video');
SELECT set_ref( 2, 'type,mimetype,video/ogg',                                                                   '[.ogv] OGG video');
SELECT set_ref( 2, 'type,mimetype,video/webm',                                                                  '[.webm] WEBM video');
SELECT set_ref( 2, 'type,mimetype,video/x-msvideo',                                                             '[.avi] AVI: Audio Video Interleave');
