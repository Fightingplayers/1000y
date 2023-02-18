<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/const.asp"-->
<!--#include file="chkpv.asp"-->
<% Response.Buffer = True  
Response.ExpiresAbsolute = Now() - 1  
Response.Expires = 0  
Response.CacheControl = "no-cache"  
Response.AddHeader "Pragma", "No-Cache" %>
<%
 dim MsgBtn,MsgId,MsgStr
 MsgId = Replace(trim(Request.QueryString("MsgId")),"'","")
 Msg = Replace(trim(Request.QueryString("Msg")),"'","")
 Url = Replace(trim(Request.QueryString("Url")),"'","")
 MsgBtn = Replace(trim(Request.QueryString("MsgBtn")),"'","")
%>
<%
 Select Case MsgId
  Case "0"
  MsgStr = MSG_0
  Case "1"
  MsgStr = MSG_1
  Url = COMMAND_0
  case "2"
  MsgStr = MSG_2
  case "3"
  MsgStr = Replace(MSG_3,"{$User}",Msg)
  Url = COMMAND_0
  case "4"
  MsgStr = MSG_4 
  case "5"
  MsgStr = MSG_5
  Url = COMMAND_1
  case "6"
  MsgStr = MSG_6
  Url = COMMAND_1
  case "7"
  MsgStr = MSG_5
  Url = COMMAND_2
  case "8"
  MsgStr = MSG_6
  Url = COMMAND_2 
  case "9"
  MsgStr = MSG_7
  Url = COMMAND_2  
  case "10"
  MsgStr = MSG_8
  Url = COMMAND_2  
 End Select 
%><style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
body,td,th {
	font-size: 12px;
	color: #000000;
}
-->
</style>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="120" align="center" valign="middle" class="tdinfo"><%= MsgStr %>&nbsp;</td>
    </tr>
    <tr>
      <td height="50" align="center"><% If MsgBtn=0 Then %>
        <INPUT name=Submit2 onclick=history.go(-1) type=submit value=还回>
        <% ElseIf MsgBtn=1 Then %>
        <a href="javascript:window.close()">关闭窗口</a>
        <% End If %>
</td>
    </tr>
</table>
