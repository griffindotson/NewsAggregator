<?php
session_start();
$_SESSION['feeds'] = array();
date_default_timezone_set('America/Los_Angeles');
?>

<!doctype html>
<html>
    
<head>
    <meta charset="UTF-8">
    <title>Feeds List</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="../css/style.css" type="text/css" rel="stylesheet">
</head>

<body>
<header>
   
<?php
    
  $request = $_GET['rss'];
  $time = date("h:i:sa");
    
  if (array_key_exists($request,$_SESSION['feeds']) == FALSE 
      || strtotime($time) - strtotime($_SESSION['feeds'][$request][1]) >=  ){//!!!! ADD Comparative Calculation !!!!
      $response = file_get_contents($request); 
      $xml = simplexml_load_string($response);
      $_SESSION['feeds'][$request] = array($xml,$time);
  }
  
  $page = $_SESSION['feeds'][$request][0];
  
    
  echo '<h1>' . $page->channel->title . '</h1>
        </header>';
  

  //the images are not showing because they are under a namespace "media".
  //get an array of namespace prefixes with their associated URIs.
  //read more@: https://www.sitepoint.com/parsing-xml-with-simplexml/
  $ns = $page->getNamespaces(true);
  foreach($page->channel->item as $story)
  {
    $thumbnail = $story->children($ns['media']);
    //display only stories that have thumbnail images
    if($thumbnail) {
      echo '<div><h3><a href="' . $story->link . '">' . $story->title . '</a></h3><br />';
      echo '<img src=' .$thumbnail->thumbnail->attributes()->url . '></img>'; 
      echo '<p>' . $story->description . '</p><br /></div>';
    }    
  }
?>
