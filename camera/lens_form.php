<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);
$mode = "입력";
$action = "lens_insert.php";

if (array_key_exists("lens_id", $_GET)) {
    $lens_id = $_GET["lens_id"];
    $query =  "select * from lens where lens_id = $lens_id";
    $res = mysqli_query($conn, $query);
    $lens = mysqli_fetch_array($res);
    if(!$lens) {
        msg("렌즈 정보가 존재하지 않습니다.");
    }
    $mode = "수정";
    $action = "lens_modify.php";
}

$lens_manufacturers = array();

$query = "select * from lens_manufacturer";
$res = mysqli_query($conn, $query);
while($row = mysqli_fetch_array($res)) {
    $lens_manufacturers[$row['LMFR_id']] = $row['LMFR_name'];
}

$mount = array();

$query = "select * from mount";
$res = mysqli_query($conn, $query);
while($row = mysqli_fetch_array($res)) {
    $mount[$row['mount_id']] = $row['mount_name'];
}
?>
    <div class="container">
        <form name="lens_form" action="<?=$action?>" method="post" class="fullwidth">
            <input type="hidden" name="lens_id" value="<?=$lens['lens_id']?>"/>
            <h3>상품 정보 <?=$mode?></h3>
            <p>
                <label for="LMFR_id">제조사</label>
                <select name="LMFR_id" id="LMFR_id">
                    <option value="-1">선택해 주십시오. </option>
                    <?
                        foreach($lens_manufacturers as $id => $name) {
                            if($id == $lens['LMFR_id']){
                                echo "<option value='{$id}' selected>{$name}</option>";
                            } else {
                                echo "<option value='{$id}'>{$name}</option>";
                            }
                        }
                    ?>
                </select>
            </p>
            <p>
                <label for="lens_name">렌즈 모델명</label>
                <input type="text" placeholder="렌즈 모델명 입력" id="lens_name" name="lens_name" value="<?=$lens['lens_name']?>"/>
            </p>
            <p>
                <label for="focal_range">초점거리 (mm)</label>
                <input type="text" placeholder="초점거리 입력 ex) 70-200" id="focal_range" name="focal_range" value="<?=$lens['focal_range']?>"/>
            </p>
            <p>
                <label for="Aperture">조리개</label>
                <input type="text" placeholder="조리개값 입력 ex) f/2.8" id="Aperture" name="Aperture" value="<?=$lens['Aperture']?>"/>
            </p>
            <p>
                <label for="l_year">출시년도</label>
                <input type="number" placeholder="정수로 입력 ex) 2019" id="l_year" name="l_year" value="<?=$lens['l_year']?>" />
            </p>
            <p>
                <label for="mount_id">렌즈 마운트</label>
                <select name="mount_id" id="mount_id">
                    <option value="-1">선택해 주십시오. </option>
                    <?
                        foreach($mount as $id => $name) {
                            if($id == $lens['mount_id']){
                                echo "<option value='{$id}' selected>{$name}</option>";
                            } else {
                                echo "<option value='{$id}'>{$name}</option>";
                            }
                        }
                    ?>
                </select>
            </p>
            <br>

            <p align="center"><button class="button primary large" onclick="javascript:return validate();"><?=$mode?></button></p>

            <script>
                function validate() {
                    if(document.getElementById("LMFR_id").value == "-1") {
                        alert ("제조사를 선택해 주십시오"); return false;
                    }
                    else if(document.getElementById("lens_name").value == "") {
                        alert ("모델명을 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("focal_range").value == "") {
                        alert ("초점거리를 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("Aperture").value == "") {
                        alert ("조리개값을 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("l_year").value == "") {
                        alert ("출시년도를 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("mount_id").value == "-1") {
                        alert ("렌즈 마운트를 선택해 주십시오"); return false;
                    }
                    return true;
                }
            </script>

        </form>
    </div>
<? include("footer.php") ?>
