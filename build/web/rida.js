$(document).ready(function() {   });

 function Okey() {
   var ida=$(".identifiant").val(); g(ida);        } 

    function g(x){
        
        $.ajax({
            url:'verification_ajax.jsp',
            data:'id='+x,
            type: 'POST',
            dataType:'html',
            success: function(html) { $("#nv_form").html(html);  }
            
        });
    }
    
    
