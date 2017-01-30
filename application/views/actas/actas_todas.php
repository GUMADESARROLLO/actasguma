
	<div class="container">
      <div class="row">
        <div class="col s12 m12">
        	<div class="row">
	        	<div class="input-field col s12">
					<select id="empresafiltro" name="empresafiltro" class="select">
						<option value="0" disabled selected>SELECCIONAR EMPRESA</option>
						<?php 
							if ($this->session->userdata('tipousuario') != "G") {
								echo "<option value='00'>SELECCIONAR TODAS LAS ACTAS</option>";
							}
						 ?>
						<?php
							foreach ($empresas as $empresa)
								echo '<option value="'.$empresa['id_empresa'].'">'.'SELECCIONAR ACTAS DE - '.$empresa['empresa'].'</option>';
						?>
					</select>
				</div>
        	</div>
        	<div class="notificacion">
        		<i class="material-icons">warning</i>
        		<h3>POR FAVOR SELECCIONAR UNA OPCIÓN</h3>
        	</div>
        	<div id="datos">
        		
        	</div>
        </div>
      </div>
    </div>