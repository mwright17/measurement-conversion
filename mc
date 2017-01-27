<?php
function displayForm(){  
?>
	
	<h2> Length Converter Web Service</h2>
	<form action='client.php' method='GET'/>
	Length Value: <input name='length' /><br>
 From Length Unit:
	<select name='from'>
		<option value=""> Select a unit</option>
		<option value=Angstroms > Angstroms </option>
		<option value=Nanometers > Nanometers </option>
		<option value=Microinch > Microinch </option>
		<option value=Microns > Microns </option>
		<option value=Mils > Mils </option>
		<option value=Millimeters > Millimeters </option>
		<option value=Centimeters > Centimeters </option>
		<option value=Inches > Inches </option>
		<option value=Links > Links </option>
		<option value=Spans > Spans </option>
		<option value=Feet > Feet </option>
		<option value=Cubits > Cubits </option>
		<option value=Varas > Varas </option>
		<option value=Yards > Yards </option>
		<option value=Meters > Meters </option>
		<option value=Fathoms > Fathoms </option>
		<option value=Rods > Rods </option>
		<option value=Chains > Chains </option>
		<option value=Furlongs > Furlongs </option>
		<option value=Cablelengths > Cablelengths </option>
		<option value=Kilometers > Kilometers </option>
		<option value=Miles > Miles </option>
		<option value=Nauticalmile > Nautical mile </option>
		<option value=League > League </option>
		<option value=Nauticalleague > Nautical league </option>	
</select><br>

To Length Unit:
	<select name='to'>
		<option value=""> Select a unit</option>
		<option value=Angstroms > Angstroms </option>
		<option value=Nanometers > Nanometers </option>
		<option value=Microinch > Microinch </option>
		<option value=Microns > Microns </option>
		<option value=Mils > Mils </option>
		<option value=Millimeters > Millimeters </option>
		<option value=Centimeters > Centimeters </option>
		<option value=Inches > Inches </option>
		<option value=Links > Links </option>
		<option value=Spans > Spans </option>
		<option value=Feet > Feet </option>
		<option value=Cubits > Cubits </option>
		<option value=Varas > Varas </option>
		<option value=Yards > Yards </option>
		<option value=Meters > Meters </option>
		<option value=Fathoms > Fathoms </option>
		<option value=Rods > Rods </option>
		<option value=Chains > Chains </option>
		<option value=Furlongs > Furlongs </option>
		<option value=Cablelengths > Cablelengths </option>
		<option value=Kilometers > Kilometers </option>
		<option value=Miles > Miles </option>
		<option value=Nauticalmile > Nautical mile </option>
		<option value=League > League </option>
		<option value=Nauticalleague > Nautical league </option>	
</select><br>
<input type='Submit' name='submit' value='GO'/>
</form>
<?php

}
if(isset($_GET['submit'])){
	if(isset($_GET['length']) && !empty($_GET['from']) && !empty($_GET['to'])){
		//HOMEWORK Question 3 code modified with $_GET: 

	$param = array(
		"LengthValue"=> $_GET['length'],
		"fromLengthUnit"=> $_GET['from'],
		"toLengthUnit" => $_GET['to']
	);
	$client = new soapclient('http://www.webservicex.net/length.asmx?WSDL');
	$response = $client->ChangeLengthUnit($param);
	$result=$response->ChangeLengthUnitResult;
	displayForm();
	 echo 'The result is: '. $result;
		
	}else{
		echo "Please enter and select values.";
		displayForm();
	}
}else{
	displayForm();
}
?>

