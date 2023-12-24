<!DOCTYPE html>

<head>
	<title>FLS</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="stylesheet.css">
</head>
<body>



<!--Schedule Header-->

    <br>
    <div class="flex justify-between">
        <a href ="/roster/">Rosters</a>
        <a href ="/schedule/">Schedule</a>
    </div>
    <br>
    <div class="flex justify-between">
        <a href ="/standings/">Standings</a><a href ="/schedule/region/{{today}}">Region Schedule</a>
    </div>

<br>
<div class="flex justify-between">
<a href ="/schedule/{{pd}}">Previous Day</a> <b id ="cdate"></b> <a href ="/schedule/{{nd}}">Next Day</a>
</div>
<br>

<script>
const d = new Date();
let day = d.getDate();
let month = d.getMonth();
let date = d.getDate();
let text = d.toDateString();


document.getElementById("cdate").innerHTML = text;
</script>

<!--Schedule Body-->

<?php
    $host_name = 'localhost';
    $database = 'fls';
    $user_name = 'root';
    $password = 'P1ckl3-p@l';
    $dbh = null;

	$sql = "SELECT game_date, time, location FROM schedule";

    try {
      $db = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
    } catch (PDOException $e) {
      echo "Error!:" . $e->getMessage() . "<br/>";
      die();
    }
	
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
	 printf("%s @ %s <br>", $row->time, $row->location);
	}
	
	
	
	$sql = "SELECT formattedName FROM roster_teams";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
	 printf("%s <br>", $row->formattedName);
	}
?>
</body>