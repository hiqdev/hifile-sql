<?php

namespace transmedia\signage\file\sql\migrations;

use hiqdev\reodb\yii\FileBasedMigration;

/**
 * Class m180307_000000_init
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
