<?php

/** @var yii\web\View $this */

use dosamigos\chartjs\ChartJs;

$this->title = 'DW By yii';

$total = [];
foreach ($branch as $branch1) {
    $total[] = $branch1["sold"];
}
$name = [];
foreach ($branch as $branch1) {
    $name[] = $branch1["branch_name"];
}
$total1 = [];
foreach ($it as $item1) {
    $total1[] = $item1["sold"];
}
$name1 = [];
foreach ($it as $item1) {
    $name1[] = $item1["item_name"];
}
$total2 = [];
foreach ($prov as $prov1) {
    $total2[] = $prov1["sold"];
}
$name2 = [];
foreach ($prov as $prov1) {
    $name2[] = $prov1["prov"];
}
$total3 = [];
foreach ($quart as $quarter1) {
    $total3[] = $quarter1["sold"];
}
$name3 = [];
foreach ($quart as $quarter1) {
    $name3[] = $quarter1["quarter"];
}
?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent">
        <h1 class="display-4">Data Warehouse</h1>

        <p class="lead">Website Informasi Penjualan pada Satya Mega Store</p>
    </div>

    <div class="body-content">

        <div class="row">

            <div class="col-6">

                <h5 class="text-center">Penjualan Berdasarkan Cabang</h5>
                <?= ChartJs::widget([
                    'type' => 'pie',
                    'options' => [
                        'height' => 200,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => $name,
                        'datasets' => [
                            [
                                'label' => "My First dataset",
                                'backgroundColor' => ['rgb(76,24,104)', 'rgb(8,29,216)', 'rgb(18,129,125)', 'rgb(254,233,68)', 'rgb(250,115,34)', 'rgb(239,45,26)', 'rgb(215,9,22)', 'rgb(174,13,103)', 'rgb(176,211,47)'],
                                'data' => $total
                            ]
                        ]
                    ]
                ]);
                ?>
            </div>
            <div class="col-6 mt-6">

                <h5 class="text-center">Penjualan Berdasarkan Item</h5>
                <?= ChartJs::widget([
                    'type' => 'doughnut',
                    'options' => [
                        'height' => 200,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => $name1,
                        'datasets' => [
                            [
                                'label' => "My First dataset",
                                'backgroundColor' => ['rgb(76,24,104)', 'rgb(8,29,216)', 'rgb(18,129,125)', 'rgb(254,233,68)', 'rgb(250,115,34)', 'rgb(239,45,26)', 'rgb(215,9,22)', 'rgb(174,13,103)', 'rgb(176,211,47)'],
                                'data' => $total1
                            ]
                        ]
                    ]
                ]);
                ?>
            </div>
            <div class="col-6 mt-5">

                <h5 class="text-center">Penjualan Berdasarkan Provinsi</h5>
                <?= ChartJs::widget([
                    'type' => 'line',
                    'options' => [
                        'height' => 200,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => $name2,
                        'datasets' => [
                            [
                                'label' => "Terjual",
                                'fill' => false,
                                'borderColor' => 'rgb(76,24,104)',
                                'data' => $total2
                            ]
                        ]
                    ]
                ]);
                ?>
            </div>
            <div class="col-6 mt-5">

                <h5 class="text-center">Penjualan Berdasarkan Quarter</h5>
                <?= ChartJs::widget([
                    'type' => 'pie',
                    'options' => [
                        'height' => 200,
                        'width' => 400
                    ],
                    'data' => [
                        'labels' => $name3,
                        'datasets' => [
                            [
                                'label' => "test",
                                'backgroundColor' => ['rgb(8,29,216)', 'rgb(254,233,68)', 'rgb(250,115,34)', 'rgb(239,45,26)'],
                                'data' => $total3
                            ]
                        ]
                    ]
                ]);
                ?>
            </div>

        </div>

    </div>
</div>