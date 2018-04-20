<?php
/**
 * DataBase for HiFile file server
 *
 * @link      https://github.com/hiqdev/hifile-sql
 * @package   hifile-sql
 * @license   BSD-3-Clause
 * @copyright Copyright (c) 2018, HiQDev (http://hiqdev.com/)
 */

return [
    'controllerMap' => [
        'migrate' => [
            'class' => \yii\console\controllers\MigrateController::class,
            'migrationNamespaces' => [
                'hiqdev\hifile\sql\migrations',
            ],
            'migrationPath' => null,
        ],
    ],
];
