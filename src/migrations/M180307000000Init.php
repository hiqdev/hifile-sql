<?php

namespace transmedia\signage\file\sql\migrations;

use hiqdev\reodb\yii\FileBasedMigration;

/**
 * Class M180307000000Init
 */
class M180307000000Init extends FileBasedMigration
{
    /**
     * {@inheritdoc}
     */
    public function getFilesDir()
    {
        return dirname(__DIR__) . '/sql';
    }

    protected $importFiles = [
        "create.sql",
        "alter.sql",
        "functions.sql",
        "triggers.sql",
        "views.sql",
        "init.sql",
    ];
}
