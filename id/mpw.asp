<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0034)https://passport.9wee.com/register -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>用户中心</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="logimg/css.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
<!--#include file="inc/get.asp"-->
<SCRIPT src="logimg/top.js" type=text/javascript></SCRIPT>
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
  var form = document.mpwform;
  var account = form.account;
  var oldpwd = form.oldpwd ;
  var newpwd = form.newpwd;
  var newpwdok = form.newpwdok;   
  var mkey = form.mkey;
  var regcode = form.regcode; 
  var uname = form.uname; 
  if (account.value.length < 4) {
	  alert("帐号长度不能小于4位");
	  mpwform.account.focus();
	  return false;
	  }
 if (oldpwd.value.length < 6) {
	  alert("密码长度不能小于6位");
	  mpwform.oldpwd.focus();
	  return false;
	  }
 if (newpwd.value.length < 6) {
	  alert("新密码长度不能小于6位");
	  mpwform.newpwd.focus();
	  return false;
	  }
  if (isContinuous(newpwd.value)) {
      alert("请不要使用连续的字符作为新的密码设置");
	  mpwform.newpwd.focus();
	  return false;
	  }
  if (isSame(newpwd.value)) {
      alert("请不要使用相同的字符作为密码");
	  mpwform.newpwd.focus();
	  return false;
	  }
  if (reg.exec(newpwd.value)==null) {
      alert("新的密码必须是数字或英文字母！");
	  mpwform.newpwd.focus();
	  return false;
	  }
  if (newpwd.value == account.value) {
	  alert("为了您的帐号安全，请不要使用和帐号相同的密码");
	  mpwform.newpwd.focus();
	  return false;
	  } 
  if (newpwdok.value != newpwd.value) {
      alert("请您确认两次输入密码一致！");
	  mpwform.newpwdok.focus();
	  return false;
	  }
  if (mkey.value.length < 6 ) {
      alert("钥匙单字长度小于6位，请您重新输入！");
	  mpwform.mkey.focus();
	  return false;
	  }
   if (uname.value.length < 11 ) {
  alert("请填写真实手机号，请您重新输入！");
  mpwform.uname.focus();
  return false;
  }
  return true;
}
function f_reset() {
  document.mpwform.reset();
  }
</script>

<DIV class=main>

<DIV class=left>
<DIV class=about_title><IMG src="logimg/xgma.gif" width="227" height="28"></DIV>
<DIV class=subcontent style="PADDING-LEFT: 100px">
<DIV id=pass_reg align=left>
<form action="mpwsetp2.asp" method="post" name="mpwform" id="mpwform">
<TABLE cellSpacing=0 cellPadding=0 width=530 border=0>
  <!--DWLayoutTable-->
  <TBODY>

    <TR>
    <TD colSpan=2><SPAN class="f14 fwb">通过钥匙单字修改新的密码</SPAN></TD>
  </TR>
  <TR>
    <TD colSpan=2 height=18><IMG src="logimg/line.gif" width="466" height="1"></TD>
  </TR>
  <TR>
    <TD class="tr pr10" width=182>游戏账号：</TD>
    <TD width="348"><input name="account" type="text" class="textinput" id="account" size="20" maxlength="12"><FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">请输入您的游戏账号。</SPAN><BR>
      <SPAN 
    id=tipUsername></SPAN></TD></TR>
  <TR>
    <TD class="tr pr10">'旧'密码：</TD>
    <TD><input name="oldpwd" type="password" class="textinput" id="oldpwd" size="20" maxlength="12"><FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">请输入您的 '旧' 密码。</SPAN><BR>
      <SPAN 
      id=tipNickname></SPAN></TD></TR>
	   <TR>
    <TD class="tr pr10">'新'密码：</TD>
    <TD><input name="newpwd" type="password" class="textinput" id="newpwd" size="20" maxlength="12">
    <FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">请输入您的 '新' 密码。</SPAN><BR>
      <SPAN 
      id=tipNickname></SPAN></TD></TR>
	   <TR>
    <TD class="tr pr10">确认'新'密码：</TD>
    <TD><input name="newpwdok" type="password" class="textinput" id="newpwdok" size="20" maxlength="12">
    <FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><span style="COLOR: #ff7800">请确认您的 '新' 密码。</span><BR>
      <SPAN 
      id=tipNickname></SPAN></TD></TR>
	    <TR>
    <TD class="tr pr10">钥匙单字：</TD>
    <TD><input name="mkey" type="text" class="textinput" id="mkey" size="20" maxlength="6">
    <FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="LINE-HEIGHT: 18px; HEIGHT: 40px"><SPAN 
      style="COLOR: #ff7800">请输入您的钥匙单字。</SPAN><BR>
      <SPAN 
    id=tipUsername></SPAN></TD></TR>
	  <TR>
    <TD class="tr pr10">手机号码：</TD>
    <TD><input name="uname" type="text" class="textinput" id="uname" size="20" maxlength="12">  <FONT color="Green">
	※</FONT></TD>
	  </TR>
	    <TR>
    <TD>&nbsp;</TD>
    <TD><SPAN 
      style="COLOR: #ff7800">请输入您注册帐号时的手机号码!</SPAN></TD>
	    </TR>	
  <TR>
    <TD colSpan=2><IMG src="logimg/line.gif"></TD></TR>
  <TR>
    <TD height="44">&nbsp;</TD>

    <TD style="LINE-HEIGHT: 18px; HEIGHT: 50px"><INPUT id=register_agree 
      type=checkbox CHECKED value=yes name=agree> 我已经阅读并同意<SPAN 
      style="COLOR: #037bcf"><A href="#" 
      target=_blank>《用户注册服务协议》</A></SPAN></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD> <input name="submit" type="image" src="logimg/tijiao.gif" width="80" height="23" border="0" onClick="return check()">  　
    <a href="javascript:f_reset();"><img src="logimg/chongxie.gif" width="80" height="23" border="0"></a></TD>
  </TR>
  <tr></TBODY>
      <td>&nbsp;</td>
    </TABLE>
  </form>

</DIV></DIV></DIV>
<DIV class=right>
<DIV class=submenu>
<DIV class=submenu_h><A 
href="regaccount.asp">用户注册</A></DIV>
<DIV class=submenu_j><a class=on href="mpw.asp">修改密码</a></DIV>
<DIV class=submenu_j><A href="findpw.asp">取回密码</A></DIV>
</DIV>
<DIV class=submenu_tab>
<SCRIPT src="logimg/adlm.js" type=text/javascript></SCRIPT>
</DIV></DIV>
<DIV class=clearfix></DIV></DIV>

<SCRIPT src="logimg/footer.js" type=text/javascript></SCRIPT>
</BODY></HTML>
