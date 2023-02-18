<%Dim ConnStr,SqlDatabaseName,SqlPassword,SqlUsername,SqlLocalName,conn
		SqlDatabaseName = "BJB"  'Account 数据库
		SqlUsername = "sa"        'SQL帐号		
		SqlPassword = "Bjb@59588+++"     'SQL密码
		SqlLocalName = "162.14.177.37"     '连接主机
		ConnStr = "Provider = Sqloledb; User ID = " & SqlUsername & "; Password = " & SqlPassword & "; Initial Catalog = " & SqlDatabaseName & "; Data Source = " & SqlLocalName & ";"
		
On Error Resume Next
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open ConnStr
	If Err Then
		Err.Clear
		Set Conn = Nothing
		Response.redirect "../Info.asp?msgid=0&MsgBtn=1"
	End If		

Sub CloseConnect
 Conn.Close
 Set Conn = Nothing
end Sub		
%>