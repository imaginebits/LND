<?php

echo "<p>Los valores enviados en el método post: </p>";
foreach($_POST as $name => $value) {
  echo $name."= ".$value."<br/>";
  # code...
}?>


