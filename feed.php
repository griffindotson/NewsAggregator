<?php

  $request = $_GET['rss'];
  $response = file_get_contents($request);
  $xml = simplexml_load_string($response);
  print '<h1>' . $xml->channel->title . '</h1>';

  //the images are not showing because they are under a namespace "media".
  //get an array of namespace prefixes with their associated URIs.
  //read more@: https://www.sitepoint.com/parsing-xml-with-simplexml/
  $ns = $xml->getNamespaces(true);
  foreach($xml->channel->item as $story)
  {
    $thumbnail = $story->children($ns['media']);
    //display only stories that have thumbnail images
    if($thumbnail) {
      echo '<a href="' . $story->link . '">' . $story->title . '</a><br />';
      echo '<img src=' .$thumbnail->thumbnail->attributes()->url . '></img>'; 
      echo '<p>' . $story->description . '</p><br /><br />';
    }    
  }
?>