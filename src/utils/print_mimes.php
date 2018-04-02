<?php

$lines = file('mimetypes.txt');
foreach ($lines as $line) {
    [$ext, $title, $mime] = explode("\t", trim($line));
    printf("SELECT set_ref( 2, %-92s %s);\n", "'type,mimetype,$mime',", "'[$ext] $title'");
}
