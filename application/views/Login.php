<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Grupo Guma - Actas</title>
	<meta name="viewport" content="width = device-width, initial-scale=1, maximum-scale=1"/>
	<link rel="stylesheet" type="text/css" href=" <?php echo base_url();?>asset/css/material-icons.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css"/>
	<style type="text/css">
		.container{
			padding-top: 50px;
		}
		.color-principal{
			background-color: #289DCC;
		}
		.login{
			display: block;
			margin: 0px auto 0 auto;
			width: 100%;
			max-width: 600px;
		}
		.login-logo{
			display: block;
			margin: 0 auto 60px auto;
			max-width: 350px;
			width: 100%;
		}
		.loginform{
			margin: 20px 0px;
		}
		.loginh4{
			text-align: center;
		}
		.login-control{
			font-size: 20px !important
		}
		.center-block{
			display: block;
			margin: 0 auto;
		}
		.input-field, .input-field:focus, .input-field:hover{
			outline: none !important;
			background-color: #fff;
		}
	</style>
</head>
<body>
<div class="container">
	  <img src="<?php echo base_url();?>asset/img/guma.png" class="login-logo">
	  <div class="login">
   		<div class="col s12 m6">
          <div class="card">
            <div class="card-content">
			  	<h4 class="loginh4">BIENVENIDO</h4>
			  	<div class="row">
				    <form class="col s12 loginform" method="post" action="<?php echo base_url() ?>login">
				        <div class="input-field col s12">
				          <input id="usuario" type="text" class="validate login-control" name="usuario">
				          <label for="usuario">USUARIO</label>
				        </div>
				        <div class="input-field col s12">
				          <input id="password" type="password" class="validate login-control" name="password">
				          <label for="password">CONTRASEÑA</label>
				        </div>
				        <button class="waves-effect waves-light btn-large center-block color-principal" name="btnlogin" type="submit">
				        <i class="material-icons left">done_all</i>
				        ACCEDER
				        </button>
				    </form>
			  	</div>
            </div>
          </div>
        </div>
	  </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
</body>
</html>