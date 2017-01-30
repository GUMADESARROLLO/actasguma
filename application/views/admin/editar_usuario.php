	<form id="formactualizarusuario" role="form" action="<?php echo base_url();?>actualizarusuario/<?php echo $usuario[0]['id_usuario'] ?>" method="POST">
		<div class="container">
			<div class="row">
				<div class="col s12 m12">
					<h4><i class="material-icons md-36 left">edit</i> MODIFICAR USUARIO</h4>
					<div class="divider" style="margin-bottom: 40px;"></div>
					<div class="row">
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='NOMBRES' id='Unombres' name='Unombres' type='text' class='text' value='".$usuario[0]['nombres']."'>";
							 ?>
							
							<label>NOMBRES</label>
						</div>
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='APELLIDOS' id='Uapellidos' name='Uapellidos' type='text' class='text' value='".$usuario[0]['apellidos']."'>";
							 ?>
							<label>APELLIDOS</label>
						</div>
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='USUARIO' id='Uusuario' name='Uusuario' type='text' value='".$usuario[0]['usuario']."'>";
							 ?>
							<label>USUARIO</label>
						</div>
						<div class="input-field col s6">
							<input placeholder='CONTRASEÑA' id="Upassword" name="Upassword" type="password" value="">
							<label>CONTRASEÑA</label>
						</div>
						<div class="input-field col s6 chk">
							<p>
								<?php 
								 $checked = "";
									if ($usuario[0]['estado'] == 1) {
										$checked = "checked";
									}
									echo "<input type='checkbox' class='filled-in' id='Uactivo' name='Uactivo'  ".$checked." value='1'/>";
								 ?>
								
								<label for="Uactivo">USUARIO ACTIVO</label>
							</p>
						</div>
						<div class="input-field col s12">
						<select id="Utipousuario" name="Utipousuario">
							<option value="0" disabled selected>SELECCIONE UN TIPO DE USUARIO</option>
							<?php
								foreach ($tiposusuario as $tipo)
									if ($usuario[0]['id_tipousuario'] == $tipo["id_tipousuario"]) {
										echo '<option selected value="'.$tipo['id_tipousuario'].'">'.$tipo['nombretipousuario'].'</option>';		
									}else{
										echo '<option value="'.$tipo['id_tipousuario'].'">'.$tipo['nombretipousuario'].'</option>';
									}
							?>
						</select>
						<label>TIPO DE USUARIO</label>
						</div>
						<div class="input-field col s12">
							<select id="Uempresa" name="Uempresa">
								<option value="0" disabled selected>SELECCIONAR EMPRESA O GERENCIA</option>
								<?php
								foreach ($empresas as $empresa)
									if ($usuario[0]['id_empresa'] == $empresa["id_empresa"]) {
										echo '<option selected value="'.$empresa['id_empresa'].'">'.$empresa['empresa'].'</option>';		
									}else{
										echo '<option value="'.$empresa['id_empresa'].'">'.$empresa['empresa'].'</option>';
									}
								?>
							</select>
						</div>
						
						<div class="row text_center">
							<div class="input-field col s12 text_center">
								<a href=" <?php echo base_url();?>usuarios" class="waves-effect waves-light btn-large"><i class="material-icons left">cancel</i>CANCELAR</a>
								<button class="waves-effect waves-light btn-large" id="btnactualizarusuario" type="button"><i class="material-icons left">done_all</i>Guardar</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<?php 
		//echo print_r($usuario);
		//echo print_r($usuario[0]['id_tipousuario']);
		//echo print_r($tipo[0]['id_tipousuario']);
	 ?>