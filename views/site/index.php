<?php

/* @var $this yii\web\View */

use miloschuman\highcharts\Highcharts;

$this->title = 'PWL Class';
?>
<div class="site-index">

    <?php \insolita\wgadminlte\LteBox::begin([
        'type' => \insolita\wgadminlte\LteConst::TYPE_INFO,
        'isSolid' => true,
        'boxTools' => '<button class="btn btn-success btn-xs create_button" ><i class="fa fa-plus-circle"></i> Add</button>',
        'tooltip' => 'this tooltip description',
        'title' => 'Manage users',
        'footer' => 'total 44 active users',
    ]) ?>
    ANY BOX CONTENT HERE
    <?php \insolita\wgadminlte\LteBox::end() ?>

    <?php
    echo Highcharts::widget([
        'options' => [
            'title' => ['text' => 'Fruit Consumption'],
            'xAxis' => [
                'categories' => ['Apples', 'Bananas', 'Oranges']
            ],
            'yAxis' => [
                'title' => ['text' => 'Fruit eaten']
            ],
            'series' => [
                ['name' => 'Jane', 'data' => [1, 0, 4]],
                ['name' => 'John', 'data' => [5, 7, 3]]
            ]
        ]
    ]);
    ?>

</div>