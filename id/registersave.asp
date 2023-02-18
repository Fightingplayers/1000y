<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/conndb.asp"-->
<!--#include file="chkpv.asp"-->
<!--#include file="inc/get.asp"-->
<%
 Dim Account,PassWord,UName,MasterKey,NMuber,Birthday,BYear,BMouth,BDay,Telephone,Address,EMail,RegCode,Regip
 Dim Rs,Sql,Comm
    Account = CheckStr(Trim(Replace(Request("account"),"'","")))
  PassWord = CheckStr(Trim(Replace(Request("pwd"),"'","")))
    'UName = Trim(Replace(Request("uname"),"'",""))
    MasterKey = CheckStr(Trim(Replace(Request("mkey"),"'","''"))) 
   NMuber = CheckStr(Trim(Replace(Request("nm"),"'","")))
     Byear = CheckStr(Trim(Replace(Request("byear"),"'","")))
    BMouth = CheckStr(Trim(Replace(Request("bmouth"),"'","")))
      BDay = CheckStr(Trim(Replace(Request("bday"),"'","")))
   Telephone = CheckStr(Trim(Replace(Request("uname"),"'",""))) 
   Address = CheckStr(Trim(Replace(Request("ra"),"'","''"))) 
   EMail = CheckStr(Trim(Replace(Request("email"),"'","")))  
   RegCode = CheckStr(Trim(Replace(Request("regcode"),"'","")))
   Regip = Request.ServerVariables("REMOTE_ADDR")
   Birthday = Byear & "-" & BMouth & "-" & BDay
       if RegCode <> CStr(Session("CheckCode")) then
           Response.Redirect "Info.asp?MsgId=1&MsgBtn=0"
	       Response.end
		else
		  Session("CheckCode")=""
	   end if
   Set Rs=Server.CreateObject("ADODB.Recordset")
	sql="select account from account1000y where account='"&Account&"'"
	rs.open sql,conn,1,1
	if not rs.bof and not rs.eof then
	     rs.close
		 Set rs = Nothing
		 Call CloseConnect
         Response.Redirect "Info.asp?MsgId=3&MsgBtn=0&Msg=" & Account
		 Response.end
	else
	     Set Comm = CreateObject("ADODB.Command")
		 Comm.ActiveConnection = conn
	     if rs.state = 1 then rs.close 
		 rs.CursorType=1
         rs.LockType=3
         Comm.CommandText="insert into account1000y (account,password,ipaddr,username,birth,telephone,makedate,address,email,nativenumber,masterkey) values ('"&Account&"','"&Password&"','"&Regip&"','"&UName&"','"&Birthday&"','"&Telephone&"','"&Now&"','"&Address&"','"&Email&"','"&NMuber&"','"&Masterkey&"')" 
         Set rs = Comm.Execute
		 Set rs = Nothing
		 Set Comm=Nothing
		 Call CloseConnect
		Response.Redirect "Info.asp?MsgId=4&MsgBtn=1"
	end if 
%>