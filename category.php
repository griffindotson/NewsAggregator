<?php

class Category {
public $categoryID = 0;
public $categoryName = '';
public $categoryImage = '';
public $categoryDescription = '';
public $subcategoriesURL = '';

//constructor
public function __construct($id, $name, $description) {
$this->categoryID = $id;
$this->categoryName = $name;
$this->categoryDescription = $description;
$this->setProperties($this->categoryName);
}

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
    }
}

}