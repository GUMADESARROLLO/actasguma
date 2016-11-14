	<div class="container">
		<div class="Grupo z-depth-1">
			<h4><i class="material-icons md-36 left">group</i> USUARIOS</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<div class="collection usuarioscontenedor">
				<?php 
					foreach ($usuarios as $usuario) {
						$estado = 'inactivo';
						if ($usuario["estado"] == 1){
				            $estado = 'activo';
				        }
						echo "<a href='".base_url().'editarusuario/'.$usuario["id_usuario"]."' class='collection-item ".$estado."'>
								  <div>
								  <span>".$usuario["id_usuario"].'. '.$usuario["nombres"].' '.$usuario["apellidos"]."</span>
								  <span class='tusuario'>(".$usuario["nombretipousuario"].")</span>
								  <span class='secondary-content'><i class='material-icons'>mode_edit</i>
								  </span>
								  </div>
							  </a>";
					}
				 ?>
				</div>
			</div>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12 text_center">
				<?php 
					echo "<a href='".base_url().'crearusuario'."' class='waves-effect waves-light btn-large' id='' ><i class='material-icons left'>add_box</i>CREAR NUEVO USUARIO</a>";
				 ?>
			</div>
		</div>
	</div>
<?php 
	//echo "ID TIPO USUARIO SESSION: $id_tipousuario \n";
	//echo "ID EMPRESA SESSION: $id_empresa";
	//echo "TIPO DE USUARIO SESSION: $tipousuario";
 ?>