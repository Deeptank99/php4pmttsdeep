<?php
class model{
public $con="";
public function __construct()
{
try
{
$this->con=new mysqli("localhost","root","","ecom-app");
//echo "successfully connected";
}
catch(Exception)
{
    die(mysqli_error($this->con));
}

}

}
?>