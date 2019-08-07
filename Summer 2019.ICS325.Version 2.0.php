<?php

session_start();
?>
<html>
    <head>
        <title>Summer 2019.ICS325.Version 2.0</title>
    <style>

        #silc {
            width: 300;
            height: 85;
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
        #welcome {
            text-align: center;
        }
      
    </style>
	</head>
    <body>
  <?php
include "header.inc.php";
?>  
    <h1 id="welcome"><strong>Welcome to the QuizMaster website!</strong></h1>
<p>Each of the icons on the home page represents a topic. When you mouse over any of the icons, the name of the topic will be shown. Click on any of them to take a short quiz.</p>
<p><img src="Images/help/icons.jpg" alt="icons" width="600" height="400"><p>
<p>&nbsp;</p>
<p>Each topic has multiple questions, in&nbsp;a random order each time. After answering all questions on the quiz and hitting "submit", your score will shown!</p>
<p>You can click on the silc&nbsp;icon or the Home link to go back to the main page.</p>
</html>
