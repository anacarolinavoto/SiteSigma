<?php
include_once './includes/_dados.php';
include_once './includes/_head.php';
include_once './includes/_header.php';
$id = $_GET['id'];
$tipo = $_GET['tipo'];

?>
<div class="container" style="margin-top:3cm; margin-left:11cm">
<div class="row">
<div class="col">
<img style='width: 400px; height: 350px;' src='./content/<?php echo $produtos[$id]['imagem'];?>'>
<h1> Nome: <?php echo $produtos[$id]['nome'];?></h1>
<h2> Preço: <?php echo $produtos[$id]['preco'];?></h2>
<p> Descrição: <?php echo $produtos[$id]['descricao'];?></p>
</div>
</div>
</div>
<div class="row">
    <div style="margin-left: 10cm;" class="col"><a href="index.php">Voltar</a></div>
    <div class="col"><a href="contato.php">Comprar</a></div>
</div>
<?php
include_once './includes/_footer.php';
?>