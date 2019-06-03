<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);

if (array_key_exists("lens_id", $_GET)) {
    $lens_id = $_GET["lens_id"];
    $query = "select * from lens natural join lens_manufacturer natural join mount where lens_id = $lens_id";
    $res = mysqli_query($conn, $query);
    $lens = mysqli_fetch_assoc($res);
    if (!$lens) {
        msg("해당 카메라의 정보가 존재하지 않습니다.");
    }
}
?>
    <div class="container fullwidth">

        <h3>렌즈 정보 상세 보기</h3>
		
        <p>
            <label for="LMFR_name">제조사</label>
            <input readonly type="text" id="LMFR_name" name="LMFR_name" value="<?= $lens['LMFR_name'] ?>"/>
        </p>

        <p>
            <label for="lens_name">카메라 모델명</label>
            <input readonly type="text" id="lens_name" name="lens_name" value="<?= $lens['lens_name'] ?>"/>
        </p>

        <p>
            <label for="focal_range">초점거리</label>
            <input readonly type="text" id="focal_range" name="focal_range" value="<?= $lens['focal_range'] ?> mm"/>
        </p>

        <p>
            <label for="Aperture">조리개</label>
            <input readonly type="text" id="" name="Aperture" value="<?= $lens['Aperture'] ?>"/>
        </p>
        
        <p>
            <label for="l_year">출시년도</label>
            <input readonly type="text" id="l_year" name="l_year" value="<?= $lens['l_year'] ?>"/>
        </p>
        
        <p>
            <label for="mount_name">마운트 타입</label>
            <input readonly type="text" id="mount_name" name="mount_name" value="<?= $lens['mount_name'] ?>"/>
        </p>
        
    
    </div>
    
<? include("footer.php") ?>
