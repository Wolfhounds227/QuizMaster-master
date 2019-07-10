<?php
$page_title = "Questions";

require 'db_config.php';

$sql = 'select * from topics';

$result = run_sql($sql);

// print_r($result); <-- use for debugging and test DB fetching



?>

<!DOCTYPE HTML>
<html>
<head>
<title><?php echo htmlspecialchars($page_title);?></title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

</head>

<style>
.input-group {
	margin: 10px 0px 10px 0px;
	width: 93%;
	box-sizing:border-box;
	height:auto;

	
}
.input-group label {
	display: block;
	text-align: left;
	margin: 3px;
	word-wrap: break;
	height:auto;
	box-sizing:border-box;
	
	
}
.input-group input {
	height: 30px;
	width: 93%;
	padding: 5px 10px;
	font-size: 16px;
	
	border: 1px solid gray;
	height:auto;
	box-sizing:border-box;
	
}
</style>

<body>
<form method='POST' action='create_question.php'>
<select name='topic'>
<?php
while($row = $result->fetch_assoc()){
		echo "<option value='".$row['id']."'>".$row['topic'].'</option>';
}
	
?>
</select>
<div class="input-group">
<label>Question: <input name="question"> </label>
</div>
<div class="input-group">
<label>Choice a: <input name="choice_1"> </label>
<label>Choice b: <input name="choice_2"> </label>
<label>Choice c: <input name="choice_3"> </label>
<label>Choice d: <input name="choice_4"> </label>
</div><br>
<div class="input-group">
<label>Answer: <input name="answer"> </label>
<label>Image Name: <input name="image_name"> </label>
</div>
<div class="input-group">
<input type='submit' value='submit'>
</div>
</form>
</body>