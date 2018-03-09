<?php

return [
    'controllerMap' => [
        'migrate' => [
            'class' => \yii\console\controllers\MigrateController::class,
            'migrationNamespaces' => [
                'transmedia\signage\file\sql\migrations',
            ],
            'migrationPath' => null,
        ],
    ],
];
