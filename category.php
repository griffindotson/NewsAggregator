<?php

class Category {
    public $categoryID = 0;
    public $categoryName = '';
    public $categoryImage = '';
    public $categoryDescription = '';
    public $subcategoriesURL = '';

<<<<<<< HEAD
//constructor
public function __construct($id, $name, $description) {
$this->categoryID = $id;
$this->categoryName = $name;
$this->categoryDescription = $description;
$this->subcategoriesURL = "subcategories_list.php/?id=$this->categoryID";
$this->setImages($this->categoryName);

}

private function setImages($name) {
    switch($name) {
        case "Health":
        $this->categoryImage = "images/health.jpeg";
        break;
        case "Technology":
        $this->categoryImage = "images/technology.jpeg";
        break;
        case "Environment":
        $this->categoryImage = "images/environment.jpeg";
        break;
    }
}
=======
    //constructor
    public function __construct($id, $name, $description) {
    $this->categoryID = $id;
    $this->categoryName = $name;
    $this->categoryDescription = $description;
    $this->setProperties($this->categoryName);
    }//end constructor

    private function setProperties($name) {
        switch($name) {
            case "Health":
            $this->categoryImage = "images/health.jpg";
            $this->subcategoriesURL = "";
            break;
            case "Technology":
            $this->categoryImage = "";
            $this->subcategoriesURL = "";
            break;
            case "Environment":
            $this->categoryImage = "";
            $this->subcategoriesURL = "";
            break;
        }//end switch
    }//end setProperties
>>>>>>> 1eb587bba95e3072e224ce84fb8e0c151375ab74

}end class