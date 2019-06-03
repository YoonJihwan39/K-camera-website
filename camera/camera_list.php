<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수
?>
<div class="container">
    <?
    $conn = dbconnect($host, $dbid, $dbpass, $dbname);
    $query = "select * from camera natural join camera_manufacturer";
    if (array_key_exists("search_keyword", $_POST)) {  // array_key_exists() : Checks if the specified key exists in the array
        $search_keyword = $_POST["search_keyword"];
        $query =  $query . " where camera_name like '%$search_keyword%' or CMFR_name like '%$search_keyword%'";
    
    }
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>
	<h4>카메라 목록
	<?
	if (array_key_exists("search_keyword", $_POST)) {  // array_key_exists() : Checks if the specified key exists in the array
		echo "  (검색어: ";
		echo $_POST["search_keyword"];
		echo ")";
    }
	?>
	</h4>
	<br>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>No.</th>
            <th>제조사</th>
            <th>모델명</th>
            <th>센서 크기</th>
            <th>해상도</th>
            <th>기능</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
            echo "<tr>";
            echo "<td>{$row_index}</td>";
            echo "<td>{$row['CMFR_name']}</td>";
            echo "<td><a href='camera_view.php?camera_id={$row['camera_id']}'>{$row['camera_name']}</a></td>";
            echo "<td>{$row['sensor_size']} mm</td>";
            echo "<td>{$row['resolution']}</td>";
            echo "<td width='17%'>
                <a href='camera_form.php?camera_id={$row['camera_id']}'><button class='button primary small'>수정</button></a>
                 <button onclick='javascript:deleteConfirm({$row['camera_id']})' class='button danger small'>삭제</button>
                </td>";
            echo "</tr>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
    <a href='camera_form.php'><button class='button primary small'>등록</button></a>
    <script>
        function deleteConfirm(camera_id) {
            if (confirm("정말 삭제하시겠습니까?") == true){    //확인
                window.location = "camera_delete.php?camera_id=" + camera_id;
            }else{   //취소
                return;
            }
        }
    </script>
</div>
<? include("footer.php") ?>
