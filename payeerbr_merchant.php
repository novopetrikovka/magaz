<?PHP
######################################
# ������ Fruit Farm
# ����� Rufus
# ICQ: 819-374
# Skype: Rufus272
######################################

# ������������� �������
function __autoload($name){ include("classes/_class.".$name.".php");}

# ����� ������� 
$config = new config;

# �������
$func = new func;

# ���� ������
$db = new db($config->HostDB, $config->UserDB, $config->PassDB, $config->BaseDB);





if (isset($_POST["m_operation_id"]) && isset($_POST["m_sign"]))
{
	$m_key = 'JKFBKJKXBDdjfbjkBJS';
	$arHash = array($_POST['m_operation_id'],
			$_POST['m_operation_ps'],
			$_POST['m_operation_date'],
			$_POST['m_operation_pay_date'],
			$_POST['m_shop'],
			$_POST['m_orderid'],
			$_POST['m_amount'],
			$_POST['m_curr'],
			$_POST['m_desc'],
			$_POST['m_status'],
			$m_key);
	
	$sign_hash = strtoupper(hash('sha256', implode(":", $arHash)));
	if ($_POST["m_sign"] == $sign_hash && $_POST['m_status'] == "success")
	{
		
	$db->Query("SELECT * FROM db_advpic WHERE id = '".intval($_POST['m_orderid'])."'");
	if($db->NumRows() == 0){ echo $_POST['m_orderid']."|error"; exit;}
	
	$payeer_row = $db->FetchArray();
	if($payeer_row["status"] > 0){ echo $_POST['m_orderid']."|success"; exit;}
	
	$db->Query("UPDATE db_advpic SET status = '1' WHERE id = '".intval($_POST['m_orderid'])."'");
	
//	$ik_payment_amount = $payeer_row["sum"];
//	$user_id = $payeer_row["user_id"];
   
	# ���������
//	$db->Query("SELECT * FROM db_config WHERE id = '1' LIMIT 1");
//	$sonfig_site = $db->FetchArray();
   

 //  $lsb = time();
   
//   $db->Query("UPDATE db_users_b SET money_b = money_b + '$serebro', e_t = e_t + '$add_tree', to_referer = to_referer + '$to_referer', last_sbor = '$lsb', oplata_scheta = oplata_scheta + '$ik_payment_amount' WHERE id = '{$user_id}'");
   
   
// $db->Query("UPDATE db_users_b SET money_b = money_b + $to_referer, from_referals = from_referals + '$to_referer' {$add_tree_referer} WHERE id = '$refid'");
   

   
   # ���������� ����������
//   $da = time();
//   $dd = $da + 60*60*24*15;
//   $db->Query("INSERT INTO db_insert_money (user, user_id, money, serebro, date_add, date_del) 
 //  VALUES ('$user_name','$user_id','$ik_payment_amount','$serebro','$da','$dd')");
   

#--------

	# ���������� ���������� �����
	
	echo $_POST['m_orderid']."|success";
	exit;
	
	
	}
	echo $_POST['m_orderid']."|error";
}
?>