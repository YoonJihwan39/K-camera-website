<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

$lens_id = $_POST['lens_id'];

$LMFR_id = $_POST['LMFR_id'];
$lens_name = $_POST['lens_name'];
$focal_range = $_POST['focal_range'];
$Aperture = $_POST['Aperture'];
$l_year = $_POST['l_year'];
$mount_id = $_POST['mount_id'];

//for transaction
mysqli_query($conn, "set autocommit = 0");	// autocommit 해제
mysqli_query($conn, "set transation isolation level serializable");	// isolation level 설정
mysqli_query($conn, "begin");	// begins a transaction

$ret = mysqli_query($conn, "update lens set LMFR_id = '$LMFR_id', lens_name = '$lens_name', focal_range = '$focal_range', Aperture = '$Aperture', l_year = '$l_year', mount_id = '$mount_id' where lens_id = $lens_id");

if(!$ret)
{
	mysqli_query($conn, "rollback"); // lens 수정 query 수행 실패, 수행 전으로 rollback
    msg('Query Error : '.mysqli_error($conn));
}
else
{
	mysqli_query($conn, "commit"); // lens 수정 query 성공. 수행 내역 commit
    s_msg ('성공적으로 수정 되었습니다');
    echo "<meta http-equiv='refresh' content='0;url=lens_list.php'>";
}

?>
