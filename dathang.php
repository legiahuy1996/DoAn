<?php
session_start();
include('smtpmail/PHPMailerAutoload.php');
include('model/m_admin.php');
$m_admin = new M_admin();

if(!isset($_SESSION['TenKH']))
{
	
	echo '

<table id="divgioHang">
	<tr>
		<td  >
			<h2>Vui lòng đăng nhập để đặt hàng <a href="dangnhap.php"><button class="btn btn-primary">Đăng nhập</button></a> </h2>
			</br>
			
		</td>

	</tr>
	<tr><td  >
			<h2>Tạo tài khoản thành viên</h2>
			</br>
			<div style="font-size: 16px">
			 <button class="btn btn-primary">Đăng Ký Ngay!</button></p></div>
		</td></tr>	
		



</table><style>
    #div
gioHang {
        border:2px solid #EEEEEE ;
        
    }
        #divgioHang td {
            padding:10px;
            border: 1px solid #EEEEEE;
            width:30%;
        }
</style>';
}
else
{
	
	$ketqua = $m_admin->getKHByName($_SESSION['username']);
		$c = getdate();

	$ngaydat = $c['year'].'-'.$c['mon'].'-'.$c['mday'];
	$a = strtotime($ngaydat) + 86400;
	$ngaygiao = $a;
	$date = $ngaydat;
	$ngaygiao = strtotime ( '+1 day' , strtotime ( $date ) ) ;
	$ngaygiao = date ( 'Y-m-j' , $ngaygiao );
	

	
	
	$result = $m_admin->themdonhang($ketqua['MaKH'],$ngaygiao,$ngaydat,$ketqua['diachi']);
	foreach ($_SESSION['giohang'] as $key => $value) 
	{
		$a= $m_admin->getmadonhang();
		$madonhang = $a['max(madonhang)'];
		$masach = $value['masach'];
		$soluong = $value['soluong'];
		$dongia = $value['Giaban'];
		$them = $m_admin->themchitietdonhang($madonhang,$masach,$soluong,$dongia);
		// var_dump($a,$value);
	}
	$listchitiet = $m_admin->getlistchitietbyIDdonhang($madonhang);
		$sach = $m_admin->getsachbyID($masach);
		// var_dump($listchitiet,$sach);
		// unset($_SESSION['giohang']);
		// unset($_SESSION['tongso']);
		$emailLL = $ketqua['email'];
		
		//require "class.phpmailer.php";
	$mail = new PHPMailer(); 
	$mail->IsSMTP();                              // send via SMTP
	$mail->Host = "ssl://smtp.gmail.com"; 
	$mail->SMTPAuth = true;                       // turn on SMTP authentication
	$mail->Username = "happybookstore180@gmail.com";        // SMTP username
	$mail->Password = "Smile123";               // SMTP password
	//$webmaster_email = "kodcquennghen@gmail.com";       //Reply to this email ID
	$email=$emailLL;
		             // Recipients email ID
	$name=$ketqua['TenKH'];                              // Recipient's name
	//$mail->From = $webmaster_email;
	$mail->Port = 465;
	$mail->SMTPDebug = 0 ;
	$mail->SMTPSecure = 'ssl';
	//$mail->FromName = "Web bán sách";
	$mail->AddAddress($email,$name);
	$mail->setFrom('happybookstore180@gmail.com','muasach.tk');
	$mail->AddReplyTo('happybookstore180@gmail.com',"muasach.tk");
	$mail->WordWrap = 50;                         // set word wrap
	$mail->IsHTML(true);                          // send as HTML
	$body ="";
	$body.= "<div>Thông tin đơn hàng của bạn là :</div><br>" ; 
	$body.="Mã đơn hàng: <br>  ";  // body la noi dbplus_undo(relation)ng 
	$tongtien =0;
	foreach ($listchitiet as $key => $value) 
	{
		$sach = $m_admin->getsachbyID($value['MaSach']);
		$body.="Tên sách:". $sach['TenSach']."<br>Số lượng: ".$value['Soluong']."<br>Đơn giá:". $value['Dongia']."<br>";
		$tongtien+= $value['Dongia'];

	}
	$body.="Thành tiền : ".$tongtien;
	$mail->Subject = "subject";
	$mail->Body =$body;                  //HTML Body 
	$mail->AltBody = "This is the body when user views in plain text format"; //Text Body 
	
	if(!$mail->Send())
	{
	
	echo "Mailer Error: " . $mail->ErrorInfo;
	}
	else
	{
	echo '<div class="alert alert-success">Chi tiết đơn hàng đã được gửi qua email của bạn</div>';
	}
}
?>



   


