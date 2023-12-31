<!DOCTYPE html>

<head>
	<title>FLS</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../stylesheet.css">
</head>
<body>



<!--Schedule Header-->

    <br>
    <div class="flex justify-between">
        <a href ="../teams/index.php">Teams</a>
        <a href ="../index.php">Schedule</a>
    </div>
    <br>
    <div class="flex justify-between">
        <a href ="index.php">Standings</a> <b> Standings </b> <a href ="/schedule/region/{{today}}">Region Schedule</a>
    </div>

<br>




<!--Team List by Season-->

<?php
    $host_name = 'localhost';
    $database = 'fls';
    $user_name = 'root';
    $password = '';
    $dbh = null;

	
    try {
      $db = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
    } catch (PDOException $e) {
      echo "Error!:" . $e->getMessage() . "<br/>";
      die();
    }


	$sql = "SELECT urlName, formattedName FROM roster_teams WHERE season='Fall' ORDER BY formattedName";
	echo "<b>Fall</b><br>";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		printf("<form action='./standings.php' method='get'><input type ='hidden' id='sport' name='sport' value='%s'><input type='submit' class='sport' value='%s'></form>", $row->urlName, $row->formattedName);
	}
	
	$sql = "SELECT urlName, formattedName FROM roster_teams WHERE season='Winter' ORDER BY formattedName";
	echo "<b>Winter</b><br>";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		printf("<form action='./standings.php' method='get'><input type ='hidden' id='sport' name='sport' value='%s'><input type='submit' class='sport' value='%s'></form>", $row->urlName, $row->formattedName);
	}
	
	$sql = "SELECT urlName, formattedName FROM roster_teams WHERE season='Spring' ORDER BY formattedName";
	echo "<b>Spring</b><br>";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		printf("<form action='./standings.php' method='get'><input type ='hidden' id='sport' name='sport' value='%s'><input type='submit' class='sport' value='%s'></form>", $row->urlName, $row->formattedName);
	}
	
	
?>
</body>
