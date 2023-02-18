<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0032)https://passport.9wee.com/getpsw -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>用户中心</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="logimg/css.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
<!--#include file="inc/get.asp"-->
<script language="javascript">
function check(){
  var reg =/^[a-zA-Z0-9]{1,15}$/;
  var form = document.fpwform;
  var account = form.account;
  var mkey = form.mkey;
  var regcode = form.regcode;
  var uname = form.uname; 
  if (account.value.length < 4) {
	  alert("帐号长度不能小于4位");
	  fpwform.account.focus();
	  return false;
	  }
  if (reg.exec(account.value)==null) {
      alert("帐号必须是数字或英文字母！");
	  fpwform.account.focus();
	  return false;
	  }
  if (mkey.value.length < 6 ) {
      alert("钥匙单字长度小于6位，请您重新输入！");
	  fpwform.mkey.focus();
	  return false;
	  }
  if (uname.value.length < 11 ) {
  alert("请填写真实手机号，请您重新输入！");
  fpwform.uname.focus();
  return false;
  } 
   return true;
}
function f_reset() {
  document.fpwform.reset();
  }
</script>

<SCRIPT src="logimg/top.js" type=text/javascript></SCRIPT>

<DIV class=main>
<DIV class=left>
<DIV class=about_title><IMG src="logimg/getpsw.gif" width="227" height="28"></DIV>
<DIV class=subcontent style="PADDING-LEFT: 100px">
<form name="fpwform" method="post" action="findpwsetp2.asp">
<TABLE cellSpacing=0 cellPadding=0 width=530 border=0>

  <TBODY>
  <TR>
    <TD colSpan=2><SPAN class="f14 fwb">方式一：通过钥匙单字找回密码</SPAN></TD>
  </TR>
  <TR>
    <TD colSpan=2 height=18><IMG src="logimg/line.gif" width="466" height="1"></TD>
  </TR>
  <TR>
    <TD class="tr pr10" width=126 height=30>游戏账号：</TD>
    <TD><input name="account" type="text" class="textinput" id="account" size="20" maxlength="12"><FONT color="red">&nbsp;※</FONT></TD></TR>
  <TR>
    <TD class="tr pr10" width=126 height=30>钥匙单字：</TD>
    <TD><input name="mkey" type="text" class="textinput" id="mkey" size="20" maxlength="6">
    <FONT color="red">&nbsp;※</FONT></TD></TR><br>
	<TR>
    <TD class="tr pr10">手机号码：</TD>
    <TD><input name="uname" type="text" class="textinput" id="uname" size="20" maxlength="12">  <FONT color="Green">
	※</FONT></TD>
	  </TR>
	   
  <TR>
    <TD>&nbsp;</TD>
    <TD 
      style="COLOR: #6f6f6f; LINE-HEIGHT: 18px; HEIGHT: 50px"><br>如果您没有通过‘钥匙单字’找回密码，请选择第二种方式来进行<BR>找回密码服务.</TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>  <input name="submit" type="image" src="logimg/tijiao.gif" width="80" height="23" border="0" onClick="return check()"></TD></TR></FORM>
  <TR>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD></TR>


      <TD colSpan=2><SPAN class="f14 fwb">方式二：通过帐户服务中心找回密码</SPAN></TD>
    </TR>
  <TR>
    <TD colSpan=2 height=18><IMG src="logimg/line.gif" width="466" height="1"></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD 
      style="COLOR: #6f6f6f; LINE-HEIGHT: 18px; HEIGHT: 50px">您可以通过信箱联系客服工作人员找回密码申请，并提供您的个人信息<BR>经工作人员核实后帮助您找回密码 
      </TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD></TR></TBODY></TABLE></DIV>
	</form>
  </DIV>
<DIV class=right>
<DIV class=submenu>
<DIV class=submenu_h><A href="regaccount.asp">用户注册</A></DIV>
<DIV class=submenu_i><A href="mpw.asp">修改密码</A></DIV>
<DIV class=submenu_j><A class=on 
href="findpw.asp">取回密码</A></DIV>
</DIV>
<DIV class=submenu_tab>
<SCRIPT src="logimg/adlm.js" type=text/javascript></SCRIPT>
</DIV></DIV>
<DIV class=clearfix></DIV></DIV>
<SCRIPT src="logimg/footer.js" type=text/javascript></SCRIPT>
</BODY></HTML>
