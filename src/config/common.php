<?php

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
