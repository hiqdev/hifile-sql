<?php
/**
 * DataBase for HiFile file server
 *
 * @link      https://github.com/hiqdev/hifile-sql
 * @package   hifile-sql
 * @license   BSD-3-Clause
 * @copyright Copyright (c) 2018, HiQDev (http://hiqdev.com/)
 */
$lines = file('mimetypes.txt');
foreach ($lines as $line) {
    [$ext, $title, $mime] = explode("\t", trim($line));
    printf("SELECT set_ref( 2, %-92s %s);\n", "'type,mimetype,$mime',", "'[$ext] $title'");
}
