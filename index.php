<?php
require_once './config/conexao.php';
session_start();

if (isset($_SESSION['usuario'])) {
    header('Location: index_aut.php');
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HCE TV CORPORATIVA</title>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>

<body>
    <div id="tv-container">
        <video id="video" controls autoplay>
            <!-- A tag <source> será adicionada dinamicamente via JavaScript -->
            Your browser does not support the video tag.
        </video>
    </div>
    <footer>
        <div class="clock-container" id="clock"></div>
        <p>HCE CFTV</p>        
        <marquee behavior="" direction="">Não alimente animais dentro do HCE! Seja um exemplo e mantenha a higiene do
            local. Os animais merecem nosso respeito e cuidado, mas nossa prioridade é manter um ambiente hospitalar
            seguro, limpo e acolhedor para todos.            
        </marquee>        
        <script>
            function updateTime() {
                var now = new Date();
                var hours = now.getHours();
                var minutes = now.getMinutes();
                // var seconds = now.getSeconds();
                hours = hours < 10 ? '0' + hours : hours;
                minutes = minutes < 10 ? '0' + minutes : minutes;
                // seconds = seconds < 10 ? '0' + seconds : seconds;
                // var timeString = hours + ':' + minutes + ':' + seconds;
                var timeString = hours + ':' + minutes;
                document.getElementById('clock').textContent = timeString;
            }
            updateTime();
            setInterval(updateTime, 1000);

            //Simula uma interação do usuário (clique) para ativar o autoplay do vídeo
            /*document.addEventListener('DOMContentLoaded', function() {
                var video = document.getElementById('video');
                video.muted = true; // Desativa o áudio
                video.play().then(function() {
                    setTimeout(function() {
                        video.pause();
                        video.muted = false; // Ativa o áudio novamente
                    }, 100);
                });
            });*/

            //Reproduz o vídeo automaticamente
            /*document.addEventListener('DOMContentLoaded', function() {
                var video = document.getElementById('video');
                video.muted = true; // Desativa o áudio
                video.play();
            });*/

            // Lista de vídeos
            var videoList = [
                'assets/images/01-Video-Institucional.mp4',
                'assets/images/02-Video-Institucional.mp4',
                'assets/images/03-Video-Institucional.mp4',
                'assets/images/04-Video-Institucional.mp4'
            ];
            var currentVideoIndex = 0;
            var videoElement = document.getElementById('video');

            // Função para carregar o vídeo atual
            function loadVideo(index) {
                videoElement.src = videoList[index];
                videoElement.load();
                videoElement.play();
            }

            // Evento para carregar o próximo vídeo quando o atual terminar
            videoElement.addEventListener('ended', function () {
                currentVideoIndex++;
                if (currentVideoIndex >= videoList.length) {
                    currentVideoIndex = 0;
                }
                loadVideo(currentVideoIndex);
            });

            // Carrega o primeiro vídeo
            loadVideo(currentVideoIndex);

            //Reproduz o vídeo automaticamente após o evento canplaythrough
            document.addEventListener('DOMContentLoaded', function () {                
                videoElement.muted = true; // Desativa o áudio
                videoElement.addEventListener('canplaythrough', function () {
                    videoElement.play();
                });
            });

            //Ativa o áudio após um breve intervalo
            /*document.getElementById('video').addEventListener('canplay', function() {
                setTimeout(function() {
                    document.getElementById('video').muted = false;
                }, 100);
            });*/
        </script>
    </footer>
</body>

</html>