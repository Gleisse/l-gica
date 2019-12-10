<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistema de Login</title>
</head>
<body>
    <h1>Sistema de Login<h1>
    <hr>
    <form action="logar.php" method="post">
        Email:<br>
        <input type="text" name="email" placeholder="digite o email"/><br><br>
        Senha: <br>
        <input type="password" name="senha" placeholder="digite a senha"/><br><br>
        <input type="submit" value="Logar"/>
        <input type="reset" value="Limpar Campos"/><br><br>
        <a href="#">Esqueceu a senha?</a>
    </form>    
    
</body>
</html>