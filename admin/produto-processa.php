<?php 

include_once "../includes/_banco.php";

$acao = $_REQUEST ['acao'];

$id = $_REQUEST['id'];

switch ($acao) {
    case 'excluir':
        $sql = "DELETE FROM produtos WHERE produtoID = ".$id;

        mysqli_query($conn, $sql);

        header('location: ./produto-lista.php');
        break;
    
    case 'salvar';
        $nome = $_POST['nome'];
        $descricao = $_POST['descricao'];

        if ( !isset($_POST['id']) || empty($_POST['id'])) {
            $sql = "INSERT INTO 'produtos'('nome', 'descricao') VALUES ('".$nome."','".$descricao."')";
        }
        

        break;

        case 'salvar':
            $nome = $_POST ['nome'];
            $descricao = $_POST ['descricao'];
        
            if(!isset($_POST['id']) || empty($_POST['id'])){
            $sql ="INSERT INTO 'produtos' ('nome','descricao') VALUES ('".$nome."','".$descricao."')";
            }else{
            $sql = "UPDATE 'produtos' SET 'nome' = '".$nome."', 'descricao' = '".$descricao."'WHERE 'produtoID' = '".$id."'";         
            }
            mysqli_query($conn,$sql);
            header ('location: ./produto-lista.php');
            break;
        
}

?>