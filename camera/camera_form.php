<?
include "header.php";
include "config.php";    //데이터베이스 연결 설정파일
include "util.php";      //유틸 함수

$conn = dbconnect($host, $dbid, $dbpass, $dbname);
$mode = "입력";
$action = "camera_insert.php";

if (array_key_exists("camera_id", $_GET)) {
    $camera_id = $_GET["camera_id"];
    $query =  "select * from camera where camera_id = $camera_id";
    $res = mysqli_query($conn, $query);
    $camera = mysqli_fetch_array($res);
    if(!$camera) {
        msg("카메라 정보가 존재하지 않습니다.");
    }
    $mode = "수정";
    $action = "camera_modify.php";
}

$camera_manufacturers = array();

$query = "select * from camera_manufacturer";
$res = mysqli_query($conn, $query);
while($row = mysqli_fetch_array($res)) {
    $camera_manufacturers[$row['CMFR_id']] = $row['CMFR_name'];
}

$mount = array();

$query = "select * from mount";
$res = mysqli_query($conn, $query);
while($row = mysqli_fetch_array($res)) {
    $mount[$row['mount_id']] = $row['mount_name'];
}
?>
    <div class="container">
        <form name="camera_form" action="<?=$action?>" method="post" class="fullwidth">
            <input type="hidden" name="camera_id" value="<?=$camera['camera_id']?>"/>
            <h3>상품 정보 <?=$mode?></h3>
            <p>
                <label for="CMFR_id">제조사</label>
                <select name="CMFR_id" id="CMFR_id">
                    <option value="-1">선택해 주십시오. </option>
                    <?
                        foreach($camera_manufacturers as $id => $name) {
                            if($id == $camera['CMFR_id']){
                                echo "<option value='{$id}' selected>{$name}</option>";
                            } else {
                                echo "<option value='{$id}'>{$name}</option>";
                            }
                        }
                    ?>
                </select>
            </p>
            <p>
                <label for="camera_name">카메라 모델명</label>
                <input type="text" placeholder="카메라 모델명 입력" id="camera_name" name="camera_name" value="<?=$camera['camera_name']?>"/>
            </p>
            <p>
                <label for="sensor_size">센서크기 (mm)</label>
                <input type="text" placeholder="센서크기 입력 ex) 24 x 36" id="sensor_size" name="sensor_size" value="<?=$camera['sensor_size']?>"/>
            </p>
            <p>
                <label for="resolution">해상도</label>
                <input type="text" placeholder="이미지 해상도 입력 ex) 6880 x 4544" id="resolution" name="resolution" value="<?=$camera['resolution']?>"/>
            </p>
            <p>
                <label for="c_year">출시년도</label>
                <input type="number" placeholder="정수로 입력 ex) 2019" id="c_year" name="c_year" value="<?=$camera['c_year']?>" />
            </p>
            <p>
                <label for="mount_id">렌즈 마운트</label>
                <select name="mount_id" id="mount_id">
                    <option value="-1">선택해 주십시오. </option>
                    <?
                        foreach($mount as $id => $name) {
                            if($id == $camera['mount_id']){
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
                    if(document.getElementById("CMFR_id").value == "-1") {
                        alert ("제조사를 선택해 주십시오"); return false;
                    }
                    else if(document.getElementById("camera_name").value == "") {
                        alert ("모델명을 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("sensor_size").value == "") {
                        alert ("센서크기를 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("resolution").value == "") {
                        alert ("해상도를 입력해 주십시오"); return false;
                    }
                    else if(document.getElementById("c_year").value == "") {
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