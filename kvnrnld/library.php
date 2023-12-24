<!DOCTYPE html>
<html lang="en-US">
<head>
	<title>Kvn Rnld Library</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="library.css">
</head>

<body class = "dark-mode">
<h1 class="site-header">Library</h1>

<span class = "book">TEST</span>

<!-- Library Browser -->
<form name="Library" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
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
	$cLibrary = array();
	while($row = $query->fetchObject()){
		if($row->Availability==1){
			$cLibrary[] =  array($row->Title, $row->Author, $row->Language);
			/*printf("%s, %s", $row->Title, $row->Author);
			if($row->Language != "English"){
				printf(" <span>%s</span> <br>",$row->Language);
			}else{
				print("<br>");
			}*/
		}
	}
?>
</form>

<?php foreach ($cLibrary as $entry) : ?>
<div class="book">
<a href = "https://letmegooglethat.com/?q=<?php echo $entry[0]," ", $entry[1], " book"?>"><span><?php echo $entry[0]," | ", $entry[1] ?></span></a>
<?php if($entry[2] != "English") : ?>
<span class = "lang"><?php echo $entry[2]?></span>
<?php endif ?>
</div>
<br>
<?php endforeach ?>


<br>

</body>

&copy;<?php echo date("Y");?>
</html>