<!--#include file ="lib/Conexao.asp"-->
<%
Nome = Request.Form("Nome")
Email = Request.Form("email")
Senha = Request.Form("senha")
Perfil = 2

call abreConexao
sql = "INSERT INTO TA_Usuario(NomeUsu, Email, senha, id_perfil) VALUES('"&Nome&"', '"&Email&"', '"&Senha&"', '"&Perfil&"')"
'Response.write sql
'response.end
conn.execute(sql)
call fechaConexao
%>
<script>
    alert("Dados incluido com sucesso!")
    parent.location = "../index.asp"
</script>