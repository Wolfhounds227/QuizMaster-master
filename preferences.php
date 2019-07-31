<?php
	require 'db_config.php';
	session_start();
	if(isset($_POST['topics']) && isset($_POST['questions_to_show'])){
		$sql = "update preferences set value=".$_POST['topics']." where name='NO_OF_TOPICS_PER_ROW';";
		run_sql($sql);
		$sql = "update preferences set value=".$_POST['questions_to_show']." where name='NO_OF_QUESTIONS_TO_SHOW';";
		run_sql($sql);
	}
	$sql = "select * from preferences";
	$result = run_sql($sql); 
	$num_topics = $result->fetch_assoc()['value']; 
	$num_of_questions = $result->fetch_assoc()['value'];
	$sql2 = "select count(id) from topics;";
	$result2 = run_sql($sql2); 
	$max_topics = $result2->fetch_assoc()['count(id)'];
	$sql3 = "select count(id) from questions;";
	$result3 = run_sql($sql3); 
	$max_questions = $result3->fetch_assoc()['count(id)'];
?>

<!DOCTYPE>
<html>
<head>
	<title>QuizMaster Login Page</title>
    <style>
        .image {
            width: 100px;
            height: 100px;
            padding: 20px 20px 20px 20px;
            transition: transform .2s;
        }
        .image:hover {
            transform: scale(1.2)
        }
        #table_1 {
            border-spacing: 300px 0px;
        }
        #table_2 {
            margin-left: auto;
            margin-right: auto;
        }
        #silc {
            width: 300;
            height: 85;
        }
        #welcome {
            text-align: center;
        }
        #directions {
            text-align: center;
        }
        #title {    
            color: black;        
            text-align: center;
        }
        a:visited, a:link, a:active {
            text-decoration: none;
        }
		header {
			text-align:center;
		}
		header a{
			display:inline-block;
			margin:10px;
		}
		input {
			display:block;
			text-align:center;
		}
	</style>
</head>

<body>
		<?php
		include "header.inc.php";
		?>	
	<main>
		<form action="" method="POST">	
		<label>Number of topics per row: <input name="topics" type="number" value="<?php echo $num_topics;?>" min="0" max="<?php echo $max_topics;?>"/></label>
		<label>Number of questions to show: <input name="questions_to_show" type="number" value="<?php echo $num_of_questions;?>" min="0" max="<?php echo $max_questions;?>"/></label>
		<input type="submit" value="submit"/>
		</form>
		<?php
			if(isset($error)){
				echo $error;
			}
		?>
	</main>	
</body>

</html>		