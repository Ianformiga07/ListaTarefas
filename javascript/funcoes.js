function validasenha() {
    var senha = document.getElementById("senha").value;
    var senha2 = document.getElementById("senha2").value;

    if(senha != senha2){
        document.getElementById("senha2").style.border = "red 1px solid";

    }
}


function validasenha() {
    var senha = frmCadastro.senha.value;
    var senha2 = frmCadastro.senha2.value;

    if(senha == "" || senha.length <= 5){
        alert("preencha")
        frmCadastro.senha.focus();
        return false;
    }
    if(senha != senha2){
        alert("senhas não coincidem")
        frmCadastro.senha.focus();
        return false;
    }
}