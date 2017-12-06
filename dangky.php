<?php
session_start();
include('controller/c_index.php');
$c_index = new C_index();
if(isset($_POST['DangKy']))
{
    include('main/trangdangky.php');
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

    <title> Đăng ký</title>

    <!-- Bootstrap Core CSS -->
    <link href="View/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="View/css/shop-homepage.css" rel="stylesheet">
    <link href="View/css/my.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you View the page via file:// -->
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
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
				  	<div class="panel-heading">Đăng ký tài khoản</div>
				  	<div class="panel-body">
				    	<form method="post" action="dangky.php" method="post">
				    		<div id="taikhoan">
                                   <?php
                                if(isset($_SESSION['errormess']))
                                {?>
                                    <div class="alert alert-danger"><?=$_SESSION['errormess']?></div>


                                    <?php
                                }
                                ?>
				    			<label>Tài khoản</label>
                                <?php 
                                if(isset($_POST['Username']))
                                {
                                    ?>
                                    <input type="text" maxlength="50" class="form-control" placeholder="Username" name="Username" aria-describedby="basic-addon1" value="<?=$_POST['Username']?>" >
                                    <?php
                                }
                                else
                                {
                                    ?>
                                    <input type="text" maxlength="50" class="form-control" placeholder="Username" name="Username" aria-describedby="basic-addon1"  >
                                    <?php
                                }
                                ?>
							</div>
                            <br>
                             <div >
                                
                                <label>Họ và tên</label>
                                <?php 
                                if(isset($_POST['fullname']))
                                {
                                    ?>
                                <input type="text"  id="fullname" maxlength="200" class="form-control" placeholder="fullname" id="fullname" name="fullname" aria-describedby="basic-addon1" value="<?=$_POST['fullname']?>"  >
                                  <?php
                                }
                                else
                                {
                                    ?>
                                      <input type="text"  id="fullname" maxlength="200" class="form-control" placeholder="fullname" id="fullname" name="fullname" aria-describedby="basic-addon1"   >
                                          <?php
                                }
                                ?>
                            </div>
                            
							<br>
							<div>
				    			<label>Email</label>
                                  <?php 
                                if(isset($_POST['email']))
                                {
                                    ?>
							  	<input type="email" maxlength="200" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1"   value="<?=$_POST['email']?>" 
							  	>
                                  <?php
                                }
                                else
                                {
                                    ?>
                                    <input type="email" maxlength="200" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1" 
                                >
                                        <?php
                                }
                                ?>
							</div>
							<br>	
                            
							<div>
				    			<label>Nhập mật khẩu</label>
							  	<input type="password" maxlength="50" class="form-control" name="password" aria-describedby="basic-addon1"  >
							</div>
							<br>
							<div>
				    			<label>Nhập lại mật khẩu</label>
							  	<input type="password" maxlength="50" class="form-control" name="passwordAgain" aria-describedby="basic-addon1"  >
							</div>
							<br>
                            <div>
                                <label>Ngày sinh</label>
                                  <?php 
                                if(isset($_POST['birthdate']))
                                {
                                    ?>
                                <input type="date" maxlength="200" class="form-control"  name="birthdate" aria-describedby="basic-addon1"   value="<?=$_POST['birthdate']?>" 
                                >
                                  <?php
                                }
                                else
                                {
                                    ?>
                                    <input type="date" maxlength="200" class="form-control"  name="birthdate" aria-describedby="basic-addon1"   
                                >
                                       <?php
                                }
                                ?>
                            </div>
                            <br>    
                            <div>
                                <label>Giới tính</label>
                            </br>
                            <?php
                            if(isset($_POST['sex']))
                            {
                                if($_POST['sex']==1)
                                {   ?>
                                    <input type="radio"   name="sex" id="nam" value="nam" checked="checked" 
                                    >Nam
                                    <input type="radio"   name="sex"  id="nu" value="nữ" 
                                    >Nữ
                                    <?php
                                }
                                else
                                {
                                    ?>
                                      <input type="radio"   name="sex" id="nam" value="nam"
                                    >Nam
                                    <input type="radio"   name="sex"  id="nu" value="nữ"  checked="checked" 
                                    >Nữ
                                    <?php
                                }
                            }
                            else
                            {
                                ?>
                                <input type="radio"   name="sex" id="nam" value="nam" checked="checked" 
                                    >Nam
                                    <input type="radio"   name="sex"  id="nu" value="nữ" 
                                    >Nữ
                                    <?php
                            }


                        ?>
                               
                            </div>
                            <br>    
                            <div >
                                
                                <label>Số điện thoại</label>
                                <?php 
                                if(isset($_POST['phone']))
                                {
                                    ?>
                                <input type="number" maxlength="11" class="form-control" name="phone" aria-describedby="basic-addon1" value="<?=$_POST['phone']?>"  >
                                  <?php
                                }
                                else
                                {
                                    ?>
                                    <input type="number" maxlength="11" class="form-control" name="phone" aria-describedby="basic-addon1"   >
                                       <?php
                                }
                                ?>
                               
                            </div>
                            <br>
                            <div >
                                
                                <label>Địa chỉ</label>
                                 <?php 
                                if(isset($_POST['address']))
                                {
                                    ?>
                                <input type="text" maxlength="100" class="form-control"  name="address" aria-describedby="basic-addon1"  value="<?=$_POST['address']?>">
                                  <?php
                                }
                                else
                                {
                                    ?>
                                   <input type="text" maxlength="100" class="form-control"  name="address" aria-describedby="basic-addon1"  >
                                       <?php
                                }
                                ?>
                               
                            </div>
                            <br>
							<button type="submit" name="DangKy" onclick="validate()" class="btn btn-success">Đăng ký
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


    <!-- jQuery -->
    <script src="View/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="View/js/bootstrap.min.js"></script>
    <script src="View/js/my.js"></script>

</body>

</html>
