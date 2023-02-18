<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/get.asp"-->
<!--#include file="inc/conndb.asp"-->
<% Response.Buffer = True  
Response.ExpiresAbsolute = Now() - 1  
Response.Expires = 0  
Response.CacheControl = "no-cache"  
Response.AddHeader "Pragma", "No-Cache"
 Dim Account,OldPW,NewPW,MasterKey,RegCode,Info,olduname
 Dim Rs,Sql
   Account = Trim(Replace(Request("account"),"'","")) 
   OldPW = Trim(Replace(Request("oldpwd"),"'",""))
   newpw = CheckStr(Trim(Replace(Request("newpwd"),"'","")))  
   MasterKey = Trim(Replace(Request("mkey"),"'","''")) 
   olduname = Trim(Replace(Request("uname"),"'","''")) 

  Set Rs=Server.CreateObject("ADODB.Recordset")
  sql="select account,masterkey,password,telephone from account1000y where account='"&Account&"'"
  rs.open sql,conn,1,1
  if rs.bof and rs.eof then
	     rs.close
		 Set rs = Nothing
		 Call CloseConnect
         Response.Redirect "Info.asp?MsgId=7&MsgBtn=0"

		 Response.end
	else
	    if OldPW <> trim(rs("password")) then
         if rs.state = 1 then rs.close 
		 Set rs = Nothing
		 Call CloseConnect 
         Response.Redirect "Info.asp?MsgId=9&MsgBtn=0"
	     Response.end
		end if
		
		if olduname <> trim(rs("telephone")) then
         if rs.state = 1 then rs.close 
		 Set rs = Nothing
		 Call CloseConnect 
         Response.Redirect "Info.asp?MsgId=10&MsgBtn=0"
	     Response.end
		end if

		
		if MasterKey <> trim(rs("masterkey")) then
		 if rs.state = 1 then rs.close 
		 Set rs = Nothing
		 Call CloseConnect
         Response.Redirect "Info.asp?MsgId=8&MsgBtn=0"
	     Response.end 
		end if
		sql = "update account1000y set password='" & NewPW & "' where account='"&Account&"'"
		if rs.state = 1 then rs.close
		rs.open sql,conn,3,3
		 Info = "您的新密码 " & "<B><FONT COLOR=#FF6C00>" & NewPW & "</FONT></B> 已经更新，请牢记您的密码。"
		 if rs.state = 1 then rs.close 
	     Set rs = Nothing
	     Call CloseConnect
	end if 

%>
<link href="all.css" rel="stylesheet" type="text/css">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    
    <tr>
        <td height="120" align="center" valign="middle" class="tdinfo"><%= Info %>&nbsp;</td>
    </tr>
    <tr>
        <a href="javascript:window.close()">关闭窗口</a>
    </tr>
</table>
