<?php
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host,$dbid,$dbpass,$dbname);

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

$ret = mysqli_query($conn, "insert into camera (CMFR_id, camera_name,sensor_size, resolution, c_year, mount_id) values('$CMFR_id', '$camera_name', '$sensor_size', '$resolution', '$c_year', '$mount_id')");
if(!$ret)
{
	mysqli_query($conn, "rollback"); // camera 등록 query 수행 실패, 수행 전으로 rollback
    alert_message('Query Error : '.mysqli_error($conn));
}
else
{
	mysqli_query($conn, "commit"); // camera 등록 query 성공. 수행 내역 commit
    s_msg ('성공적으로 입력 되었습니다');
    echo "<meta http-equiv='refresh' content='0;url=camera_list.php'>";
}

?>
