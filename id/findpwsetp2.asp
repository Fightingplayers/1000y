<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/conndb.asp"-->
<!--#include file="chkpv.asp"-->
<!--#include file="inc/get.asp"-->
<% 
Response.Buffer = True  
Response.ExpiresAbsolute = Now() - 1  
Response.Expires = 0  
Response.CacheControl = "no-cache"  
Response.AddHeader "Pragma", "No-Cache"
 Dim Account,MasterKey,RegCode,Info,olduname
 Dim Rs,Sql
    Account = Trim(Replace(Request("account"),"'",""))  
	MasterKey = Trim(Replace(Request("mkey"),"'","''")) 
    RegCode = Request("regcode")
	olduname = Trim(Replace(Request("uname"),"'","''"))
   if RegCode <> CStr(Session("CheckCode")) then
           Response.Redirect "Info.asp?MsgId=1&MsgBtn=0"
	       Response.end
		else
		  Session("CheckCode")=""
	   end if
  Set Rs=Server.CreateObject("ADODB.Recordset")
  sql="select account,masterkey,password,telephone from account1000y where account='"&Account&"'"
  rs.open sql,conn,1,1
  if rs.bof and rs.eof then
	     rs.close
		 Set rs = Nothing
		 Call CloseConnect
         Response.Redirect "Info.asp?MsgId=5&MsgBtn=0"
		 Response.end
	else
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
         Response.Redirect "Info.asp?MsgId=6&MsgBtn=0"
	     Response.end 
		 else
		 Info = "您所查询的密码为 " & "<B><FONT COLOR=#FF6C00>" & rs("password") & "</FONT></B> 请牢记您的密码。"
		 if rs.state = 1 then rs.close 
	     Set rs = Nothing
	     Call CloseConnect
		 end if
	end if 

%>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" valign="middle" class="tdinfo">　</td>
    </tr>
    <tr>
        <td height="120" align="center" valign="middle" class="tdinfo"><%= Info %>&nbsp;</td>
    </tr>
    <tr>
        <a href="javascript:window.close()">关闭窗口</a>
    </tr>
</table>
