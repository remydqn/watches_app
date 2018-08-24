import "bootstrap";


$('#demolist li').on('click', function(){
    $('#datebox').val($(this).text());
});


$('#myModal').modal('show');

$('input[type=radio]').click(function() {
  alert($(this).val());
});
