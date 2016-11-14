	

<div class="container">
  <div class="row">
    <div class="col s12 m12">
	<?php 
		echo "<div class='card'>";
		echo "<div class='card-content'>";
		echo "<span class='num_acta'><h5> ".$actacompleta[0]["id_acta"]." </h5></span>";
		echo "<span class='card-title'><h4> ".$actacompleta[0]["empresa"]." </h4></span>";
		echo "<span class='card-titulos'>LUGAR: ".$actacompleta[0]["lugar"]."</span>";
		echo "<span class='card-titulos'>Fecha: ".$actacompleta[0]["fecha"]."</span>";
		echo "<div class='card-descripcion'>";
		echo "<div class='divider'></div>";
		echo "<div class='card-secciones'>";
		echo "<h5><i class='material-icons'>people</i> PARTICIPANTES</h5>";
		echo "<ul>";
		if (empty($actaparticipantes)) {
			echo "<h5>NO HAY PARTICIPANTES</h5>";
		}else{
			foreach ($actaparticipantes as $participantes) {
				echo "<li class='li_item'>";
				echo "<span class='item_participante'>".$participantes['nombres'].' '.$participantes['apellidos']."</span><span class='item_gerencia'>".$participantes['gerencia']."</span>";
				echo "</li>";
			}
		}
		echo "</ul>";
		echo "</div>";

		echo "<div class='divider'></div>";
		echo "<div class='card-secciones'>";
		echo "<h5><i class='material-icons'>description</i> OBJETIVOS</h5>";
		echo "<div>".$actacompleta[0]["objetivos"]." </div>";
		echo "</div>";

		echo "<div class='divider'></div>";
		echo "<div class='card-secciones'>";
		echo "<h5><i class='material-icons'>description</i> PENDIENTES ANTERIORES</h5>";
		echo "<div>".$actacompleta[0]["pendientes_anteriores"]." </div>";
		echo "</div>";

		echo "<div class='divider'></div>";
		echo "<div class='card-secciones'>";
		echo "<h5><i class='material-icons'>description</i> AVANCES Y ACTIVIDADES A LA FECHA</h5>";
		echo "<div>".$actacompleta[0]["avances_actividades"]." </div>";
		echo "</div>";

		echo "<div class='divider'></div>";
		echo "<div class='card-secciones'>";
		echo "<h5><i class='material-icons'>description</i> ACUERDOS</h5>";
		echo "<div>".$actacompleta[0]["acuerdos"]." </div>";
		echo "</div>";

		echo "</div>";
		echo "</div>";
		echo "<div class='card-action text_center'>";

		echo "<div class='row>";
		echo "<div class='input-field col s12'>";

		echo "<a href='".base_url().'actas'."' class='waves-effect waves-light btn-large color-principal btn_margin'><i class='material-icons left'>keyboard_return</i>VOLVER</a>";

		echo "<a href='".base_url().'modificar/'.$actacompleta[0]["id_acta"]."' class='waves-effect waves-light btn-large color-principal btn_margin'><i class='material-icons left'>mode_edit</i>EDITAR</a>";
		
		echo "</div>";
		echo "</div>";


		echo "</div>";
		echo "</div>";
	 ?>
    </div>
  </div>
</div>