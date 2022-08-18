<?php 
include_once "../includes/_banco.php";
include_once "./_header.php";
include_once "./_menu.php";


if ( isset ($_GET['id']) || !empty ($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM produtos WHERE produtosID = ".$id;
    $resultado = mysqli_query($conn, $sql);
    $dados = mysqli_fetch_array($resultado,MYSQLI_ASSOC);
} else {
    $id = '';
    $dados['nome'] = '';
    $dados['descricao'] = '';
}

?>


<main>
    <h2 style="text-align: center;">Adminstracao do produtos</h2>
    <a href="produto-lista.php">Listagem</a>
    <hr>
    <form style="text-align: center;" action="produto-processa.php" method="post">
        <input type="text" value="salvar" name="acao">
        <input type="text" name="id" id="<?php echo $id;?>"><br>
        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="nome" value="<?php echo $dados['nome'];?>"><br>
        <label for="descricao">Descrição:</label><br>
        <textarea name="descricao" id="descricao" cols="30" rows="10"><?php echo $dados ['descricao'];?></textarea><br>
        <hr>
        <input type="submit" value="Enviar">
    </form>
</main>




<?php
include_once "./_footer.php";
?>