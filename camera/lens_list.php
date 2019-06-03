<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수
?>
<div class="container">
    <?
    $conn = dbconnect($host, $dbid, $dbpass, $dbname);
    $query = "select * from lens natural join lens_manufacturer";
    if (array_key_exists("search_keyword", $_POST)) {  // array_key_exists() : Checks if the specified key exists in the array
        $search_keyword = $_POST["search_keyword"];
        $query =  $query . " where lens_name like '%$search_keyword%' or LMFR_name like '%$search_keyword%'";
    
    }
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>
    
    <h4>렌즈 목록
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
            <th>초점거리</th>
            <th>조리개</th>
            <th>기능</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
            echo "<tr>";
            echo "<td>{$row_index}</td>";
            echo "<td>{$row['LMFR_name']}</td>";
            echo "<td><a href='lens_view.php?lens_id={$row['lens_id']}'>{$row['lens_name']}</a></td>";
            echo "<td>{$row['focal_range']} mm</td>";
            echo "<td>{$row['Aperture']}</td>";
            echo "<td width='17%'>
                <a href='lens_form.php?lens_id={$row['lens_id']}'><button class='button primary small'>수정</button></a>
                 <button onclick='javascript:deleteConfirm({$row['lens_id']})' class='button danger small'>삭제</button>
                </td>";
            echo "</tr>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
    <a href='lens_form.php'><button class='button primary small'>등록</button></a>
    <script>
        function deleteConfirm(lens_id) {
            if (confirm("정말 삭제하시겠습니까?") == true){    //확인
                window.location = "lens_delete.php?lens_id=" + lens_id;
            }else{   //취소
                return;
            }
        }
    </script>
</div>
<? include("footer.php") ?>
