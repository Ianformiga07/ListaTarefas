<!--#include file ="lib/Conexao.asp"-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Usuário - Lista de Tarefas</title>


</head>

<body>
    <form action="db/cad_usuario.asp" name="frmCadastro" method="post">
        Nome:
        <input type="text" name="Nome" id="Nome"><br>
        Email:
        <input type="email" name="email" id="email"><br>
        Senha:
        <input type="password" name="senha" id="senha" onkeyup="validasenha();"><br>
        Confirmação de Senha:
        <input type="password" name="senha2" id="senha2" onkeyup="validasenha()"><br>
        <button>Cadastrar</button>

    </form>

    <script>

        function validasenha() {
            
        var senha = document.getElementById("senha").value;
        var senha2 = document.getElementById("senha2").value;
        if(senha != senha2){
            document.getElementById("senha2").style.border = "red 1px solid";
            }else{
            document.getElementById("senha2").style.border = "green 1px solid";
            
        }
    }
    </script>
</body>
</html>