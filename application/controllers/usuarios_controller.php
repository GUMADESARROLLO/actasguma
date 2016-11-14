<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios_controller extends CI_Controller {

   public function __construct() {
      parent::__construct();
      //$this->load->model('usuarios_model');
      //if($this->session->userdata('logueado')==TRUE){
         //$this->load->model('usuarios_model');
      //}else{
      //   redirect(base_url());
      //}
   }

   public function index() {
     // $this->load->model('usuarios_model');
      $data = array();
      $this->load->view('Login', $data);
   }

   public function login() {

      if ($this->input->post()) {

         $usuario = $this->input->post('usuario');
         $password = md5($this->input->post('password'));

         $this->load->model('usuarios_model');
         $usuario = $this->usuarios_model->verificarlogin($usuario, $password, $id_usuario, $id_tipousuario, $id_empresa, $tipousuario, $nombres, $apellidos);

         //Prueba datos
         if ($usuario) {
            $usuario_data = array(
               'id_usuario' => $usuario->id_usuario,
               'nombres' => $usuario->nombres,
               'apellidos' => $usuario->apellidos,
               'nombretipousuario' => $usuario->nombretipousuario,
               'id_tipousuario' => $usuario->id_tipousuario,
               'id_empresa' => $usuario->id_empresa,
               'tipousuario' => $usuario->tipousuario,
               'logueado' => TRUE
            );

            $this->session->set_userdata($usuario_data);
            redirect('actas');
         } else {
            redirect(base_url());
         }
      } else {
         $this->index();
      }
   }

   public function usuarios(){
       if($this->session->userdata('logueado')==TRUE and $this->session->userdata('tipousuario') == "A"){
         $this->load->model('usuarios_model');
         $data = array();
         $data['usuarios'] = $this->usuarios_model->listausuarios();
         //SESSION
         //$datasession['id_tipousuario'] = $this->session->userdata('id_tipousuario');
         //$datasession['id_empresa'] = $this->session->userdata('id_empresa');
         //$datasession['tipousuario'] = $this->session->userdata('tipousuario');
         //

         $this->load->view('templates/header');
         $this->load->view('templates/menuprincipal');
         $this->load->view('admin/usuarios', $data);
         $this->load->view('templates/footer');
      }else{
         redirect(base_url().'actas');
      }

   }

   public function editarusuario($id_usuario){
      if($this->session->userdata('logueado')==TRUE){
         $this->load->model('usuarios_model');

         $data = array();
         $data['tiposusuario'] = $this->usuarios_model->cargartiposusuario();
         $data['usuario'] = $this->usuarios_model->cargarusuarioid($id_usuario);
         $data['empresas'] = $this->usuarios_model->cagarlistaempresasgerencias();

         $this->load->view('templates/header');
         $this->load->view('templates/menuprincipal');
         $this->load->view('admin/editar_usuario', $data);
         $this->load->view('templates/footer');
      }else{
         redirect(base_url());
      }

   }

   public function actualizarusuario($id_usuario){
      if($this->session->userdata('logueado')==TRUE){
         $this->load->model('usuarios_model');

         $usuario = $this->input->post('Uusuario');
         $password = "";
         if ($this->input->post('Upassword') != "") {
            $password = md5($this->input->post('Upassword'));
         }
         $nombres = $this->input->post('Unombres');
         $apellidos = $this->input->post('Uapellidos');
         $estado = "";
         if ($this->input->post('Uactivo') == "") {
            $estado = 0;
         }else{
            $estado = $this->input->post('Uactivo');
         }
         
         $id_tipousuario = $this->input->post('Utipousuario');
         $id_empresa = $this->input->post('Uempresa');

         $result = $this->usuarios_model->actualizarusuario($id_usuario, $usuario, $password, $nombres, $apellidos, $estado, $id_tipousuario, $id_empresa);
         if ($result == TRUE || $result == FALSE) {
            redirect(base_url().'usuarios');
         }/*
         else{
            echo "ERROR AL ACTUALIZAR EL USUARIO";
         }*/
      }else{
         redirect(base_url());
      }
   }

   public function crearusuario(){
      if($this->session->userdata('logueado')==TRUE){
         $this->load->model('usuarios_model');

         $data = array();
         $data['tiposusuario'] = $this->usuarios_model->cargartiposusuario();
         $data['empresas'] = $this->usuarios_model->cagarlistaempresasgerencias();

         $this->load->view('templates/header');
         $this->load->view('templates/menuprincipal');
         $this->load->view('admin/crear_usuario', $data);
         $this->load->view('templates/footer');
      }else{
         redirect(base_url());
      }
   }

   public function guardarusuario(){
      if($this->session->userdata('logueado')==TRUE){
         $this->load->model('usuarios_model');

         $estado = 0;
         if ($this->input->post('NUactivo') != "") {
           $estado = $this->input->post('NUactivo');
         }

         $data = array(
            'usuario' => $this->input->post('NUusuario'),
            'password' => $this->input->post('NUpassword'),
            'nombres' => $this->input->post('NUnombres'),
            'apellidos' => $this->input->post('NUapellidos'),
            'estado' => $estado,
            'id_tipousuario' => $this->input->post('NUtipousuario'),
            'id_empresa' => $this->input->post('NUempresa'),
         );

         $result = $this->usuarios_model->guardarusuario($data);
         if ($result == TRUE) {
           redirect(base_url().'usuarios');
         }
         else{
            echo "ERROR AL GUARDAR EL USUARIO";
         }


      }else{
         redirect(base_url());
      }
   }

   public function salir() {
      $usuario_data = array(
         'id_usuario' => "",
         'id_tipousuario' => "",
         'id_empresa' => "",
         'tipousuario' => "",
         'logueado' => FALSE
      );
      $this->session->set_userdata($usuario_data);
      $this->session->sess_destroy();
      redirect(base_url());
   }

}