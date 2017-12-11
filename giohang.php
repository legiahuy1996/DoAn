<?php 
session_start();
include('controller/c_index.php');
$c_index = new C_index();
$masach = isset($_GET['masach'])?$_GET['masach']:1;
include('main/trangchitiet.php');
if(isset($_SESSION['giohang']))
{
    if(sizeof($_SESSION['giohang'])==0)
    {
        unset($_SESSION['giohang']);
        unset($_SESSION['tongso']);
    }
    else
        $_SESSION['tongso']= sizeof($_SESSION['giohang']);
}


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
                <h2 style="margin-top:0px; margin-bottom:0px;"> Giỏ hàng của bạn</h2>
           </div>

           <div id="panel-body" class="panel-body">
    <?php
    if(isset($_SESSION['giohang']))
    {
        if(sizeof($_SESSION['giohang'])>0)
    {
        ?>
        <table id="divGioHang">
            <tr>
                <td>Mã sách</td>

                <td>Tên sách</td>

                <td>Ảnh bìa</td>

                <td>Đơn giá</td>


                <td>Số lượng</td>

                <td>Thành tiền</td>
            </tr>


            <?php foreach ($_SESSION['giohang'] as $key => $value) 
            { ?>
               <tr>
                <td><?=$value['masach']?></td>

                <td><?=$value['tensach']?></td>

                <td><a href="chitiet.php?masach=<?=$value['masach']?>"><img src="HinhAnhSP/<?=$value['anhbia']?>" width="50" height="50" /></a></td>

                <td>
                 <?=number_format($value['Giaban'])?> VNĐ
             </td>

             <td><input type="number" id="<?=$value['masach']?>"   name="soluong" min="0" max="100" align="center" value="<?=$value['soluong']?>"></td>

             <td><?=number_format($value['thanhtien'])?> VNĐ</td>
             <td><a href="xoagiohang.php?masach=<?=$_SESSION['giohang'][$value['masach']]['masach']?>"  ><button class="btn btn-danger">Xoá</button>
             </a> <button class="btn btn-warning" onclick="soluong(<?=$value['masach']?>,<?=$value['Giaban']?>)">Sửa</button>
             </td>

         </tr>



         <tr>
           <?php


       }
    }
    
?>
       

   </tr>
   <tr>
    <td colspan="6" style="text-align:right;color:blue">
      <button id="btndathang" onclick="dathang()" class="btn btn-success" type="submit"> Đặt hàng</button>

      <script type="text/javascript">
        function soluong(id,giaban)
        {
            var soluong =parseInt($('#'+id+'').val());
            if(soluong <0)
            {
                alert('số lượng không được âm!');
                window.location = "giohang.php";
            }
            else
            {
                window.location="suagiohang.php?masach="+id+"&&soluong="+soluong+"&&giaban="+giaban;
               alert('sửa thành công !');
            }
         
        }
        function dathang() {
                          var xhttp;
                            
                        xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function() {
                            if (xhttp.readyState == 4 && xhttp.status == 200) {
                              document.getElementById("panel-body").innerHTML = xhttp.responseText;
                              
                          }
                      };
                      xhttp.open("GET", "dathang.php", true);
                      xhttp.send();   
         }
      </script>
  </td>

</tr>

</table>
<div id="dathang"></div>
<?php

}
else
{
    
   
    ?>

   <a href="index.php"><h2 class="alert alert-warning"> Chưa có sách nào trong giỏ hàng của bạn . <br>  Click vào  đây  để quay lại</h2></a>
    <?php
}

?>   



<style>
    #divGioHang {
        border:2px solid #EEEEEE ;
        
    }
        #divGioHang td {
            padding:10px;
            border: 1px solid #EEEEEE;
        }
</style>
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
