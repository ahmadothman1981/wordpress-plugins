<?php 

class GetPets
{
	function __construct()
	{
		 global $wpdb ; 
    $tablename = $wpdb->prefix.'pets';
    //$ourQuery = $wpdb->prepare("SELECT * FROM $tablename WHERE species = %s LIMIT 100",array($_GET['species']));

    $this->args = $this->getArgs();
    $this->placeholders = $this->createPlaceHolders();
    $query = "SELECT * FROM $tablename ";
    $query .= $this->createWhereText();
    $query .= " LIMIT 100";
    $this->pets = $wpdb->get_results($wpdb->prepare($query,$this->placeholders));

	}

	function getArgs()
	{$temp = array( 
	'favcolor' => isset($_GET['favcolor']) ? sanitize_text_field($_GET['favcolor']) : '',
 	'species' => isset($_GET['species']) ? sanitize_text_field($_GET['species']) : '',
	'minyear' => isset($_GET['minyear']) ? sanitize_text_field($_GET['minyear']) : '',
	'maxyear' => isset($_GET['maxyear']) ? sanitize_text_field($_GET['maxyear']) : '', 
	'minweight' => isset($_GET['minweight']) ? sanitize_text_field($_GET['minweight']) : '',
    'maxweight' => isset($_GET['maxweight']) ? sanitize_text_field($_GET['maxweight']) : '',
    'favhobby' => isset($_GET['favhobby']) ? sanitize_text_field($_GET['favhobby']) : '',
    'favfood' => isset($_GET['favfood']) ? sanitize_text_field($_GET['favfood']) : '' );

		return array_filter($temp, function($x){
			return $x;
		});
	}

	function createPlaceHolders()
	{
		return array_map(function($x){
				return $x;

		}, $this->args);
	}

	function createWhereText()
	{
		$whereQuery = "";
		if(count($this->args))
		{
			$whereQuery = "WHERE ";
		}
		$currentPosition = 0;
		foreach($this->args as $index => $item)
		{
			$whereQuery .= $this->specificQuery($index);
			if($currentPosition != count($this->args) -1 )
			{
				$whereQuery .= " AND ";
			}
			$currentPosition++;
		}

		return $whereQuery;
	}

	function specificQuery($index) {
    switch ($index) {
      case "minweight":
        return "petweight >= %d";
      case "maxweight":
        return "petweight <= %d";
      case "minyear":
        return "birthyear >= %d";
      case "maxyear":
        return "birthyear <= %d";
      default:
        return $index . " = %s";
    }
  }


}