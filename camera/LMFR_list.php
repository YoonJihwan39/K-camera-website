<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수
?>
<div class="container">
    <?
    $conn = dbconnect($host, $dbid, $dbpass, $dbname);
    $query = "select *, count(lens_id) as count from lens_manufacturer natural left join lens group by LMFR_id;";
    $res = mysqli_query($conn, $query);
    if (!$res) {
         die('Query Error : ' . mysqli_error());
    }
    ?>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>No.</th>
            <th>제조사</th>
            <th>국가</th>
            <th>등록된 렌즈 수</th>
        </tr>
        </thead>
        <tbody>
        <?
        $row_index = 1;
        while ($row = mysqli_fetch_array($res)) {
            echo "<tr>";
            echo "<td>{$row_index}</td>";
            echo "<td>{$row['LMFR_name']}</td>";
            //echo "<td><a href='camera_view.php?camera_id={$row['camera_id']}'>{$row['camera_name']}</a></td>";
            echo "<td>{$row['l_country']}</td>";
            echo "<td>{$row['count']}</td>";
            echo "</tr>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
</div>
<? include("footer.php") ?>
