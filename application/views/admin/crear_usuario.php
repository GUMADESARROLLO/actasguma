	<form id="formnuevousuario" role="form" action="<?php echo base_url();?>guardarusuario" method="POST">
		<div class="container">
			<div class="row">
				<div class="col s12 m12">
					<h4><i class="material-icons md-36 left">person_add</i> CREAR NUEVO USUARIO</h4>
					<div class="divider" style="margin-bottom: 40px;"></div>
					<div class="row">
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='NOMBRES' id='NUnombres' name='NUnombres' type='text' class='text'>";
							 ?>
							
							<label>NOMBRES</label>
						</div>
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='APELLIDOS' id='NUapellidos' name='NUapellidos' type='text' class='text'>";
							 ?>
							<label>APELLIDOS</label>
						</div>
						<div class="input-field col s6">
							<?php 
								echo "<input placeholder='USUARIO' id='NUusuario' name='NUusuario' type='text'>";
							 ?>
							<label>USUARIO</label>
						</div>
						<div class="input-field col s6">
							<input placeholder='CONTRASEÑA' id="NUpassword" name="NUpassword" type="password">
							<label>CONTRASEÑA</label>
						</div>
						<div class="input-field col s6 chk">
							<p>
								<?php 
									echo "<input type='checkbox' class='filled-in' id='NUactivo' name='NUactivo' value='1'/>";
								 ?>
								<label for="NUactivo">USUARIO ACTIVO</label>
							</p>
						</div>
						<div class="input-field col s12">
						<select id="NUtipousuario" name="NUtipousuario">
							<option value="0" disabled selected>SELECCIONE UN TIPO DE USUARIO</option>
							<?php
								foreach ($tiposusuario as $tipo) {
									echo "<option value='".$tipo["id_tipousuario"]."'>".$tipo["nombretipousuario"]."</option>";
								}
							?>
						</select>
						<label>TIPO DE USUARIO</label>
						</div>
						<div class="input-field col s12">
							<select id="NUempresa" name="NUempresa">
								<option value="0" disabled selected>SELECCIONAR EMPRESA O GERENCIA</option>
								<?php
									foreach ($empresas as $empresa) {
										echo "<option value='".$empresa["id_empresa"]."'>".$empresa["empresa"]."</option>";
									}
								?>
							</select>
						</div>
						
						<div class="row text_center">
							<div class="input-field col s12 text_center">
								<a href=" <?php echo base_url();?>usuarios" class="waves-effect waves-light btn-large"type="button"><i class="material-icons left">cancel</i>CANCELAR</a>
								<button class="waves-effect waves-light btn-large" id="btnguardarusuario" type="button"><i class="material-icons left">done_all</i>Guardar</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<?php 
		//echo print_r($empresas);
	 ?>