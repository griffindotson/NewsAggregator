<?php

//provide credentials to connect with the database
require "config/credentials.php";
//common classes and functions (IDB and getCategoryData)
require "config/common.php";
//Category class
require "category.php";

//get the Category data
$result = getCategoryData();

//check if there are rows 
if(mysqli_num_rows($result) > 0) {
    //fetch each row
    while($row = mysqli_fetch_assoc($result)) 
    {
        //create an array of category objects
        $myCategories[] = new Category($row['CategoryID'], $row['CategoryName'], $row['CategoryDescription']);     
    }
    
    //build the html categories display by looping through the categories array
    foreach($myCategories as $category) 
    {
        
        echo '<div>
                <h2>' . $category->categoryName . '</h2>
                <img src="' . $category->categoryImage . '" alt="">
                <p>' . $category->categoryDescription . '</p>
                <a href="' . $category->subcategoriesURL . '">Subcategories</a>
              </div>';
    }//end of foreach loop

}//end of if block
