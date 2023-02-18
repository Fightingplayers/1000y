<%
Function CheckStr(istr)
dim Sql_Kill,Sql_Kill_2,Sql_Kill_3
Sql_Kill = "\'|*|%|;|="
Sql_Kill_2 = split(Sql_Kill,"|")
for Each Sql_Kill_3 In Sql_Kill_2
if instr(LCase(istr),Sql_Kill_3)>0 then
Response.Write "请不要尝试进行SQL注入！" 
Response.End
end if 
Next
CheckStr=istr
End Function

dim server_v1,server_v2
server_v1=Cstr(Request.ServerVariables("HTTP_REFERER"))
server_v2=Cstr(Request.ServerVariables("SERVER_NAME"))

if mid(server_v1,8,len(server_v2))<>server_v2 then

response.write "<script>location.href='/';</script>"
response.end
end if
%>  