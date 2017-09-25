<?php

$chude = $c_index->getlistchude();
$tacgia = $c_index->getlisttacgia();
$nhaxuatban = $c_index->getlistnhaxuatban();
$chitiettacgia = $c_index->getTacGiaByID($matacgia);
$chitietsach = $c_index->getSachByTacGia($matacgia,$current_page); 
?>