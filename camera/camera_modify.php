<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

$camera_id = $_POST['camera_id'];

$CMFR_id = $_POST['CMFR_id'];
$camera_name = $_POST['camera_name'];
$sensor_size = $_POST['sensor_size'];
$resolution = $_POST['resolution'];
$c_year = $_POST['c_year'];
$mount_id = $_POST['mount_id'];

//for transaction
mysqli_query($conn, "set autocommit = 0");	// autocommit 해제
mysqli_query($conn, "set transation isolation level serializable");	// isolation level 설정
mysqli_query($conn, "begin");	// begins a transaction

$ret = mysqli_query($conn, "update camera set CMFR_id = '$CMFR_id', camera_name = '$camera_name', sensor_size = '$sensor_size', resolution = '$resolution', c_year = '$c_year', mount_id = '$mount_id' where camera_id = $camera_id");

if(!$ret)
{
	mysqli_query($conn, "rollback"); // camera 수정 query 수행 실패, 수행 전으로 rollback
    msg('Query Error : '.mysqli_error($conn));
}
else
{
	mysqli_query($conn, "commit"); // camera 수정 query 성공. 수행 내역 commit
    s_msg ('성공적으로 수정 되었습니다');
    echo "<meta http-equiv='refresh' content='0;url=camera_list.php'>";
}

?>
