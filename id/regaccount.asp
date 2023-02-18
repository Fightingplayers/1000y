<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>游戏账号管理中心</TITLE>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
<link href="logimg/css.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<script language="javascript">
function isContinuous(inputStr) {
	inputStr = inputStr.toLowerCase();
	var digital = "01234567890";
	var letter = "abcdefghijklmnopqrstuvwxyz";
	var digitalRev = "09876543210";
	var letterRev = "zyxwvutsrqponmlkjihgfedcba";
	if(digital.indexOf(inputStr) != -1 || letter.indexOf(inputStr) != -1 || digitalRev.indexOf(inputStr) != -1 || 	letterRev.indexOf(inputStr) != -1) {
		return true;
	}
	return  false;
}
function isSame(inputStr) {
	for(var i=0;i < inputStr.length -1; i++) {
		if(inputStr.charAt(i) != inputStr.charAt(i + 1)) {
			return false;
			break;
		}
		if(i == (inputStr.length - 2)) {
			return true;
		}
	}
}
function check(){
  var reg =/^[a-zA-Z0-9]{1,15}$/;
  var num =/[0-9]{15,18}$/;
  var regu   =   "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$"   

  var re = new RegExp(regu);
  var form = document.regform;
  var account = form.account;
  var pwd = form.pwd ;
  var pwdok = form.pwdok; 
  var mkey = form.mkey;
  var uname = form.uname;
  var nm = form.nm;
  var byear = form.byear;
  var bmouth = form.bmouth;
  var bday = form.bday;
  var rt = form.rt; 
  var ra = form.ra;
  var email = form.email;    
  var regcode = form.regcode;  
  if (account.value.length < 4) {
	  alert("帐号长度不能小于4位");
	  regform.account.focus();
	  return false;
	  }
  if (isContinuous(account.value)) {
      alert("请不要使用连续的字符作为帐号");
	  regform.account.focus();
	  return false;
	  }
  if (isSame(account.value)) {
      alert("请不要使用相同的字符作为帐号");
	  regform.account.focus();
	  return false;
	  }
  if (reg.exec(account.value)==null) {
      alert("帐号必须是数字或英文字母！");
	  regform.account.focus();
	  return false;
	  }
 if (pwd.value.length < 6) {
	  alert("密码长度不能小于6位");
	  regform.pwd.focus();
	  return false;
	  }
  if (isContinuous(pwd.value)) {
      alert("请不要使用连续的字符作为密码");
	  regform.pwd.focus();
	  return false;
	  }
  if (isSame(pwd.value)) {
      alert("请不要使用相同的字符作为密码");
	  regform.pwd.focus();
	  return false;
	  }
  if (reg.exec(pwd.value)==null) {
      alert("密码必须是数字或英文字母！");
	  regform.pwd.focus();
	  return false;
	  }
  if (pwd.value == account.value) {
	  alert("为了您的帐号安全，请不要使用和帐号相同的密码");
	  regform.pwd.focus();
	  return false;
	  } 
  if (pwdok.value != pwd.value) {
      alert("请您确认两次输入密码一致！");
	  regform.pwdok.focus();
	  return false;
	  }
  if (mkey.value.length < 6 ) {
      alert("钥匙单字长度小于6位，请您重新输入！");
	  regform.mkey.focus();
	  return false;
	  }
  if (reg.exec(mkey.value)==null) {
      alert("钥匙必须是数字或英文字母！");
	  regform.mkey.focus();
	  return false;
	  }
  if (uname.value.length < 11 ) {
      alert("请填写真实手机号，请您重新输入！");
	  regform.uname.focus();
	  return false;
	  }
	  
  if  (email.value.search(re) != -1){   
 
       }else{   
      window.alert   ("请输入正确的Email地址？\n\n请检查是否正确！")   
      regform.email.focus();
      return false;
       }
  if (nm.value.length != 15 && nm.value.length != 18 ) {
	  alert("身份证号码应该为15位或者18位，请检查后重新提交");
	  regform.nm.focus();
	  return false;
	  }
  if (num.exec(nm.value)==null){
	  alert("身份证号码必须是数字，请检查后重新提交");
	  regform.nm.focus();
	  return false;
	  } 
   if (byear.value == "" ||bmouth.value == "" ||bday.value == "" ||	rt.value == "" ||ra.value == ""){
       alert("请您填写完整的注册信息！");
       return false;
       } 

  return true;
}
function f_reset() {
  document.regform.reset();
  }
</script>

<SCRIPT src="logimg/top.js" type=text/javascript></SCRIPT>

