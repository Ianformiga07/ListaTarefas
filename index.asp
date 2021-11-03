<!--#include file ="lib/Conexao.asp"-->
<!DOCTYPE html>
<%
IF REQUEST("Operacao") = 1 then
call abreConexao
sql = "SELECT ID_Usuario, NomeUsu, Email, senha, id_perfil FROM TA_Usuario WHERE Email = '"&request.form("login")&"' AND senha = '"&request.form("senha")&"'"
set rs = conn.execute(sql)
session("login") = request.form("login")
session("senha") = request.form("senha")
if not rs.eof then
if request.form("login") = rs("Email") and request.form("senha") = rs("senha") then
    existeCad = true
    else
    existeCad = false
rs.close
set rs = nothing

end if
end if
call fechaConexao
if existeCad = true then
response.Redirect("home.asp")
else
response.Write("<script>")
response.Write("alert('Usuário ou Senha incorreta!');")
response.Write("window.location.assign('index.asp')")
response.Write("</script>")

end if
end if
%>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Tarefas</title>
<script>
	function Login(){
		document.frmLogin.Operacao.value = 1;
		document.frmLogin.submit();
		
	}
</script>

</head>
<body>
    <h3>Login</h3>
    <form name="frmLogin" method="post" >
      <input type="hidden" name="Operacao"/>
        <input type="text" name="login" id="login" required/><br>
        <input type="password" name="senha" id="senha" required/><br><br>
        <input type="submit" value="Entrar" onclick="return Login()"/>
    </form>
</body>
</html>