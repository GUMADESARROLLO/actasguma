
function editarusuario(id){
	//$('#texto').text(id);
    $.ajax({
        type: "POST",
        url: base_url + "datosusuario/"+id, 
        dataType: 'json',
        //data:'id='+id,
        async:true,
        cache:false,
        success: function(data){
        //console.log(data['tiposusuario']);
        $('#Unombres').val(data['usuario'][0].nombres);
        $('#Uapellidos').val(data['usuario'][0].apellidos);
        $('#Uusuario').val(data['usuario'][0].usuario);
        $('#Upassword').val(data['usuario'][0].password);
        if (data['usuario'][0].estado == 1) {
        	$('#Uactivo').prop( "checked", true );
        	console.log("ACTIVO");
        }
        else{
        	$('#Uactivo').prop( "checked", false );
        }
        }
        if (true) {
        	
        }
    });
}
