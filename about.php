<?php
session_start();

require 'db_config.php';


?>

    <!DOCTYPE HTML>
<html lang="en">

<head>

<title>About</title>

<style>
    .image {
        width: 200px;
        height: 200px;
        padding: 20px 20px 20px 20px;
    }

    .table_2 {
        margin-left: auto;
        margin-right: auto;
    }

    #welcome {
        text-align: center;
        color: darkorange;
    }


    .directions {
        text-align: center;
        padding: 20px 40px 0px 40px;
        color: darkgreen;
    }

    .description {
        padding: 0px 40px 0px 0px;
        color: darkgoldenrod;
    }

    .Name {
        color: darkgreen;
    }
	header {
			text-align:center;
		}
	header a{
			display:inline-block;
			margin:10px;
		}	
</style>
	</head>
    <body>
	<script>
    //****************************************************
    //  This block helps to catch the syntax errors.
    //  These errors are reported back to the web page
    //****************************************************
    window.onerror = function (e) {
        document.write('There\'s an error: ', e, '</br>')
    };
</script>

<?php
include "header.inc.php";
?>          
 
    <h1 id="welcome">About Us</h1>
    <h3 class="directions">This quizmaster project was created in Summer 2019 school year at Metropolitan State University. We took a site and modified the code and created new code to create backend and frontend logic. We did this project to enhance our knowledge on html,javascript,php and css. You can read the bio of all the contributors of this project. <br> </h3>
    <h3 class="directions">TEAM BEARS ROAR.</h3>


<script>

    //Everyonce can fill in their own information:
    //Href is for more specific bio if they want to incorportate one.

    function Student(href, name, image_src, description) {
        this.href = href;
        this.name = name;
        this.image_src = image_src;
        this.description = description;

        this.toString = function () {
            document.write("<table class = 'table_2'>");
            document.write("<tr>");
            document.write("<td><a href ='" + this.href + "' title = '" + this.name + "'><image class = 'image' src='" + this.image_src + "'></image></a></td>");
            document.write("<td><h2 class = 'Name'>" + this.name + "</h2><h4 class = 'description'>" + this.description + "</h4></td>");
            document.write("</tr></table>");
        }
    }


/*  Alphabetical Listing of the names
  	1. Anjali
	2. Anjaneya
	3. Anu
	4. Arjun
	5. Ashlee
	6. Bela
	7. Bharat
	8. Deepta
	9. Ishana
	10. Lathika
	11. Pravallika
	12. Raj
	13. Ria
	14. Sahana
	15. Siva
	16. Smriti
	17. Vishnu

*/

var s1 = new Student(
      "",
      "Ryan Server",
      "Images/about_images/ryan_Server.jpg",
      "Ryan Server is a former information security analyst. Ryan is a IT undergraduate who is about to graduate. He enjoys programming, networking, learning new technologies, and gaming. His favorite game is Baldur's Gate. Favorite Programming language is javascript. Ryan enjoys spending time with his fiancee when school and work allow him to do so."
      );


    var s2 = new Student(
      "",
      "Elvir Rekic",
      "Images/about_images/elvir_rekic.jpg",
      "Elvir is a part-time Computer Information Technology student at Metropolitan State University. After graduating in 2008 as a Building Inspection technology major with a minor in Business he took a break and decided to attend school again. He is in the final few classes before graduating in fall 2019 with a bachelor’s degree in CIT. When he is not in school, he manages a prototype manufacturing facility or spends his time with his family. In his spare time, he enjoys family trips, building with his hands, playing sports, and learning. "
      );

      var s3 = new Student(
      "",
      "Samira Adam",
      "Images/about_images/samira_adam.jpeg",
      "Samira is currently a senior at Metro State University studying Computer Information Technology. She's currently taking Internet Application Development where she's studying PHP and Javascript."
      );

     
      




    function toStringi() {
        return s1.toString() + 
               s2.toString() + 
               s3.toString(); 
               
    }

    toStringi();
</script>
</body>
</html>