<!DOCTYPE html>
<html lang='ko'>
<head>
    <title>K-Camera</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<form action="search.php" method="post">
    <div class='navbar fixed'>
        <div class='container'>
            <a class='pull-left title' href="index.php">K-camera</a>
            <ul class='pull-right'>
            	
                <li><a href='camera_list.php'>카메라 목록</a></li>
                <li><a href='camera_form.php'>카메라 등록</a></li>
                <li><a href='CMFR_list.php'>카메라 제조사</a></li>
                <li><a href='lens_list.php'>렌즈 목록</a></li>
                <li><a href='lens_form.php'>렌즈 등록</a></li>
                <li><a href='LMFR_list.php'>렌즈 제조사</a></li>
                <li><a href='mount_list.php'>렌즈 마운트 목록</a></li>
                <br>
                <div  class='search_box' style="border:2px solid; padding:3px; width: 250px; float:right; margin-top: 10px;margin-right: 10px;color: white;">
            	<li>
            		<select name="select">
						<option value="0">카메라</option>
						<option value="1">렌즈</option>
					</select>
            	</li>
                <li>
                    <input type="text" name="search_keyword" placeholder="검색">
                </li>
                </div>
            </ul>
        </div>
    </div>
</form>
