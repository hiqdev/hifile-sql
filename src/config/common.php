<?php

return [
    'controllerMap' => [                                                                                                                                                                               
        'migrate' => [ 
            'class' => \yii\console\controllers\MigrateController::class,
            'migrationNamespaces' => [
                'hiqdev\reodb\yii\migrations',
                'transmedia\signage\sql\migrations',
            ],
            'migrationPath' => null,
        ],
    ],
];
