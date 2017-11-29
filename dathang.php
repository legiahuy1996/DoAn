<?php
session_start();
include('controller/c_index.php');
$c_index = new C_index();
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

	$ketqua = $c_index->getKHByName($_SESSION['username']);
	$dathang = $c_index->dathang($ketqua['MaKH'],$ketqua['diachi']);
	$listdonhang = $c_index->getlistdonhang($ketqua['MaKH']);
	var_dump($listdonhang);

   

}
?>