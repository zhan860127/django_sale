<?php
// Your code here!
function generate($arParameters = array(),$HashKey = '' ,$HashIV = '',$encType = 0) {
 $sMacValue = '' ;
 if(isset($arParameters))
 {
 // arParameters 為傳出的參數，並且做字母 A-Z 排序
 unset($arParameters['CheckMacValue']);
 uksort($arParameters, array('ECPay_CheckMacValue','merchantSort'));
 // 組合字串
 $sMacValue = 'HashKey=' . $HashKey ;
 foreach($arParameters as $key => $value)
 {
 $sMacValue .= '&' . $key . '=' . $value ;
 }
 $sMacValue .= '&HashIV=' . $HashIV ;
 // URL Encode 編碼
 $sMacValue = urlencode($sMacValue);
 // 轉成小寫
 $sMacValue = strtolower($sMacValue);
 // 取代為與 dotNet 相符的字元
 $sMacValue = str_replace('%2d', '-', $sMacValue);
 $sMacValue = str_replace('%5f', '_', $sMacValue);
 $sMacValue = str_replace('%2e', '.', $sMacValue);
 $sMacValue = str_replace('%21', '!', $sMacValue);
 $sMacValue = str_replace('%2a', '*', $sMacValue);
 $sMacValue = str_replace('%28', '(', $sMacValue);
 $sMacValue = str_replace('%29', ')', $sMacValue);
 // 編碼
 switch ($encType) {
 case ECPay_EncryptType::ENC_SHA256:
 // SHA256 編碼
 $sMacValue = hash('sha256', $sMacValue);
 break;
 case ECPay_EncryptType::ENC_MD5:
 default:
 // MD5 編碼
  $sMacValue = md5($sMacValue);
 }
 $sMacValue = strtoupper($sMacValue);
 }
 return $sMacValue ;
 }
$i=generate("hashkey%3d5294y06jbispm5x9%26choosepayment%3dall%26encrypttype%3d1%26itemname%3d%e6%89%8b%e6%a9%9f%2020%20%e5%85%83%20x2%23%e9%9a%a8%e8%ba%ab%e7%a2%9f%e2%86%b560%20%e5%85%83%20x1%26merchantid%3d2000132%26merchanttradedate%3d2012%2f03%2f21%2015%3d40%3d18%e2%86%b5%26merchanttradeno%3decpay1234%26paymenttype%3daio%26returnurl%3dhttp%3d%2f%2fyour.web.site%2frecerive.php%26totalamount%3d5000%26tradedesc%3decpay%20%e5%95%86%e5%9f%8e%e8%b3%bc%e7%89%a9%26hashiv%3dv77hokgq4kwxnnis%0d%0a
","5294y06JbISpM5x9","v77hoKGq4kWxNNIS")
echo $i
?>
