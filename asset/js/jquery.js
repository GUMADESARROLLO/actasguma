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
        success: function(html){
          $('#datos').empty();
          if (html != false) {
            $('#datos').append(html);
          }
          else{
            sweetAlert("Oops...", "NO HAY ACTAS!", "info");
          }
        }
    });
  }); //FIN VALIDACION

  //-------------------------------------------------------------------------


  //SELECT PARTICIPANTES
  $( ".NAparticipantes" ).change(function() {

    if ($('.NAparticipantes option').eq(1).prop('selected') == true) {
      $('.NAparticipantes').material_select('destroy');
      $('.NAparticipantes option').not($('.NAparticipantes option').eq(1)).prop('disabled', true);
      $('.NAparticipantes').material_select();
    }else{
      $('.NAparticipantes').material_select('destroy');
      $('.NAparticipantes option').not($('.NAparticipantes option').eq(0)).prop('disabled', false);
      $('.NAparticipantes').material_select();
    }

    if (
         $('.NAparticipantes option').eq(2).prop('selected') == true 
      || $('.NAparticipantes option').eq(3).prop('selected') == true 
      || $('.NAparticipantes option').eq(4).prop('selected') == true 
      || $('.NAparticipantes option').eq(5).prop('selected') == true 
      || $('.NAparticipantes option').eq(6).prop('selected') == true 
      || $('.NAparticipantes option').eq(7).prop('selected') == true
      || $('.NAparticipantes option').eq(8).prop('selected') == true
      || $('.NAparticipantes option').eq(9).prop('selected') == true
      || $('.NAparticipantes option').eq(10).prop('selected') == true
      ) {
      $('.NAparticipantes').material_select('destroy');
      $('.NAparticipantes option').eq(1).prop('disabled', true);
      $('.NAparticipantes').material_select();
    }

  });

  $( ".UAparticipantes" ).change(function() {

    if ($('.UAparticipantes option').eq(1).prop('selected') == true) {
      $('.UAparticipantes').material_select('destroy');
      $('.UAparticipantes option').not($('.UAparticipantes option').eq(1)).prop('disabled', true);
      $('.UAparticipantes').material_select();
    }else{
      $('.UAparticipantes').material_select('destroy');
      $('.UAparticipantes option').not($('.UAparticipantes option').eq(0)).prop('disabled', false);
      $('.UAparticipantes').material_select();
    }

     if (
           $('.UAparticipantes option').eq(2).prop('selected') == true 
        || $('.UAparticipantes option').eq(3).prop('selected') == true 
        || $('.UAparticipantes option').eq(4).prop('selected') == true 
        || $('.UAparticipantes option').eq(5).prop('selected') == true 
        || $('.UAparticipantes option').eq(6).prop('selected') == true 
        || $('.UAparticipantes option').eq(7).prop('selected') == true
        || $('.UAparticipantes option').eq(8).prop('selected') == true
        || $('.UAparticipantes option').eq(9).prop('selected') == true
        || $('.UAparticipantes option').eq(10).prop('selected') == true
        ) {
        $('.UAparticipantes').material_select('destroy');
        $('.UAparticipantes option').eq(1).prop('disabled', true);
        $('.UAparticipantes').material_select();
      }
  });

  if (
       $('.UAparticipantes option').eq(2).prop('selected') == true 
    || $('.UAparticipantes option').eq(3).prop('selected') == true 
    || $('.UAparticipantes option').eq(4).prop('selected') == true 
    || $('.UAparticipantes option').eq(5).prop('selected') == true 
    || $('.UAparticipantes option').eq(6).prop('selected') == true 
    || $('.UAparticipantes option').eq(7).prop('selected') == true
    || $('.UAparticipantes option').eq(8).prop('selected') == true
    || $('.UAparticipantes option').eq(9).prop('selected') == true
    || $('.UAparticipantes option').eq(10).prop('selected') == true
    ) {
    $('.UAparticipantes').material_select('destroy');
    $('.UAparticipantes option').eq(1).prop('disabled', true);
    $('.UAparticipantes').material_select();
  }
  //-------------------------------------------------------------------------

  $( "#btnguardaracta" ).on( "click", function() {
      
        var participantes = $('[id^="NAparticipantes"]').map(function() { 
        return $(this).val(); })

        if ($('#NAempresa').val() == undefined) {
          swal("DEBE SELECCIONAR UNA EMPRESA!");
          return false;
        }else if($('#NAlugar').val() == undefined){
          swal("DEBE SELECCIONAR EL LUGAR DE REALIZACIÓN DE LA REUNIÓN");
          return false;
        }else if($('#NAfecha').val() == ""){
           swal("DEBE INDICAR LA FECHA DE REALIZACIÓN");
           return false;
        }else if (participantes.length == 0 ) {
          swal("POR FAVOR SELECCIONE LOS PARTICIPANTES");
          return false;
        }else if($("#NAobjetivos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>'){
          swal("LOS OBJETIVOS ESTAN VACIOS");
          return false;
        }else if ($("#NApen_anteriores_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS PENDIENTES ANTERIORES ESTAN VACIOS");
          return false;
        }else if ($("#NAavances_actividades_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS AVANCES Y ACTIVIDADES A LA FECHA ESTAN VACIOS");
          return false;
        }else if ($("#NAacuerdos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS ACUERDOS ESTAN VACIOS");
          return false;
        }
        else{
          console.log();
          if ($("#NAinvitados_ifr").contents().find("#tinymce").html() != '<p><br data-mce-bogus="1"></p>') {
            $('#formactanueva').submit();
          }
          else{
            swal({
              title: "CONFIRMACION!",
              text: "EL ACTA SE GUARDARA SIN INVITADOS",
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
                $('#formactanueva').submit();
              }
            });
          }
        }
        //console.log($('#NAparticipantes').val());
  }); //FIN VALIDACION

  $( "#btnupdateacta" ).on( "click", function() {

        var participantes = $('[id^="UAparticipantes"]').map(function() { 
        return $(this).val(); })

        if ($('#UAempresa').val() == undefined) {
          swal("DEBE SELECCIONAR UNA EMPRESA!");
          return false;
        }else if($('#UAlugar').val() == undefined){
          swal("DEBE SELECCIONAR EL LUGAR DE REALIZACIÓN DE LA REUNIÓN");
          return false;
        }else if($('#UAfecha').val() == ""){
           swal("DEBE INDICAR LA FECHA DE REALIZACIÓN");
           return false;
        }else if (participantes.length == 0) {
          swal("POR FAVOR SELECCIONE LOS PARTICIPANTES");
          return false;
        }else if($("#UAobjetivos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>'){
          swal("LOS OBJETIVOS ESTAN VACIOS");
          return false;
        }else if ($("#UApen_anteriores_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS PENDIENTES ANTERIORES ESTAN VACIOS");
          return false;
        }else if ($("#UAavances_actividades_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS AVANCES Y ACTIVIDADES A LA FECHA ESTAN VACIOS");
          return false;
        }else if ($("#UAacuerdos_ifr").contents().find("#tinymce").html() == '<p><br data-mce-bogus="1"></p>') {
          swal("LOS ACUERDOS ESTAN VACIOS");
          return false;
        }
        else{
          $('#formactaupdate').submit();
        }
  }); //FIN VALIDACION

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
  });//FIN VALIDACION

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
  });//FIN VALIDACION

});//FIN READY