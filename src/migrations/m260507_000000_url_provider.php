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

use yii\db\Migration;

/**
 * Adds the generic URL file provider to the reference table.
 */
class m260507_000000_url_provider extends Migration
{
    public function up()
    {
        $this->execute("SELECT set_ref(2, 'type,provider,url', 'URL')");
    }

    public function down()
    {
    }
}
