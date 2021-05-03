<?php
define('BASE_DIR', $_SERVER['DOCUMENT_ROOT']);
session_start();

if (!isset($_SESSION['user_id'])) { exit(); }

$id = isset($_GET['link']) ? (int)$_GET['link'] : 0;

if ($id)
{
  function __autoload($name){ include(BASE_DIR."/classes/_class.".$name.".php");}

  $config = new config;

  $db = new db($config->HostDB, $config->UserDB, $config->PassDB, $config->BaseDB);
  $db->Query("set names cp1251;");

  $db->query("SELECT * FROM  db_baners  WHERE id = ".$id." LIMIT 1");

  if ($db->NumRows())
  {
    $result = $db->FetchArray();

    if ($result['type'] == 2 && $result['kolvo'] > 1)
    {
      $db->query("UPDATE db_baners SET `kolvo` = `kolvo` - 1 WHERE id = '".$id."'");
    }
    else
    {
      $db->query("DELETE FROM db_baners WHERE id = '".$id."'");
    }

    exit(header('Location: '.$result['url']));
  }
}
?>