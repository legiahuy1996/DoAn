<?php 
session_start();
include('controller/c_index.php');
$c_index = new C_index();
$current_page = isset($_GET['page'])?$_GET['page']:1;
include('main/trangchu.php');
if(isset($_SESSION['giohang']))
{
    if(sizeof($_SESSION['giohang'])==0)
        unset($_SESSION['tongso']);
    else
       {
        $tongso=0;
        foreach ($_SESSION['giohang'] as $key => $value) {
            $tongso+=$value['soluong'];

        }
        $_SESSION['tongso'] = $tongso;
       }
}

?>




<!DOCTYPE html>
<html lang="en">

<head>
     <link rel="shortcut icon" href="HinhAnh/favicon.ico">
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
    <link rel="stylesheet" type="text/css" href="View/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="View/css/font-awesome.min.css">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"> 

    <?php if($_SESSION['ketqua']==true)
    {?> 
        alert('Đăng ký thành công! ');

        <?php
        unset($_SESSION['ketqua']);
    } ?>
   
</script>

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
               

               

			     <ul class="nav navbar-nav pull-right">
                   
                  <?php
                  if(isset($_SESSION['TenKH']))
                    {?>

                    <li>
                        <a href="taikhoan.php">


                           <span class ="glyphicon glyphicon-user"></span>
                           <?php
                           echo $_SESSION['TenKH'];


                           ?>

                       </a>
                   </li>
                    <li>
                        <a  href="giohang.php" title="Bấm vào để xem giỏ hàng của bạn" data-placement="bottom"><i class="glyphicon glyphicon-shopping-cart"> </i>Giỏ Hàng  <span id="giohang"><?php if(isset($_SESSION['tongso']))
                        echo "(".$_SESSION['tongso'].")"?></span></a>
</li>

                    <li>
                        <a href="dangxuat.php">Đăng xuất</a>
                    </li>

                   <?php
               }
               else 
                   { ?>
                     <li>
                        <a href="dangky.php">Đăng ký</a>
                    </li>
                    <li><a href="dangnhap.php">Đăng nhập</a></li>
                    <li>
                        <a  href="giohang.php" title="Bấm vào để xem giỏ hàng của bạn" data-placement="bottom"><i class="glyphicon glyphicon-shopping-cart"> </i>Giỏ Hàng  <span id="giohang"><?php if(isset($_SESSION['tongso']))
                        echo "(".$_SESSION['tongso'].")"?></span></a>
</li>

                    <li>
                        <a href="dangxuat.php">Đăng xuất</a>
                    </li>
                        <?php
                    }
                        ?>

    

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
                            <a href="tacgia.php?matacgia=<?=$tentacgia['MaTacGia']?>"><?php echo $tentacgia['TenTG']?></a>
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
                <h2 style="margin-top:0px; margin-bottom:0px;"> Sach Mới Xuất Bản</h2>
           </div>

           <div class="panel-body">
            <div id="divBody" style="background:White;">
                
                <?php 
                foreach ($ketqua as $key => $value) {
                    ?>
                    <div id="SanPham">
                       <a href="chitiet.php?masach=<?=$value['MaSach']?>">  <div id="AnhBia"><img src="HinhAnhSP/<?=$value['AnhBia']?>" width="100" height="150" /></div></a>
                       <div id="ThongTin">

                         <?php 
                         if(strlen($value['TenSach'])<50)
                         {
                            ?>
                            <div id="TenSach" title="<?=$value['TenSach']?>"><?=$value['TenSach']?></div>
                            <?php
                        }
                        else
                        {
                            ?>
                            <div id="TenSach" title="<?=$value['TenSach']?>"><?=mb_substr($value['TenSach'],0,50)?> ...</div>
                            <?php
                        }
                        ?>  
                        <div id="DonGia" style="color:orange"><font  color="Green">Giá:</font> <?=number_format($value['Giaban'])?> VNĐ</div>
                    </div>
                    <div id="GioHang">
                         <button onclick="giohang(<?=$value['MaSach']?>)" type="submit" class="btn btn-primary"
                         >
                            Thêm vào giỏ hàng
          <span class="glyphicon glyphicon-shopping-cart"></span> 
        </button> 
                      <script>
                        function giohang(id) {
                          var xhttp;
                            
                        xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function() {
                            if (xhttp.readyState == 4 && xhttp.status == 200) {
                              document.getElementById("giohang").innerHTML = xhttp.responseText;
                              
                          }
                      };
                      xhttp.open("GET", "indexgiohang.php?id="+id, true);
                      xhttp.send();   

                        var result = confirm("Đã thêm sách vào giỏ hàng, bạn có muốn xem giỏ hàng của mình không ?");
                      if(result == true)
                      {
                        window.location="giohang.php";
                       
                      }
                      else
                      {
                        
                        
                      }
                  }
             
            
              </script>

                    </div>

                    </div>
                   
                <?php 
            } 
            ?>
        </div>
         <!-- Pagination -->
                    <div class="row text-center">
                        <div class="col-lg-12">
                            <ul class="pagination">
                                <?php
                                $c_index = new C_index();
                                $total_record = $c_index->getTotalRecordSach();
                                $limit =6;
                                $total_page = ceil($total_record['Totalrecord']/$limit);
                                if($total_page>1)
                                {   
                                    if ($current_page > $total_page){
                                    $current_page = $total_page;
                                }
                                else if ($current_page < 1){
                                    $current_page = 1;
                                }
                                if ($current_page > 1 && $total_page > 1){
                                    ?>
                                    <li>
                                        <a href="index.php?page=<?=($current_page-1)?>">&laquo;</a>
                                    </li>
                                    <?php
                                }
                                for ($i=1; $i<=$total_page ; $i++) 
                                {
                                    if($i == $current_page)
                                        {?>
                                    <li class="active">
                                        <span><?=$i?></span>
                                    </li>
                                    <?php
                                }
                                    else
                                    {    ?>

                                    <li>
                                        <a href="index.php?page=<?=$i?>"><?=$i?></a>
                                    </li>
                                    <?php
                                }
                                }
                                if ($current_page < $total_page && $total_page > 1)
                                {
                                 ?>

                                 <li>
                                    <a href="index.php?page=<?=($current_page+1)?>">&raquo;</a>
                                </li>
                                <?php
                            }
                                }?>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
        
        
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
