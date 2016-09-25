     $(document).ready(function()  { r(); rech_ens();  mod(); maf();
             } ); 
             function maf() {
$(".suppa").click(function() {  var a=$(this).attr("id");   g(a);  });
}
function maf() {
$(".suppa").click(function() {  var a=$(this).attr("id");  g_s(a);  });
}
function g_s(x) {
    $.ajax({
        url: 'Fsupp.jsp',
        Type: 'POST',
        dataType: 'html',
        data:"i="+x,
        success: function(reponse) { $("#r").html(reponse); },
        error: function() { alert("decnxion"); } 
    });
}
function g(x) {
    $.ajax({
        url: 'Fsupp.jsp',
        Type: 'POST',
        dataType: 'html',
        data:"i="+x,
        success: function(reponse) { $("#r").html(reponse); },
        error: function() { alert("decnxion"); } 
    });
}
function mod() { $(".modif").click(function() {   fairMod($(this).attr("id"));   }); }
function fairMod(x)  {
      $("#tel").show();
    $.ajax({ 
  url:'modif.jsp',
  type: 'POST',
  dataType: 'html',
  data:'id='+x,
  success:function(reponse) {    $("#tel").hide(); $("#modification").html(reponse); }, 
  error: function() { alert("deconnexion"); } 
    });   
}

   function rech_ens() {
               $("#cherche_ens").keyup(function() {  gens($("#cherche_ens").val()); } );
               $("#cherche_role_ens").keyup(function() { kens($("#cherche_role_ens").val()); } );
    }
            function gens(s)  {
             $.ajax({
                   url: 'ens1.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#r").html(reponse);  } } ); } 
            function kens(s)  {
             $.ajax({
                   url: 'ens2.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#r").html(reponse);  } } ); } 
                function r() {
               $("#cherche").keyup(function() {  g($("#cherche").val()); } );
               $("#cherche_role").keyup(function() { k($("#cherche_role").val()); } );
    }
            function g(s)  {
             $.ajax({
                   url: 'e.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#rbi").html(reponse);  } } ); } 
            function k(s)  {
             $.ajax({
                   url: 'a.jsp' ,
                   type: "POST",
                   dataType: 'html',
                   data: "id="+s,
       
                    error:function () { alert("deconexion"); },
                    success: function (reponse) {  $("#rbi").html(reponse);  } } ); } 