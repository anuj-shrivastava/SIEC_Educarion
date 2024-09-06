<?php
class User {
    public $name;

    public function __construct($name = "Default Name") {
        $this->name = $name;
    }

    public function printName() {
        echo "User's name: " . $this->name . "<br>";
    }
}

$user1 = new User();
$user1->printName();

$user2 = new User("Alice");
$user2->printName();
?>