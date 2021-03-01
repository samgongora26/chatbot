        $(document).ready(function(){
            $("#send-btn").on("click", function(){
                $value = $("#data").val();
                $msg = '<div class="d-flex justify-content-end mb-4"><div class="msg_cotainer_send">'+ $value + '<span class="msg_time_send">8:55 AM, Today</span> </div> <div class="img_cont_msg"> <img src="img/d3.jpg" class="rounded-circle user_img_msg"> </div> </div>';
                //$msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');
                
                // start ajax code
                $.ajax({
                    url: 'php/app.php',
                    type: 'POST',
                    data: 'text='+$value,
                    success: function(result){
                        $replay = '<div class="d-flex justify-content-start mb-4"> <div class="img_cont_msg"> <img src="img/tarantulino.jpg" class="rounded-circle user_img_msg"> </div> <div class="msg_cotainer">' + result +  '<span class="msg_time">Hoy, ahora</span> </div> </div>'
                        //$replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>'+ result +'</p></div></div>';
                        $(".form").append($replay);
                        //$("#chat_form").scrollTop($("#chat_form")[0].scrollHeight);
                        document.getElementById('chat_form').scrollIntoView(true)
                        var div = document.getElementById('#chat_form');
                        div.scrollTop = '9999';
                    }
                });
            });
            $(window).on('keydown', function(e) {
                if (e.which == 13) {
                    $value = $("#data").val();
                    $msg = '<div class="d-flex justify-content-end mb-4"><div class="msg_cotainer_send">'+ $value + '<span class="msg_time_send">Hoy, ahora</span> </div> <div class="img_cont_msg"> <img src="img/d3.jpg" class="rounded-circle user_img_msg"> </div> </div>';
                    //$msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                    $(".form").append($msg);
                    $("#data").val('');
                    // start ajax code
                    $.ajax({
                        url: 'php/app.php',
                        type: 'POST',
                        data: 'text='+$value,
                        success: function(result){
                            $replay = '<div class="d-flex justify-content-start mb-4"> <div class="img_cont_msg"> <img src="img/tarantulino.jpg" class="rounded-circle user_img_msg"> </div> <div class="msg_cotainer">' + result +  '<span class="msg_time">Hoy, ahora</span> </div> </div>'
                            //$replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>'+ result +'</p></div></div>';
                            $(".form").append($replay);
                            //$(".form").scrollTop($(".form")[0].scrollHeight);
                            //document.getElementById('chat_form').scrollIntoView(true)
                            var div = document.getElementById('#chat_form');
                            div.scrollTop = '9999';
                        }
                    });
                    

                  return false;
                }
              })
        });