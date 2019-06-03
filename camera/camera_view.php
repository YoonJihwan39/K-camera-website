<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("camera_id", $_GET)) {
    $camera_id = $_GET["camera_id"];
    $query = "select * from camera natural join camera_manufacturer natural join mount where camera_id = $camera_id";
    $res = mysqli_query($conn, $query);
    $camera = mysqli_fetch_assoc($res);
    if (!$camera) {
        msg("해당 카메라의 정보가 존재하지 않습니다.");
    }
}
?>
    <div class="container fullwidth">

        <h3>카메라 정보 상세 보기</h3>
		
        <p>
            <label for="CMFR_name">제조사</label>
            <input readonly type="text" id="CMFR_name" name="CMFR_name" value="<?= $camera['CMFR_name'] ?>"/>
        </p>

        <p>
            <label for="camera_name">카메라 모델명</label>
            <input readonly type="text" id="camera_name" name="camera_name" value="<?= $camera['camera_name'] ?>"/>
        </p>

        <p>
            <label for="sensor_size">센서크기</label>
            <input readonly type="text" id="sensor_size" name="sensor_size" value="<?= $camera['sensor_size'] ?> mm"/>
        </p>

        <p>
            <label for="resolution">해상도</label>
            <input readonly type="text" id="resolution" name="resolution" value="<?= $camera['resolution'] ?>"/>
        </p>
        
        <p>
            <label for="c_year">출시년도</label>
            <input readonly type="text" id="c_year" name="c_year" value="<?= $camera['c_year'] ?>"/>
        </p>
        
        <p> 
        <label for="mountable_lens">장착 가능한 렌즈 목록 (렌즈 마운트 기준: <?= $camera['mount_name'] ?>) </label>
        
		<?
    //$conn = dbconnect($host, $dbid, $dbpass, $dbname);
    $query = "select * from camera natural join mount natural join lens natural join lens_manufacturer where camera_id = $camera_id;";
    if (array_key_exists("search_keyword", $_POST)) {  // array_key_exists() : Checks if the specified key exists in the array
        $search_keyword = $_POST["search_keyword"];
        $query =  $query . " where product_name like '%$search_keyword%' or manufacturer_name like '%$search_keyword%'";
    
    }
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
            <th>렌즈 모델명</th>
            <th>초점거리</th>
            <th>해상도</th>
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
            echo "</tr>";
            $row_index++;
        }
        ?>
        </tbody>
    </table>
    </p>
    
    </div>
    
<? include("footer.php") ?>