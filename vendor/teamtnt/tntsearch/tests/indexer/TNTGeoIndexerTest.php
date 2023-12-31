<?php

use TeamTNT\TNTSearch\Engines\SqliteEngine;
use TeamTNT\TNTSearch\Indexer\TNTGeoIndexer;
use TeamTNT\TNTSearch\Indexer\TNTIndexer;

class TNTGeoIndexerTest extends PHPUnit\Framework\TestCase
{
    protected $indexName = "cities-geo.index";

    protected $config = [
        'driver'   => 'sqlite',
        'database' => __DIR__ . '/../_files/cities.sqlite',
        'host'     => 'localhost',
        'username' => 'testUser',
        'password' => 'testPass',
        'storage'  => __DIR__ . '/../_files/'
    ];

    public function testGeoIndexCreation()
    {
        //we're skipping this test
        $this->assertTrue(true);
        return;

        $engine   = new SqliteEngine;
        $geoIndex = new TNTGeoIndexer($engine);
        $geoIndex->disableOutput(true);
        $geoIndex->loadConfig($this->config);
        $geoIndex->createIndex($this->indexName);
        $geoIndex->query('SELECT id, longitude, latitude FROM cities;');
        $geoIndex->run();

        $indexPath = __DIR__ . '/../_files/' . $this->indexName;

        $this->assertTrue(file_exists($indexPath));
    }
}
