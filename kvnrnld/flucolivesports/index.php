<!DOCTYPE html>

<head>
	<title>FLS</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="stylesheet.css">
</head>
<body>
<?php 
$date = date("Y-m-d", strtotime("today" ));
$fdate = date("l, F d", strtotime("today")); ?>


<!--Schedule Header-->

    <br>
    <div class="flex justify-between">
        <a href ="./teams/index.php">Teams</a>
        <a href ="/schedule/">Schedule</a>
    </div>
    <br>
    <div class="flex justify-between">
        <a href ="./standings/index.php">Standings</a><a href ="/schedule/region/{{today}}">Region Schedule</a>
    </div>

<br>
<div class="flex justify-between">
<form action='./schedule/schedule.php' method='get'><input type ='hidden' id='fdate' name='fdate' value='<?php echo date("Y-m-d", strtotime("yesterday")); ?>'><input type='submit' class='schedule' value='< <?php echo date("M. d", strtotime("-1 days", strtotime($date)))?>'></form> <b><?php echo $fdate ?></b> <form action='./schedule/schedule.php' method='get'><input type ='hidden' id='fdate' name='fdate' value='<?php echo date("Y-m-d", strtotime("tomorrow")); ?>'><input type='submit' class='schedule' value='<?php echo date("M. d", strtotime("+1 days", strtotime($date)))?> >'></form> 
</div>
<br>


<!--Schedule Body-->

<?php
    $host_name = 'localhost';
    $database = 'fls';
    $user_name = 'root';
    $password = '';
    $dbh = null;

	$sql = "SELECT s.time, s.game_date, h.short_name AS home, a.short_name AS away, s.location, s.home_id, s.away_id, s.team_id, t.formattedName FROM schedule AS s JOIN roster_schools a ON s.away_id=a.id JOIN roster_schools h ON s.home_id=h.id JOIN roster_teams AS t ON s.team_id=t.id";

    try {
      $db = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
    } catch (PDOException $e) {
      echo "Error!:" . $e->getMessage() . "<br/>";
      die();
    }
	
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		if($row->game_date == $date){
			printf("<div class='text_center'>v------------------------v<br>");
			printf("<b>%s</b><br>", $row->formattedName);
			printf("    %s %s vs. %s    <br>", $row->time, $row->home, $row->away);
			printf("^------------------------^</div><br><br>");
		}
	}
	
	
?>
</body>
