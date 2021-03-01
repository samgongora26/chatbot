<?php
// conexion

$conn = mysqli_connect("localhost", "root", "roottoor", "bot") or die("Database Error");
//obteniendo el mensaje
$getMesg = mysqli_real_escape_string($conn, $_POST['text']);
header("Content-Type: text/html;charset=utf-8");





//busqueda dentro de las preguntas frecuentes tales como hola, adios, quien eres, etc.
$result = mysqli_query($conn, "SELECT * FROM `frecuentes` WHERE `pregunta` LIKE '%$getMesg%'");
//$run_query = mysqli_query($conn, $result) or die("Error");
$total = mysqli_num_rows($result);                                      
$respuestas=mysqli_fetch_array($result);

// if user query matched to database query we'll show the reply otherwise it go to else statement
if($total > 0){
    echo utf8_decode($respuestas["respuesta"]);
}else{
    //no se encontró dentro de las preguntas frecuentes, entonces ya busca frases
     //busqueda de algo similar en la base de datos
     $result = mysqli_query($conn, "SELECT * FROM `chatbot` WHERE `pregunta` LIKE '%$getMesg%'");
     $total = mysqli_num_rows($result);                                      
     $respuestas=mysqli_fetch_array($result);
     if($total > 0){
         //$replay = 'oh, un clasico: ' . $respuestas["pregunta"] . ' de la pelicula: ' $respuestas["respuesta"];
         //echo $replay;
        $frase = utf8_encode($respuestas["pregunta"]);
        //$frase = mb_convert_encoding($frase, "HTML-ENTITIES", "UTF-8");
        //$frase = preg_replace('[a-zA-Z áéíóúÁÉÍÓÚñÑ.]+',htmlentities('${1}'),$frase);
         
        $pelicula = utf8_encode($respuestas["respuesta"]);
        //$pelicula = mb_convert_encoding($pelicula, "HTML-ENTITIES", "UTF-8");
        //$pelicula = preg_replace('[a-zA-Z áéíóúÁÉÍÓÚñÑ.]+',htmlentities('${1}'),$pelicula);
         
         echo "oh, un clasico. La frase es: <b>" . $frase . "</b> de  <b>" . $pelicula . "</b>";
         //echo "oh, un clasico: " . $respuestas["pregunta"] . " de la pelicula: " $respuestas["respuesta"];
     }else{
         echo "lo siento pero no te entendí :(";
     }
}

?>