<%Dim ConnStr,SqlDatabaseName,SqlPassword,SqlUsername,SqlLocalName,conn
		SqlDatabaseName = "BJB"  'Account ���ݿ�
		SqlUsername = "sa"        'SQL�ʺ�		
		SqlPassword = "Bjb@59588+++"     'SQL����
		SqlLocalName = "162.14.177.37"     '��������
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