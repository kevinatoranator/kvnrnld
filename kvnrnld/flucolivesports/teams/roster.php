<!DOCTYPE html>

<head>
	<title>FLS</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../stylesheet.css">
</head>
<body>
<script>
	function rtoggle(id){
		var checkBox = document.getElementById(id);
		var displayr = document.getElementsByClassName(id)[0];
		if(checkBox.checked == false){
			displayr.style.display = "block";
		}else{
			displayr.style.display = "none";
		}
	}
</script>
<?php
    $host_name = 'localhost';
    $database = 'fls';
    $user_name = 'root';
    $password = '';
    $dbh = null;
	
	$roster = $_GET['sport'];
	$sql = "SELECT formattedName FROM roster_teams WHERE roster_teams.urlName='$roster'";
	
	 try {
      $db = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password);
    } catch (PDOException $e) {
      echo "Error!:" . $e->getMessage() . "<br/>";
      die();
    }
	$query = $db->prepare($sql);
	$query->execute();
	$i = $query->fetchObject();
	$sportFormat = $i->formattedName;
	
	$sql = "SELECT * FROM standings JOIN roster_teams ON standings.sport_id=roster_teams.id WHERE roster_teams.urlName='$roster' AND standings.season='2023'";
	$query = $db->prepare($sql);
	$query->execute();
	$i = $query->fetchObject();
	$wins = 0;
	$losses = 0;
	$ties = 0;
	if($i){
		$wins = $i->wins;
		$losses = $i->losses;
		$ties = $i->ties;
	}
?>


<!--Schedule Header-->

    <br>
    <div class="flex justify-between">
        <a href ="./index.php">Teams</a>
        <a href ="../index.php">Schedule</a>
    </div>
    <br>
    <div class="flex justify-between">
        <a href ="../standings/index.php">Standings</a>  <a href ="/schedule/region/{{today}}">Region Schedule</a>
    </div>
	<br>
	<div class="flex justify-between">
        <div></div><b> <?php echo '<u>' . $sportFormat . '</u>' ?></b><div></div>
    </div>
	<div class="flex justify-between">
        <div></div><b> <?php printf("%s-%s-%s", $wins, $losses, $ties); ?></b><div></div>
    </div>
	
	
<br>

<!-- Results -->
<br>
<b> RESULTS </b>

<br><br>

<input type="checkbox" name="g2023" id="g2023" onclick="rtoggle('g2023')"><label for="g2023"><b>2023 [+]</b></label>
<br><br>
<div class = "g2023">
<?php
	$gamedb = "";
	if($roster == "jvblax" or $roster == "blax"){
		$gamedb = "boyslacrosse";
	}else if($roster == "jvglax" or $roster == "glax"){
		$gamedb = "girlslacrosse";
	}else if($roster == "jvbsoccer" or $roster == "bsoccer" or $roster == "jvgsoccer" or $roster == "gsoccer"){
		$gamedb = "soccer";
	}else if($roster == "jvbaseball" or $roster == "baseball" or $roster == "jvsoftball" or $roster == "softball"){
		$gamedb = "batball";
	}else if($roster == "jvfhockey" or $roster == "fhockey"){
		$gamedb = "field_hockey";
	}else if($roster == "jvfootball" or $roster == "football"){
		$gamedb = "football";
	}else if($roster == "jvbbball" or $roster == "bbball" or $roster == "jvgbball" or $roster == "gbball"){
		$gamedb = "basketball";
	}else if($roster == "jvvball" or $roster == "vball"){
		$gamedb = "volleyball";
	}

	if($gamedb != ""){
		$sql = "SELECT s.game_date, home_total, away_total, r.urlName AS name, s.game_date, h.formal_name AS home, a.formal_name AS away FROM $gamedb INNER JOIN schedule AS s ON $gamedb.schedule_id=s.id INNER JOIN roster_teams AS r ON s.team_id=r.id JOIN roster_schools a ON s.away_id=a.id JOIN roster_schools h ON s.home_id=h.id JOIN roster_teams AS t ON s.team_id=t.id WHERE r.urlName='$roster' AND (h.formal_name='Fluvanna County' OR a.formal_name='Fluvanna County') AND s.season='2023'";
		$query = $db->prepare($sql);
		$query->execute();
		while($row = $query->fetchObject()){
			$hscore = $row->home_total;
			$ascore = $row->away_total;
			$sdate = date("D m/d", strtotime($row->game_date));
			if($hscore > $ascore){
				printf("%s <b>%s %s</b>-%s %s<br>", $sdate, $row->home, $hscore, $ascore, $row->away);
			}else if($hscore < $ascore){
				printf("%s %s %s-<b>%s %s</b><br>", $sdate, $row->home, $hscore, $ascore, $row->away);
			}else{
				printf("%s %s %s-%s %s<br>", $sdate, $row->home, $hscore, $ascore, $row->away);
			}
		}
	}
