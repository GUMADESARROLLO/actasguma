
	<form id="formactanueva" role="form" action="<?php echo base_url();?>guardar_acta" method="POST">
	<div class="container">
		<div class="cabezera">
			<img src="<?php echo base_url();?>asset/img/guma.png">
			<h4>ACTA DE REUNION</h4>
		</div>

		<div class="divider dividerdg"></div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">dashboard</i> DATOS GENERALES</h4>
			<div class="divider dividerdg"></div>
			<div class="row">
				<div class="col s12">
			        <div class="input-field col s12">
					    <select id="NAempresa" name="NAempresa">
					   		<option value="" disabled selected>SELECCIONAR EMPRESA O GERENCIA</option>
							<?php
							foreach ($empresas as $empresa)
								echo '<option value="'.$empresa['id_empresa'].'">'.$empresa['empresa'].'</option>';
							?>
						</select>
					</div>
					<div class="input-field col s12">
					    <select id="NAlugar" name="NAlugar">
					      <option value="0" disabled selected>SELECCIONAR LUGAR DE LA REUNION</option>
					      <?php
							foreach ($lugares as $lugar)
								echo '<option value="'.$lugar['id_lugar'].'">'.$lugar['lugar'].'</option>';
							?>
					    </select>
					</div>
					<div class="input-field col s12">
						<input type="date" class="datepicker" id="NAfecha" name="NAfecha">
						<label>FECHA</label>
					</div>
					<div class="input-field col s12">
					    <select multiple id="NAparticipantes[]" name="NAparticipantes[]" class="NAparticipantes">
					   		<option value="" disabled selected>SELECCIONAR PARTICIPANTES</option>
					   		<option value="00">TODOS LOS PARTICIPANTES</option>
							<?php
							foreach ($participantes as $participantes)
								echo '<option  value="'.$participantes['id_participante'].'">'.$participantes['nombres']." ".$participantes['apellidos'].'</option>';
							?>
						</select>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<label class="label">PARTICIPANTES INVITADOS</label>
						</div>
					</div>
					<div class="input-field col s12">
			          <textarea id="NAinvitados" name="NAinvitados" class="editor"></textarea>
			        </div>
			        <div class="row">
						<div class="input-field col s12">
							<label class="label">OBJETIVOS</label>
						</div>
					</div>
					<div class="input-field col s12">
			          <textarea id="NAobjetivos" name="NAobjetivos" class="editor"></textarea>
			        </div>
				</div>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> PENDIENTES ANTERIORES</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="NApen_anteriores" name="NApen_anteriores" class="editor"></textarea>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> AVANCES Y ACTIVIDADES A LA FECHA</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="NAavances_actividades" name="NAavances_actividades" class="editor"></textarea>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> ACUERDOS</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="NAacuerdos" name="NAacuerdos" class="editor"></textarea>
			</div>
		</div>

		<div class="row text_center">
			<div class="input-field col s12">
				<a href=" <?php echo base_url();?>actas" class="waves-effect waves-light btn-large"type="button"><i class="material-icons left">cancel</i>CANCELAR</a>
				<button class="waves-effect waves-light btn-large center-block" id="btnguardaracta" type="button"><i class="material-icons left">done_all</i>Guardar</button>
			</div>
		</div>
    </div>
	
</form>
<?php 
//echo print_r($lugares);
 ?>