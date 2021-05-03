<?
//error_reporting(E_ALL);
//ini_set('display_errors',1);
//ini_set('error_reporting',2047);

# Ñòàğò ñåññèè
@session_start();

# Êîíñòàíòà äëÿ Include
define("CONST_RUFUS", true);

# Àâòîïîäãğóçêà êëàññîâ
function __autoload($name){ include("classes/_class.".$name.".php");}
# Êëàññ êîíôèãà 
$config = new config;
# Ïîäêëş÷åíèå ê áàçå äàííûõ
$db = new db($config->HostDB, $config->UserDB, $config->PassDB, $config->BaseDB);

$db->Query("SELECT (a_t + b_t + c_t + d_t + e_t) all_trees FROM db_users_b WHERE id = {$_SESSION["user_id"]}");
$data = $db->FetchArray();
if($data['all_trees'] == 0) $halava = true; else $halava = false; 


if($_SESSION['game_schet'] != 'in' && $_SESSION['game_schet'] != 'out') $_SESSION['game_schet'] = 'in';

function money(){
	global $db;
	$user_id = $_SESSION["user_id"];
	$db->Query("SELECT money_b, money_p FROM db_users_b WHERE id = '$user_id'");
	$data = $db->FetchArray();
	//return intval($data['money_b']);
	if($_SESSION['game_schet'] == 'in')
		return floatval($data['money_b']);
	if($_SESSION['game_schet'] == 'out')
		return floatval($data['money_p']);
}
function game(){
	$rs1 = rand(0,20);
	$rs2 = rand(0,20);
	$rs3 = rand(0,20);
	$rs4 = rand(0,20);
	$rs5 = rand(0,20);
	
	if(($rs5+$rs4+$rs3+$rs2+$rs1) >= 55)  return true; else return false;
}
function ok_money($money,$bet=0,$stavka=0,$ok=false){
	global $db;
	$money = floatval($money);
	$user_id = $_SESSION["user_id"];
	if($_SESSION['game_schet'] == 'in')
		$db->Query("UPDATE db_users_b SET money_b = {$money} WHERE id = '$user_id'");
	if($_SESSION['game_schet'] == 'out')
		$db->Query("UPDATE db_users_b SET money_p = {$money} WHERE id = '$user_id'");
	if($ok){
		$db->Query("SELECT user FROM db_users_a WHERE id = '$user_id'");
		$user_name = $db->FetchArray();
		$user_name = $user_name['user'];
		$db->Query("INSERT INTO db_games_coinflip SET 
			date='".time()."',
			sum = {$bet},
			user_id = {$user_id},
			user_name = '{$user_name}',
			stavka = '{$stavka}'
		");
	}	
}


$ba = array();
# Ñòàâêà 100
$ba[1][0] = 100;
$ba[1][1] = 200;
# Ñòàâêà 500
$ba[2][0] = 500;
$ba[2][1] = 1000;
# Ñòàâêà 1000
$ba[3][0] = 1000;
$ba[3][1] = 2000;

//if(isset($_GET['stop'])) $_SESSION['kamikadze']['start'] = false;
if(isset($_SESSION["user_id"]) && !$halava){
    if(!empty($_GET)){	
	if(isset($_GET['bet'])) $bet = intval($_GET['bet']); else $bet = 0;
	if(isset($_GET['r']))   $r   = intval($_GET['r']);   else $r   = 0;
	if($bet >= 1 && $bet <= 3 && money() >= $ba[$bet][0]){
		$_SESSION['coinflip']['start'] = true;
		if(isset($_SESSION['coinflip']['start'])){
			if(!isset($_SESSION['coinflip']['step'])){
				$_SESSION['coinflip']['step']   = 1;
				$_SESSION['coinflip']['money']  = intval(money());
				$_SESSION['coinflip']['money'] -= $ba[$bet][0];
				$_SESSION['coinflip']['stavka'] = $ba[$bet][0];
				$_SESSION['coinflip']['chet'] = $_SESSION['game_schet'];
			}
			if($_SESSION['coinflip']['start'] == true){
				if(game($_GET['r'])){
					$_SESSION['coinflip']['money'] += $ba[$bet][1];
					ok_money($_SESSION['coinflip']['money'],$ba[$bet][1],$_SESSION['coinflip']['stavka'],true);
					echo 'WIN!!'.$_SESSION['coinflip']['money'];
					
					$_SESSION['coinflip']['step']++;
				}else{
					ok_money($_SESSION['coinflip']['money']);
					echo 'LOSE!!'.$_SESSION['coinflip']['money'];
				}
				unset($_SESSION['coinflip']);
			}else{
				echo 'error session';
			}
		}else{
			echo 'game stop';
		}
	}else{
		echo 'error bet';
	}
   }else{
   	echo money();
   }	
}else{
	echo 'error autorization';
}

?>