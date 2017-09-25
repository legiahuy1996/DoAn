<?php 
include('controller/c_index.php');
$c_index = new C_index();
$masach = isset($_GET['masach'])?$_GET['masach']:1;
include('main/trangchitiet.php');

?>




<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Bán Sách</title>

    <!-- Bootstrap Core CSS -->
    <link href="View/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="View/css/shop-homepage.css" rel="stylesheet">
    <link href="View/css/my.css" rel="stylesheet">
    <link href="View/css/TrangChu.css" rel="stylesheet">
     <link href="View/css/TrangChiTiet.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Sách Online</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="gioithieu.html">Giới thiệu</a>
                    </li>
                    <li>
                        <a href="lienhe.html">Liên hệ</a>
                    </li>
                </ul>

                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="dangki.html">Đăng ký</a>
                    </li>
                    <li>
                        <a href="dangnhap.html">Đăng nhập</a>
                    </li>
                    <li>
                        <a>
                            <span class ="glyphicon glyphicon-user"></span>
                            Hương Hương
                        </a>
                    </li>

                    <li>
                        <a href="#">Đăng xuất</a>
                    </li>

                </ul>
            </div>



            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- slider -->
        <div class="row carousel-holder">
            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="slide-image" src="HinhAnh/1.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="HinhAnh/2.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="HinhAnh/3.jpg" alt="">
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
        <!-- end slide -->

        <div class="space20"></div>


        <div class="row main-left">
            <div class="col-md-3 ">
                <ul class="list-group" id="menu">
                    <li href="#" class="list-group-item menu1 active">
                        Menu
                    </li>

                    <li href="#" class="list-group-item menu1">
                        Chủ Đề
                    </li>
                    <ul>
                        <?php
                        foreach ($chude as $cd => $tenchude) 
                        {
                            ?>
                                <li class="list-group-item">
                            <a href="chude.php?machude=<?=$tenchude['machude']?>"><?php echo $tenchude['tenchude']?></a>
                        </li>
                        <?php
                        }
                        ?>
                    
                        
                    </ul>

                    <li href="#" class="list-group-item menu1">
                        Tác Giả
                    </li>
                    <ul>
                        <?php 
                        foreach ($tacgia as $tg => $tentacgia) 
                        {
                            ?>
                           <li class="list-group-item">
                            <a href="loaitin.html"><?php echo $tentacgia['TenTG']?></a>
                        </li>
                        <?php
                        }
                        ?>
                        
                        
                    </ul>


                    <li href="#" class="list-group-item menu1">
                        Nhà Xuất Bản
                    </li>

                    <ul>
                        <?php 
                        foreach ($nhaxuatban as $nxb => $tennxb) 
                        {
                            ?>
                           <li class="list-group-item">
                            <a href="nhaxuatban.php?manxb=<?=$tennxb['MaNXB']?>"><?php echo $tennxb['TenNXB']?></a>
                        </li>
                        <?php
                        }
                        ?>
                    </ul>


                   
                </ul>
            </div>

            <div class="col-md-9">
             <div class="panel panel-default">
              <div class="panel-heading" style="background-color:#337AB7; color:white;" >
                <h2 style="margin-top:0px; margin-bottom:0px;"> Chi Tiết</h2>
           </div>

           <div class="panel-body">
            <div id="body">
            <div id="HinhAnh">
                <img src="HinhAnhSP/<?=$chitietsach['AnhBia']?>" />
            </div>
          
            <div id="ThongTin">
                <div id="TenSach"><?=$chitietsach['TenSach']?></div>
                <div id="ChuDe">Chủ đề:  <?=$chitietchude['tenchude']?></div>
                <div id="NhaXuatBan">Nhà xuất bản:  <?=$chitietnhaxuatban['TenNXB']?></div>
                <div id="TacGia">Tác giả:  <?php 
                if(sizeof($chitiettacgia)>1)
                {
                    foreach ($chitiettacgia as $tg => $tentg) {
                            if($tg==sizeof($chitiettacgia)-1) {
                               
                                echo $tentg['TenTG'];
                            }
                            else{
                                echo $tentg['TenTG']."," ;
                            }
                           
                            
                    }
                }
                else
                {
                    foreach ($chitiettacgia as $key => $value) {
                        echo $value['TenTG'];
                    }
                }
                
                



                ?></div>
                <div id="Mota">Nội dung tóm tắt:<br /><?=$chitietsach['Mota']?> <br /></div>
                
                <div id="Gia"><span style="color: green; font-weight: normal;">Đơn giá:</span><br /><span id="Gia" > <?=number_format($chitietsach['Giaban'])?> VNĐ</span></div>
                <br />
                
                
                   <input type="submit" style="cursor:pointer" value="Mua hàng &#xf07a;" id="btnGioHang" class="btn btn-primary">
               
           </div>
</div>
        
        
        
    </div>
   
       
       
     </div>
 </div>

</div>
      
        <!-- /.row -->
    </div>
    <!-- end Page Content -->

    <!-- Footer -->
    <hr>
    <footer>
        <div class="row">
            <div class="col-md-12">
                <p>Copyright &copy; Your Website 2014</p>
            </div>
        </div>  
    </footer>
    <!-- end Footer -->
    <!-- jQuery -->
    <script src="View/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="View/js/bootstrap.min.js"></script>
    <script src="View/js/my.js"></script>

</body>

</html>