<DIV class=main>
<DIV class=left>
<DIV class=about_title><IMG src="logimg/register.jpg"></DIV>
<DIV class=subcontent style="PADDING-LEFT: 100px">
<DIV id=pass_reg align=left>
<form name="regform" method="post" action="registersave.asp">
<TABLE cellSpacing=0 cellPadding=0 width=530 border=0>
  <TBODY>
  <TR>
    <TD colSpan=2><SPAN class="f14 fwb">请填写您的通行证用户名</SPAN><BR>
      <SPAN 
      style="COLOR: #4b4b4b">注意事项：请认真填写钥匙单字及真实手机号</SPAN><p>
	当修改密码和取回密码时必须提供以上两项信息才能找回或修改密码。</TD></TR>
  <TR>
    <TD class="tr pr10" width=126>游戏账号：</TD>
    <TD><input name="account" type="text" class="textinput" id="account" size="20" maxlength="12"><FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">用于登录游戏和管理账号。</SPAN><BR>
      <SPAN 
    id=tipUsername></SPAN></TD></TR>
	  <TR>
    <TD class="tr pr10" width=126>手机号码：</TD>
    <TD><input name="uname" type="text" class="textinput" id="uname" size="20" maxlength="12">  <FONT color="Green">
	※</FONT></TD>
	  </TR>
	    <TR>
    <TD>&nbsp;</TD>
    <TD><SPAN 
      style="COLOR: #ff7800">这是账号拥有者的手机号码,手机号码很重要请认真填写</SPAN><span style="color: #FF7800">.</span><p>
	<SPAN 
      style="COLOR: #ff7800">用于修改和找回修改密码等信息!</SPAN></TD>
	    </TR>
	  

  <TR>
    <TD colSpan=2><IMG src="logimg/line.gif"></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD colSpan=2><SPAN class="f14 fwb">请认真填写您的安全设置</SPAN><BR></TD></TR>
  <TR>
    <TD class="tr pr10" width=126>密　　码：</TD>
    <TD><input name="pwd" type="password" class="textinput" id="pwd" size="20" maxlength="12">
      <FONT color="Blue">※</FONT></TD>
  </TR>
	    <TR>
    <TD>&nbsp;</TD>
    <TD><SPAN 
      style="COLOR: #ff7800">密码必须为6-12位文或者数字。</SPAN></TD>
	    </TR>
	  <TR>
    <TD class="tr pr10" width=126>确认密码：</TD>
    <TD><input name="pwdok" type="password" class="textinput" id="pwdok" size="20" maxlength="12">
    <FONT color="Blue">※</FONT></TD>
	  </TR>
	    <TR>
    <TD>&nbsp;</TD>
	   <TD><SPAN 
      style="COLOR: #ff7800">确定您已经记住了密码。</SPAN></TD></TR>
  <TR>
    <TD class="tr pr10" width=126>钥匙单字：</TD>
    <TD><input name="mkey" type="text" class="textinput" id="mkey" size="20" maxlength="6">
    <FONT color="red">※</FONT></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">用于修改和找回修改密码等信息。</SPAN><BR>
      <SPAN 
      id=tipNickname></SPAN></TD></TR>
	    <TR>
    <TD class="tr pr10" width=126>邮　　箱：</TD>
    <TD><input name="email" type="text" class="textinput" id="email" size="20" maxlength="50">
      <FONT color="red">※</FONT></TD>
	    </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px">
	<SPAN 
      style="COLOR: #ff7800">请谨慎输入您的电子邮件地址！注册信息将发往您的邮箱。<br>
	请务必使用属于您自己的邮箱地址。<br>
	如果您没有邮箱请输入 如: QQ号码@qq.com</SPAN><BR>
      <SPAN 
    id=tipUsername></SPAN></TD></TR>
    <TD class="tr pr10" width=126>身份证号：</TD>
    <TD><input name="nm" type="text" class="textinput" id="nm" size="20" maxlength="18">
    <FONT color="Green">※</FONT></TD>
	    </TR>
	    <TR>
    <TD>&nbsp;</TD>
    <TD><SPAN 
      style="COLOR: #ff7800">请输入本人身份证号码。</SPAN></TD></TR>
	  

	  
   
	
	

    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 50px"><INPUT id=register_agree 
      type=checkbox CHECKED value=yes name=agree> 我已经阅读并同意<SPAN 
      style="COLOR: #037bcf"><A href="#" 
      target=_blank>《用户注册服务协议》</A></SPAN></TD>
    </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>  <input name="submit" type="image" src="logimg/zhuce.gif" width="80" height="23" border="0" onClick="return check()">
                &nbsp;<a href="javascript:f_reset();"><img src="logimg/chongxie.gif" width="80" height="23" border="0"></a></TD>
	  

              
	  
	  </TR></TBODY></TABLE></form>
</DIV></DIV></DIV>
<DIV class=right>
<DIV class=submenu>
<DIV class=submenu_h><A class=on 
href="regaccount.asp">用户注册</A></DIV>
<DIV class=submenu_i><a href="mpw.asp">修改密码</a></DIV>
<DIV class=submenu_j><A href="findpw.asp">取回密码</A></DIV>
</DIV>
<DIV class=submenu_tab>
<SCRIPT src="logimg/adlm.js" type=text/javascript></SCRIPT>

</DIV></DIV>
<DIV class=clearfix></DIV></DIV>

<SCRIPT src="logimg/footer.js" type=text/javascript></SCRIPT>
</BODY></HTML>
