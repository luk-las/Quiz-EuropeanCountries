<!DOCTYPE HTML>
<html lang = "pl">
<head>
		<meta charset="utf-8"/>
		<title>Jak znasz Europę?</title>
		<link href="https://fonts.googleapis.com/css?family=Muli:400,700" rel="stylesheet"> 
		<link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
	<div id="container">
		<div id="result">Twój wynik: 0 / 0</div>
		<div id="question"></div>		
		<div id="answer">	</div>
		<div id="continuation"></div>		
		<div id="countriesSet"></div>
		<div id="reset" onclick="location.reload()">Zagraj od nowa</div>
	</div>
	
<script>

 <?php	
	$mysqli=new mysqli('localhost','_____','_____','europeancountries');
	$mysqli->set_charset("utf8");
	
	if($mysqli->connect_error){
		printf("can not connect database %s\n",$mysqli->connect_error);
		exit();
	}

	$query="SELECT * FROM questions";		 
	$read=$mysqli->query($query);		
?> 

var array = [];
for(var i=0; i<46; i++){
	array[i] = []
}

var i = 0;
<?php while ( $row=$read->fetch_assoc()){  ?>  
	array[i][0] = "<?php echo $row['id']; ?>";
	array[i][1] = "<?php echo $row['Country']; ?>";
	array[i][2] = "<?php echo $row['Q1']; ?>";
	array[i][3] = "<?php echo $row['Q2']; ?>";
	array[i][4] = "<?php echo $row['Q3']; ?>";
	i++;
<?php }?> 

var number = 0;
var numberQuestion = 0;
var textQuestion = "";

var answers = 0;
var goodAnswers = 0;

var activeArea = true;

function showQuestion() 
{
	document.getElementById("answer").innerHTML = "";	
	document.getElementById("continuation").innerHTML = "";	
	number = Math.floor(Math.random()*array.length);
	numberQuestion = Math.floor(Math.random()*3) + 2;
	textQuestion = array[number][numberQuestion];	
	document.getElementById("question").innerHTML = textQuestion;
	activeArea = true;
}

window.onload = start;
function start()
{
		
	var showCountries = "";
	
	for(i=0; i<array.length; i++)
	{
		var country = "country" + i;
		showCountries = showCountries + '<div class = "countries" onclick="check('+i+')" id="' + country +'"> '+array[i][1]+'</div>';
	}
	
	showQuestion();	
	document.getElementById("countriesSet").innerHTML =  showCountries ;
}

function check(nb)
{
	
	if(activeArea)
	{	
		answers++;	
		var handle = "country" + array[number][0];	
		document.getElementById("continuation").innerHTML= '<span id="nQ" onclick="showQuestion()">Kolejne pytanie</span>';
		
		if(nb == array[number][0]){
			goodAnswers++;
			document.getElementById("answer").style.color = "#00C000";
			document.getElementById("answer").innerHTML = "Dobra odpowiedź!";		
			document.getElementById(handle).style.background = "#558855";
			document.getElementById(handle).style.color = "#00C000";		
			document.getElementById(handle).style.border = "3px solid #00C000" ;	
			document.getElementById(handle).style.cursor = "default" ;
			document.getElementById(handle).setAttribute("onclick",";");
			document.getElementById(handle).style.transform = "scale(1)";
		}
		else{
			document.getElementById("answer").style.color = "indianred";
			document.getElementById("answer").innerHTML = "Źle! Prawidłowa odpowiedź to " + array[number][1] + ".";
			document.getElementById(handle).style.background = "#774444";		
			document.getElementById(handle).style.color = "indianred";		
			document.getElementById(handle).style.border = "3px solid #C00000" ;		
			document.getElementById(handle).style.cursor = "default" ;		
			document.getElementById(handle).setAttribute("onclick",";");
			document.getElementById(handle).style.transform = "scale(1)";	
		}		
			
		document.getElementById("result").innerHTML ="Twój wynik: " + goodAnswers + " / " +answers;
		
		activeArea = false;
		
		array.splice(number, 1);

		if(answers == 46){
			document.getElementById("continuation").innerHTML = "Koniec! Dzięki za grę!";
			document.getElementById("continuation").style.cursor = "default";	
			document.getElementById("continuation").style.color = "black";
			document.getElementById("continuation").style.textDecoration = "none";
			document.getElementById("continuation").setAttribute("onclick",";");
		}
		else
			document.getElementById("continuation").innerHTML = '<span onclick="showQuestion()">Kolejne pytanie</span>';			
	}
	
}
</script>
</body>	
</html>

