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
			<span>Bạn chưa có tài khoản ? Hãy đăng ký thành viên để được các quyền lợi :</span>
			
			<p style="margin-left: 30px">• Đặt hàng nhanh chóng.</p>
			<p style="margin-left: 30px">• Kiểm tra các đơn hàng cũ.</p>
			<p style="margin-left: 30px">• Dễ dàng theo dõi tình trạng giao hàng. <button class="btn btn-primary">Đăng Ký Ngay!</button></p></div>
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
	//var_dump($emailLL);
	$mail = new PHPMailer();
	$mail->SMTPDebug = 4;                                 // Enable verbose debug output
	$mail->IsSMTP();
	$mail->Host = "smtp.gmail.com";  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	
	
	$mail->Username = 'kodcquennghen@gmail.com';                 // tai khoan dung de gui
	$mail->Password = 'hembjet1';                             // mat khau của tai khoan dung de gui
	                                         
	$mail->SMTPSecure = "ssl";                          
	//$mail->Port = 486;
	$mail->Port = 465; 

	//$mail->SMTPSecure = "tls";                          // Enable TLS encryption, `ssl` also accepted
	//$mail->Port = 587; 
	$mail->setFrom('kodcquennghen@gmail.com', 'Happy Bookstore');  // d/c  dung de gui , ten Cong ty 
	$mail->addAddress($emailLL, 'Hello A/C');                      // d/c m muon gui den 
	//$mail->addReplyTo('nguyenhieu7744@gmail.com', 'Information');
	$mail->Subject = 'Đơn hàng của bạn đã được xác nhận';
	//$mail->Body    = serialize($result->maxacnhan);
	$mail->isHTML(true);
	//  var_dump
	//$body = "ma xac nhan la :";
	$body ="";
	$body.= "Thông tin đơn hàng của bạn là :<br>" ; 
	$body.="Mã đơn hàng: $madonhang <br>  ";  // body la noi dbplus_undo(relation)ng 
	$tongtien =0;
	foreach ($listchitiet as $key => $value) {
		$sach = $m_admin->getsachbyID($value['MaSach']);
		$body.="Tên sách:". $sach['TenSach']."<br>Số lượng: ".$value['Soluong']."<br>Đơn giá:". $value['Dongia']."<br>";
		$tongtien+= $value['Dongia'];

	}
	$body.="Thành tiền : ".$tongtien;
	$mail->Body = $body;
	// $mail->SMTPOptions = array(
	//     'ssl' => array(
	//         'verify_peer' => false,
	//         'verify_peer_name' => false,
	//         'allow_self_signed' => true
	//     )
	// );
	//var_dump($body);
	    $mail->MsgHTML($body);
	  //  $mail->WordWrap = 50; 
	if(!$mail->Send()){
	    echo "lỗi ". $mail->ErrorInfo;
	    //return false;
	}else{
		?>
	    <div class="alert alert-success"> Đơn hàng đã được gửi về email của bạn. Bấm vào <a href="index.php">đây</a> để về trang chủ</div>;
	    <?php
	    //return true;
	}



   

}
?>
