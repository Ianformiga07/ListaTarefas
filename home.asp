
<!DOCTYPE html>
<!--#include file ="lib/Conexao.asp"-->

<%

session("login") = request.form("login")
session("senha") = request.form("senha")

%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="">Cadastrar Tarefas</a>
    <a href="">Listar Tarefas</a> <br><br>
    <a href="">Sair</a>

    <table>
        <tr>
            <td>Tarefas</td>
            <td>Data</td>
            <td>Hora</td>
            <td>Ações</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>


</body>
</html>