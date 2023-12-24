<!DOCTYPE html>
<html lang="en-US">
<head>
	<title>Kvn Rnld</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="stylesheet.css">
</head>

<body>
<h1 class="site-header">Kvn Rnld</h1>

<!-- Navbar-->
<div class = "navbar">
	<a href="index.php">Home</a>
	<a href="crosswords.php">Crosswords</a>
	<a href="#future">Programming</a>
	<div class="dropdown">
		<button class="dropbtn">Teaching</button>
		<div class="dropdown-content">
			<a href="english.php">English</a>
			<a href="#">Computer Science</a>
			<a href="https://www.twitch.tv/flucoesports">eSports</a>
			<a href="#">Japanese</a>
		</div>
	</div>
	<a href ="#future">Collections</a>
	<a href ="flucolivesports/index.php">FlucoLiveSports</a>
</div>


<!-- Library Browser -->
<form name="Library" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<b>Library</b>
<?php
$sql = "SELECT Title, Author, Language, Availability FROM Books ";
$buttonTitle = "Sort by Author";
$value = 0;
$cSort = "None";

if(!empty($_POST)){
	switch($_POST['sortTA']){
		case 0:
			$value = 1;
			$sql .= "ORDER BY Author";
			$buttonTitle = "Sort by Title";
			$cSort = "Author";
			break;
		case 1:
			$value = 2;
			$sql .= "ORDER BY Title";
			$buttonTitle = "Unsorted";
			$cSort = "Title";
			break;
		default:
			$cSort = "None";
			break;
	}
}
?>
<button type="submit" name="sortTA" class="button" value="<?php echo $value; ?>"> <?php echo $buttonTitle?> </button>
<p>Sorted by: <?php echo $cSort; ?></p>
<br>
<?php
	$db = new PDO('sqlite:library.db');
	
	$query = $db->prepare($sql);
	$query->execute();
	while($row = $query->fetchObject()){
	 printf("%s , %s | %s <br>", $row->Title, $row->Author, $row->Language);
	}
?>
</form>



<br>

</body>

&copy;<?php echo date("Y");?>
</html>