<?
	$value = $_POST['search_keyword'];
	if($_POST["select"] == 0){
		echo "<body onload='document.form1.submit();'>\n";
		echo "<form name='form1' method='post' action='camera_list.php'>";
			echo "<input type='hidden' name='search_keyword' value='$value'>";
		echo "</form>";
		echo "</body>";
	}
	else{
		echo "<body onload='document.form1.submit();'>\n";
		echo "<form name='form1' method='post' action='lens_list.php'>";
			echo "<input type='hidden' name='search_keyword' value='$value'>";
		echo "</form>";
		echo "</body>";
	}
?>