<?php
include_once '_header.php';
?>

<main>
<h2>Administracao de Produtos</h2>

<?php
$mensagem = array(
    1=> 'Usuario ou senha invalido',
    2=> 'Voce precisa ter um usuario pra acessar',
    3=> 'Voce saiu, volte sempre',
);

if ( isset($_GET['msg']) || is_numeric($_GET) ) {
    # code...
   $cod = $_GET['msg'];
?>

<h3><?php echo $mensagem[$cod]; ?><h3>

<?php 
}
?>

<form action="login-processa.php" method="post">
 <input type="hidden" value="login" name="acao"><br>
 <label for="email"> Email: </label><br>
 <input type="text" id="email" name="email"><br>
 <label for="senha"> Senha: </label><br>
 <input type="password" id="senha" name="senha"><br>
 <hr>
 <input type="submit" value="login">
</form>

</main>

<?php
include_once "./_footer.php";
?>