?>
</div>
<br><br>
<input type="checkbox" name="g2021" id="g2021" onclick="rtoggle('g2021')"><label for="g2021"><b>2021 [+]</b></label>
<br><br>
<div class = "g2021">
<?php

	if($roster == "jvblax" or $roster == "blax"){
		$gamedb = "games_boyslacrosse";
	}else if($roster == "jvglax" or $roster == "glax"){
		$gamedb = "games_girlslacrosse";
	}else if($roster == "jvbsoccer" or $roster == "bsoccer" or $roster == "jvgsoccer" or $roster == "gsoccer"){
		$gamedb = "games_soccer";
	}else if($roster == "jvbaseball" or $roster == "baseball" or $roster == "jvsoftball" or $roster == "softball"){
		$gamedb = "games_batball";
	}else if($roster == "jvfhockey" or $roster == "fhockey"){
		$gamedb = "games_fieldhockey";
	}else if($roster == "jvfootball" or $roster == "football"){
		$gamedb = "games_football";
	}else if($roster == "jvbbball" or $roster == "bbball" or $roster == "jvgbball" or $roster == "gbball"){
		$gamedb = "games_basketball";
	}else if($roster == "jvvball" or $roster == "vball"){
		$gamedb = "games_volleyball";
	}

	if($gamedb != ""){
		$sql = "SELECT s.game_date, totalScoreHome, totalScoreAway, r.urlName AS name, s.game_date, h.formal_name AS home, a.formal_name AS away FROM $gamedb g INNER JOIN schedule_schedule AS s ON g.schedGame_id=s.id INNER JOIN roster_teams AS r ON s.team_id=r.id JOIN roster_schools a ON s.awayTeam_id=a.id JOIN roster_schools h ON s.homeTeam_id=h.id JOIN roster_teams AS t ON s.team_id=t.id WHERE r.urlName='$roster' AND (h.formal_name='Fluvanna County' OR a.formal_name='Fluvanna County') AND s.season='2021' ORDER BY s.game_date asc";
		$query = $db->prepare($sql);
		$query->execute();
		while($row = $query->fetchObject()){
			$hscore = $row->totalScoreHome;
			$ascore = $row->totalScoreAway;
			$sdate = date("m/d", strtotime($row->game_date));
			if($hscore > $ascore){
				printf("%s <b>%s %s</b>-%s %s<br>", $sdate, $row->home, $row->totalScoreHome, $row->totalScoreAway, $row->away);
			}else if($hscore < $ascore){
				printf("%s %s %s-<b>%s %s</b><br>", $sdate, $row->home, $row->totalScoreHome, $row->totalScoreAway, $row->away);
			}else{
				printf("%s %s %s-%s %s<br>", $sdate, $row->home, $row->totalScoreHome, $row->totalScoreAway, $row->away);
			}
		}
	}
?>
</div>
<!--Roster Body-->

<br>
<b> ROSTERS </b>

<br><br>
<input type="checkbox" name="r2023" id="r2023" onclick="rtoggle('r2023')"><label for="r2023"><b>2023 [+]</b></label>
<br><br>
<div class = "r2023">
<?php
	$sql = "SELECT roster_player.name, roster_player.number, roster_player.season FROM roster_player INNER JOIN roster_teams ON roster_player.team_id=roster_teams.id WHERE roster_teams.urlName='$roster' AND roster_player.season='2023'";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		printf("%s | %s<br>", $row->number, $row->name);
	}
?>
</div>
<br><br>
<input type="checkbox" name="r2021" id="r2021" onclick="rtoggle('r2021')"><label for="r2021"><b>2021 [+]</b></label>
<br><br>
<div class = "r2021">
<?php
	$sql = "SELECT roster_player.name, roster_player.number, roster_player.season FROM roster_player INNER JOIN roster_teams ON roster_player.team_id=roster_teams.id WHERE roster_teams.urlName='$roster' AND roster_player.season='2021'";
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
		printf("%s | %s<br>", $row->number, $row->name);
	}
?>
</div>
</body>
