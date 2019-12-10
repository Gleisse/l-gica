<?php
// 1° pegar dados da tela

$email = $_POST['email'];
$senha = md5($_POST['senha']);
// colocar o md5 para ler a senha que está criptografada


// 2° abrir conexão com banco de dados
// a senha será digitada em html e terá que ser conectada com o banco de dados

                      //(SERVIDOR, USUARIO, SENHA, BANCO)
 $con = mysqli_connect('localhost', 'root', '','usuario');


 // 3° preparar a instrução de seleção
 // seleciona todo mundo da tabela de usuario onde o email e a senha exixtam
 $sql = "select * from usuario where email = '".$email."' and senha='".$senha."' ";


 // 4º Executar a instrução no banco

$resultado = mysqli_query($con,$sql); // abre o banco e recebe o resultado
 
if(mysqli_num_rows($resultado)>0){
    // echo "Encontrei";
     header("Location:painel.php");
    } else{ 
        echo "Nao encontrei";
    }




?>