$(document).ready(function() {

  $( "#empresafiltro").change(function() {
    $('.notificacion').hide();
    $.ajax({
        type: "POST",
        url: base_url + "filtroactas", 
        dataType: 'json',
        data:'empresafiltro='+$("#empresafiltro").val(),
        async:true,
        cache:false,
        success: function(output_string){
          $('#datos').empty();
          if (output_string != false) {
            $('#datos').append(output_string);
          }
          else{
            //console.log("NO HAY DATOS" );
            //$('#datos').html("<div class='notificacion'><i class='material-icons'>warning</i><p>NO HAY ACTAS</p></div>");
            sweetAlert("Oops...", "NO HAY ACTAS!", "info");
          }
        }
    });
  });

  $( "#btnguardaracta" ).on( "click", function(event) {

        var participantes = $('[id^="NAparticipantes"]').map(function() { 
        return $(this).val(); })

        if ($('#NAempresa').val() == undefined) {
          //Materialize.toast("Debe Seleccionar la empresa", 3000);
          swal("DEBE SELECCIONAR UNA EMPRESA!");
          return false;
        }else if($('#NAlugar').val() == undefined){
          //Materialize.toast("Debe Seleccionar el lugar donde se realizo la reunion", 3000);
          swal("DEBE SELECCIONAR EL LUGAR DE REALIZACIÓN DE LA REUNIÓN");
          return false;
        }else if($('#NAfecha').val() == ""){
           //Materialize.toast("Debe Seleccionar indicar la fecha en que se realizo la reunion", 3000);
           swal("DEBE INDICAR LA FECHA DE REALIZACIÓN");
           return false;
        }else if (participantes.length == 0 ) {
          //Materialize.toast("No ha seleccionado los participantes!", 3000);
          swal("POR FAVOR SELECCIONE LOS PARTICIPANTES");
          return false;
        }else if($("#NAobjetivos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>'){
          //Materialize.toast("Por favor agregar los objetivos", 3000);
          swal("LOS OBJETIVOS ESTAN VACIOS");
          return false;
        }else if ($("#NApen_anteriores_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los pendientes anteriores estan vacios!", 3000);
          swal("LOS PENDIENTES ANTERIORES ESTAN VACIOS");
          return false;
        }else if ($("#NAavances_actividades_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los avances y actividades estan vacios!", 3000);
          swal("LOS AVANCES Y ACTIVIDADES A LA FECHA ESTAN VACIOS");
          return false;
        }else if ($("#NAacuerdos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los Acuerdos se encuentran vacios!", 3000);
          swal("LOS ACUERDOS ESTAN VACIOS");
          return false;
        }
        else{
          $('#formactanueva').submit();
        }
        
  });

  $( "#btnupdateacta" ).on( "click", function() {

        var participantes = $('[id^="UAparticipantes"]').map(function() { 
        return $(this).val(); })

        if ($('#UAempresa').val() == undefined) {
          //Materialize.toast("Debe Seleccionar la empresa", 3000);
          swal("DEBE SELECCIONAR UNA EMPRESA!");
          return false;
        }else if($('#UAlugar').val() == undefined){
          //Materialize.toast("Debe Seleccionar el lugar donde se realizo la reunion", 3000);
          swal("DEBE SELECCIONAR EL LUGAR DE REALIZACIÓN DE LA REUNIÓN");
          return false;
        }else if($('#UAfecha').val() == ""){
           //Materialize.toast("Debe Seleccionar indicar la fecha en que se realizo la reunion", 3000);
           swal("DEBE INDICAR LA FECHA DE REALIZACIÓN");
           return false;
        }else if (participantes.length == 0) {
          //Materialize.toast("No ha seleccionado los participantes!", 3000);
          swal("POR FAVOR SELECCIONE LOS PARTICIPANTES");
          return false;
        }else if($("#UAobjetivos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>'){
          //Materialize.toast("Por favor agregar los objetivos", 3000);
          swal("LOS OBJETIVOS ESTAN VACIOS");
          return false;
        }else if ($("#UApen_anteriores_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los pendientes anteriores estan vacios!", 3000);
          swal("LOS PENDIENTES ANTERIORES ESTAN VACIOS");
          return false;
        }else if ($("#UAavances_actividades_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los avances y actividades estan vacios!", 3000);
          swal("LOS AVANCES Y ACTIVIDADES A LA FECHA ESTAN VACIOS");
          return false;
        }else if ($("#UAacuerdos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          //Materialize.toast("Los Acuerdos se encuentran vacios!", 3000);
          swal("LOS ACUERDOS ESTAN VACIOS");
          return false;
        }
        else{
          $('#formactaupdate').submit();
        }
  });

  $('#btnguardarusuario').on( "click", function() {
        if ($('#NUnombres').val() == "") {
          swal("EL CAMPO NOMBRES ESTA VACIO!")
          return false;
        }else if($('#NUapellidos').val() == ""){
          swal("EL CAMPO APELIDOS ESTA VACIO!")
          return false;
        }else if($('#NUusuario').val() == ""){
          swal("EL CAMPO USUARIO ESTA VACIO!")
          return false;
        }else if($('#NUpassword').val() == ""){
          swal("EL CAMPO PASSWORD ESTA VACIO!")
          return false;
        }else if($('#NUtipousuario').val() == undefined){
          swal("POR FAVOR SELECCIONE EN TIPO DE USUARIO!")
          return false;
        }else if($('#NUempresa').val() == undefined){
          swal("TIENE QUE ASIGNAR EL USUARIO A UNA EMPRESA!")
          return false;
        }else{
          if ($('#NUactivo').is(':checked')) {
            $('#formnuevousuario').submit();
          }
          else{
            swal({
              title: "ALERTA!",
              text: "NO HA ACTIVADO EL USUARIO, SEGURO QUE DECEA GUARDAR?",
              type: "warning",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "SI",
              cancelButtonText: "NO",
              closeOnConfirm: false,
              closeOnCancel: true
            },
            function(isConfirm){
              if (isConfirm) {
                $('#formnuevousuario').submit();
              }
            });
          }
        }
        //FIN VALIDACION
  });

  $('#btnactualizarusuario').on( "click", function() {
        if ($('#Unombres').val() == "") {
          swal("EL CAMPO NOMBRES ESTA VACIO!")
          return false;
        }else if($('#Uapellidos').val() == ""){
          swal("EL CAMPO APELIDOS ESTA VACIO!")
          return false;
        }else if($('#Uusuario').val() == ""){
          swal("EL CAMPO USUARIO ESTA VACIO!")
          return false;
        }else if($('#Utipousuario').val() == undefined){
          swal("POR FAVOR SELECCIONE EN TIPO DE USUARIO!")
          return false;
        }else if($('#Uempresa').val() == undefined){
          swal("TIENE QUE ASIGNAR EL USUARIO A UNA EMPRESA!")
          return false;
        }else{
          if ($('#Uactivo').is(':checked')) {
            $('#formactualizarusuario').submit();
          }
          else{
            swal({
              title: "ALERTA!",
              text: "NO HA ACTIVADO EL USUARIO, SEGURO QUE DECEA GUARDAR?",
              type: "warning",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "SI",
              cancelButtonText: "NO",
              closeOnConfirm: false,
              closeOnCancel: true
            },
            function(isConfirm){
              if (isConfirm) {
                $('#formactualizarusuario').submit();
              }
            });
          }
        }
        //FIN VALIDACION
  });
//FIN READY
});