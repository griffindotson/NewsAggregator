<h1>Welcome to subcategories</h1>
<?php
require 'config/common.php';
require 'subcategory.php';

//grab the categoryID from the URL
$catID = (int) $_GET['id'];
$result = getSubcategoryData($catID);

//check if there are rows 
if(mysqli_num_rows($result) > 0) {
    //fetch each row
    while($row = mysqli_fetch_assoc($result)) 
    {
        //create an array of category objects
        $mySubcategories[] = new Subcategory($row['SubcategoryID'], $row['SubcategoryName'], 
        $row['SubcategoryDescription'], $row['SubcategoryRSS'], $row['CategoryID']);     
    }
    
    //build the html categories display by looping through the categories array
    foreach($mySubcategories as $subcategory) 
    {
        
        echo '<div>
                <h2>' . $subcategory->subcategoryName . '</h2>
                <img src="' . $subcategory->subcategoryImage . '" alt="">
                <p>' . $subcategory->subcategoryDescription . '</p>
                <a href="' . '../feed.php/?rss=' . $subcategory->subcategoryRSS . '">Read news</a>
              </div>';
    }//end of foreach loop

}//end of if block
else
{
    //what should happen if we don't have data in the db?
}

