<form id="formactaupdate" role="form" action="<?php echo base_url();?>actualizaracta/<?php echo $actacompleta[0]["id_acta"]; ?>" method="POST">
	<div class="container">
		<div class="cabezera">
			<h4>EDICIÓN DE ACTA</h4>
		</div>

		<div class="divider dividerdg"></div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">dashboard</i> DATOS GENERALES</h4>
			<div class="divider dividerdg"></div>
			<div class="row">
				<div class="col s12">
			        <div class="input-field col s12">
						<select id="UAempresa" name="UAempresa">
							<option value="" disabled selected>SELECCIONAR EMPRESA</option>
							<?php
								foreach ($empresas as $empresa)
									if ($actacompleta[0]["id_empresa"]==$empresa['id_empresa']) {
										echo '<option selected value="'.$empresa['id_empresa'].'">'.$empresa['empresa'].'</option>';		
									}else{
										echo '<option value="'.$empresa['id_empresa'].'">'.$empresa['empresa'].'</option>';
									}
							?>
						</select>
					</div>
					<div class="input-field col s12">
						<select id="UAlugar" name="UAlugar">
							<option value="0" disabled selected>SELECCIONAR LUGAR DE LA REUNION</option>
							<?php
								foreach ($lugares as $lugar)
								if ($actacompleta[0]["id_lugar"]==$lugar['id_lugar']) {
									echo '<option selected value="'.$lugar['id_lugar'].'">'.$lugar['lugar'].'</option>';
								}else {
									echo '<option value="'.$lugar['id_lugar'].'">'.$lugar['lugar'].'</option>';
								}
							?>
						</select>
					</div>
					<div class="input-field col s12">
						<input type="date" class="datepicker" value="<?php echo $actacompleta[0]["fecha"]; ?>" id="UAfecha" name="UAfecha">
						<label>FECHA</label>
					</div>
					<div class="input-field col s12">
						<select multiple id="UAparticipantes[]" name="UAparticipantes[]">
							<option value="0" disabled selected>SELECCIONAR PARTICIPANTES</option>
							<?php
								foreach ($participantes as $participante) {
									$select = '';
								    foreach ($actaparticipantes as $actaparticipante) {
								        if ($participante["id_participante"] == $actaparticipante["id_participante"]){
								            $select = 'selected';
								        }
								    }
								    echo '<option '. $select .' value="'.$participante['id_participante'].'">'.$participante['nombres']." ".$participante['apellidos'].'</option>';
								}

							?>
						</select>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<label class="label">OBJETIVOS</label>
						</div>
					</div>
					<div class="input-field col s12">
						<textarea id="UAobjetivos" name="UAobjetivos" class="editor">
						<?php 
							echo $actacompleta[0]["objetivos"];
						?>
						</textarea>
			        </div>
				</div>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> PENDIENTES ANTERIORES</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="UApen_anteriores" name="UApen_anteriores" class="editor">
				<?php 
					echo $actacompleta[0]["pendientes_anteriores"];
				 ?>
				</textarea>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> AVANCES Y ACTIVIDADES A LA FECHA</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="UAavances_actividades" name="UAavances_actividades" class="editor">
				<?php 
					echo $actacompleta[0]["avances_actividades"];
			 	?>
				</textarea>
			</div>
		</div>

		<div class="Grupo z-depth-1">
			<h4><i class="material-icons">description</i> ACUERDOS</h4>
			<div class="divider dividerdg"></div>
			<div class="input-field col s12">
				<textarea id="UAacuerdos" name="UAacuerdos" class="editor">
				<?php 
					echo $actacompleta[0]["acuerdos"];
				 ?>
				</textarea>
			</div>
		</div>

		<div class="row text_center">
			<div class="input-field col s12">
			<?php 
				echo "<a href='".base_url()."actacompleta/".$actacompleta[0]["id_acta"]."' class='waves-effect waves-light btn-large color-principal btn_margin'><i class='material-icons left'>cancel</i>CANCELAR</a h>";
			 ?>
				
				<button class="waves-effect waves-light btn-large color-principal btn_margin" id="btnupdateacta" type="button"><i class="material-icons left">done_all</i>Actualizar</button>
			</div>
		</div>

    </div>
</form>
	

<?php 
//echo print_r($actaparticipantes);
 ?>