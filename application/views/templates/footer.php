	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<?php echo base_url();?>asset/tinymce/tinymce.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url();?>asset/js/sweetalert.min.js "></script>
	<script type="text/javascript" src="<?php echo base_url();?>asset/js/jquery.js "></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".button-collapse").sideNav();
			$('select').material_select();
	  		$('textarea').trigger('autoresize');
	  		$('.tooltipped').tooltip({delay: 50});
			$('.datepicker').pickadate({
				monthsFull: [ 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre' ],
				weekdaysFull: [ 'Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado' ],
				today: 'hoy',
			    clear: 'borrar',
			    close: 'cerrar',
				//format: 'dd - mm - yyyy',
				format: 'yyyy/mm/dd',
				selectMonths: true,
				selectYears: 15
			});
		});
		$('.tooltipped').tooltip({delay: 50});
		tinymce.init({ 
			selector:'.editor',
			min_height: 300,
			menu: {
				    tools: {title: 'Herramientas', items: 'removeformat'}
				  },
			invalid_styles: 'color font-size font-family margin padding'
		});
		$('.modal').modal();
	</script>
</body>
</html>
