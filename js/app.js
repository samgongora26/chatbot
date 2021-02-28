        $(document).ready(function(){
            $("#send-btn").on("click", function(){
                $value = $("#data").val();
                $msg = '<div class="d-flex justify-content-end mb-4"><div class="msg_cotainer_send">'+ $value + '<span class="msg_time_send">8:55 AM, Today</span> </div> <div class="img_cont_msg"> <img src="img/d3.jpg" class="rounded-circle user_img_msg"> </div> </div>';
                //$msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');
                
                // start ajax code
                /*$.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text='+$value,
                    success: function(result){
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>'+ result +'</p></div></div>';
                        $(".form").append($replay);
                        // when chat goes down the scroll bar automatically comes to the bottom
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });*/
            });
            $(window).on('keydown', function(e) {
                if (e.which == 13) {
                    $value = $("#data").val();
                    $msg = '<div class="d-flex justify-content-end mb-4"><div class="msg_cotainer_send">'+ $value + '<span class="msg_time_send">8:55 AM, Today</span> </div> <div class="img_cont_msg"> <img src="img/d3.jpg" class="rounded-circle user_img_msg"> </div> </div>';
                    //$msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                    $(".form").append($msg);
                    $("#data").val('');
                  return false;
                }
              })
        });