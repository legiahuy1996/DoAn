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
if(isset($_POST['submit']))
{
    $makh = $_SESSION['makh'];
    $hoten = $_POST['hoten'];
    $matkhau = $_POST['password'];
    $nhaplai = $_POST['passwordAgain'];
    $email = $_POST['email'];
    if($matkhau == $nhaplai)
    {
        $checkfullname =str_replace(" ","", $hoten);
        $checkemail =str_replace(" ","", $email);
        if(strlen($checkfullname)==0)
        {
            $_SESSION['error'] = "Không được để trống họ tên!!";
        }
        else if(strlen($checkemail)==0)
        {
            $_SESSION['error'] = "Không được để trống email!!";
        }
        else
        {
             $a =$c_index->suataikhoan($hoten,$matkhau,$makh,$email);
        // var_dump($hoten,$matkhau,$makh,$email); exit;
        $_SESSION['ketquataikhoan']= true;
            if(isset( $_SESSION['error'])) unset( $_SESSION['error']);
        }
       

    }
    else
    {
        $_SESSION['error'] = "Nhập lại mật khẩu không đúng!!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript"> 

    <?php if($_SESSION['ketquataikhoan']==true)
    {
         unset($_SESSION['ketquataikhoan']);
        ?> 
        alert('Sửa thành công! ');
         <?php
       

    } ?>
        


       
   
</script>
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

    

            </div>



            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

    	<!-- slider -->
    	<div class="row carousel-holder">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
				  	<div class="panel-heading">Thông tin tài khoản</div>
				  	<div class="panel-body">
                        <?php 
                        $kh = $c_index->getKHByName($_SESSION['username']);
                        
                        ?>
				    	<form action="taikhoan.php?makh=<?=$_SESSION['makh']?>" method="post">
				    		<div>
                                <?php 
                                if(isset($_SESSION['error']))
                                {
                                 ?>
                                 <div class="alert alert-danger"><?=$_SESSION['error']?></div>
                                 <?php
                                }
                                ?>
				    			<label>Họ tên</label>
							  	<input type="text" class="form-control"  name="hoten" value="<?=$kh['TenKH']?>" aria-describedby="basic-addon1">
							</div>
							<br>
							<div>
				    			<label>Email</label>
							  	<input type="email" class="form-control" placeholder="Email" value="<?=$kh['email']?>"  name="email" aria-describedby="basic-addon1"
							  	
							  	>
							</div>
							<br>	
							<div>
								
				    			<label>Mật khẩu mới </label>
							  	<input type="password" class="form-control" name="password" aria-describedby="basic-addon1">
							</div>
							<br>
							<div>
				    			<label>Nhập lại mật khẩu</label>
							  	<input type="password" class="form-control" name="passwordAgain" aria-describedby="basic-addon1">
							</div>
							<br>
							<button type="submit" name="submit" class="btn btn-default">Sửa
							</button>

				    	</form>
				  	</div>
				</div>
            </div>
            <div class="col-md-2">
            </div>
        </div>
        <!-- end slide -->
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
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/my.js"></script>

</body>

</html>
