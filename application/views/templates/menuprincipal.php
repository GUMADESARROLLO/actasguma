	<nav class="color-principal">
	    <div class="nav-wrapper">
	    	<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li class="<?php if($this->uri->segment(1)=="actas" || $this->uri->segment(1)=="actacompleta" || $this->uri->segment(1)=="modificar"){echo "active";}?>"><a href="<?php echo base_url();?>actas">ACTAS GUMA</a></li>
				<li class="<?php if($this->uri->segment(1)=="nueva"){echo "active";}?>"><a href="<?php echo base_url();?>nueva">NUEVA ACTA</a></li>
				<?php 
					if ($this->session->userdata('tipousuario') == "A") {
						$active = "";
						if ($this->uri->segment(1) == "usuarios" || $this->uri->segment(1)=="crearusuario" || $this->uri->segment(1)=="editarusuario") {
							$active = "active";
						}
						echo "<li class='".$active."'><a href='".base_url().'usuarios'."'>ADMIN USUARIOS</a></li>";
					}
				 ?>
			</ul>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li><a href="<?php echo base_url();?>salir">CERRAR SESION</a></li>
	      	</ul>
	    </div>
  	</nav>

  

	<ul id="slide-out" class="side-nav">
	<li>
		<div class="userView">
		<div class="background">
			 <img src="<?php echo base_url();?>asset/img/guma.png" class="sidenavimg"/>
		</div>
		<?php
			echo "<a href='#!name'><span class='name'>".$this->session->userdata('nombres').' '.$this->session->userdata('apellidos')."</span></a>";
			echo "<a href='#!email'><span class='email'>".$this->session->userdata('nombretipousuario')."</span></a>";
		 ?>
		</div>
	</li>
		<li class="<?php if($this->uri->segment(1)=="actas" || $this->uri->segment(1)=="actacompleta"  ){echo "active";}?>"><a href="<?php echo base_url();?>actas"><i class="material-icons">description</i>ACTAS GUMA</a></li>
		<li class="<?php if($this->uri->segment(1)=="nueva"){echo "active";}?>"><a href="<?php echo base_url();?>nueva"><i class="material-icons">description</i>NUEVA ACTA</a></li>
		<?php 
			if ($this->session->userdata('tipousuario') == "A") {
				$active = "";
				if ($this->uri->segment(1) == "usuarios" || $this->uri->segment(1)=="crearusuario" || $this->uri->segment(1)=="editarusuario") {
					$active = "active";
				}
				echo "<li class='".$active."'><a href='".base_url().'usuarios'."'><i class='material-icons'>group</i>ADMIN USUARIOS</a></li>";
			}
		 ?>
 	<li><a href="<?php echo base_url();?>salir"><i class="material-icons">close</i>CERRAR SESION</a></li>
	</ul>