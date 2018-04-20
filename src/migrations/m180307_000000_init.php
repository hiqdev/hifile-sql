<?php
/**
 * DataBase for HiFile file server
 *
 * @link      https://github.com/hiqdev/hifile-sql
 * @package   hifile-sql
 * @license   BSD-3-Clause
 * @copyright Copyright (c) 2018, HiQDev (http://hiqdev.com/)
 */

namespace hiqdev\hifile\sql\migrations;

use hiqdev\reodb\yii\FileBasedMigration;

/**
 * Class m180307_000000_init.
 */
class m180307_000000_init extends FileBasedMigration
{
    /**
     * {@inheritdoc}
     */
    public function getFilesDir()
    {
        return dirname(__DIR__) . '/sql';
    }

    protected $importFiles = [
        'create.sql',
        'alter.sql',
        'functions.sql',
        'defaults.sql',
        'triggers.sql',
        'views.sql',
        'init.sql',
    ];
}
