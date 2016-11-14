
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

        <?php
	        
	        /*if (empty($actas)) {
	        	echo "<i class='material-icons icoinfo'>folder</i>";
	        	echo "<h2 class='icoinfotext'>NO HAY DATOS</h2>";
	        }else{
	        	foreach ($actas as $acta) {
	        		echo "<div class='card'>";
	 				echo "<div class='card-content'>";
	 				echo "<span class='num_acta'><h5> $acta->id_acta </h5></span>";
	 				echo "<span class='card-title'><h4> $acta->empresa </h4></span>";
	 				echo "<span class='card-titulos'>LUGAR: $acta->lugar </span>";
	 				echo "<span class='card-titulos'>Fecha: $acta->fecha </span>";
	 				echo "<div class='card-descripcion'>";
	 				echo "<h5><i class='material-icons'>description</i> OBJETIVOS</h5>";
	 				echo "<div> $acta->objetivos </div>";
	 				echo "</div>";
	 				echo "</div>";
	 				echo "<div class='card-action'>";
	 				echo "<a href='".base_url()."editar/".$acta->id_acta."'>EDITAR EL ACTA</a>";
	 				echo "<a href='".base_url()."actacompleta/".$acta->id_acta."'>VER ACTA COMPLETA</a>";
	 				echo "</div>";
	 				echo "</div>";
	        	}
	        }*/

         ?>
        </div>
      </div>
    </div>