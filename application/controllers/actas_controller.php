<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Actas_controller extends CI_Controller {

   public function __construct() {
      parent::__construct();
      if($this->session->userdata('logueado')==TRUE){
         $this->load->model('actas_model');
      }else{
         redirect(base_url());
      }
   }

   public function ver_actas() {
      $idusuarioempresa = $this->session->userdata('id_empresa');
      $usuariotipo = $this->session->userdata('tipousuario');
      $data = array();
      $data['empresas'] = $this->actas_model->cargarempresas($idusuarioempresa, $usuariotipo);

      $this->load->view('templates/header');
      $this->load->view('templates/menuprincipal');
      $this->load->view('actas/actas_todas', $data);
      $this->load->view('templates/footer');
   }

   public function filtroactas() {
      $idusuarioempresa = $this->session->userdata('id_empresa');
      $usuariotipo = $this->session->userdata('tipousuario');

      $id_empresafiltro = $this->input->post('empresafiltro');
      $data = $this->actas_model->seleccionar_acta_por_id_empresa($id_empresafiltro, $idusuarioempresa, $usuariotipo);
      if($data != false){
         $html = '';
         foreach ($data as $acta) {
               $html .= '<div class=card>';
               $html .= '<div class="card-content">';
               $html .= '<span class="num_acta"><h5>ACTA N° '.$acta->id_acta.' </h5></span>';
               $html .= '<span class="card-title"><h4> '.$acta->empresa.' </h4></span>';
               $html .= '<span class="card-titulos">LUGAR: '.$acta->lugar.' </span>';
               //$html .= '<span class="card-titulos">Fecha: '.$acta->fecha.' </span>';
               $html .= '<span class="card-titulos">Fecha: '.date("d-m-Y", strtotime($acta->fecha)).' </span>';
               $html .= '<div class="card-descripcion">';
               $html .= '<h5><i class="material-icons">description</i> OBJETIVOS</h5>';
               $html .= '<div> '.$acta->objetivos.' </div>';
               $html .= '</div>';
               $html .= '</div>';
               $html .= '<div class="card-action">';
               $html .= '<a href="'.base_url().'modificar/'.$acta->id_acta.'">EDITAR EL ACTA</a>';
               $html .= '<a href="'.base_url().'actacompleta/'.$acta->id_acta.'">VER ACTA COMPLETA</a>';
               $html .= '</div>';
               $html .= '</div>';
            }              
      }
      else{
         $html = false;
      }
      echo json_encode($html);
   }


   public function nueva_acta() {
      $idusuarioempresa = $this->session->userdata('id_empresa');
      $usuariotipo = $this->session->userdata('tipousuario');

      $datos['participantes'] = $this->actas_model->loadparticipantes();
      $datos['lugares'] = $this->actas_model->loadlugares();
      $datos['empresas'] = $this->actas_model->cargarempresas($idusuarioempresa, $usuariotipo);

      $this->load->view('templates/header');
      $this->load->view('templates/menuprincipal');
      $this->load->view('actas/acta_nueva', $datos);
      $this->load->view('templates/footer');
   }


   public function guardaracta(){
      $participantes = $this->input->post('NAparticipantes');
      $datos = array(
         "fecha" => $this->input->post('NAfecha'),
         "objetivos" => $this->input->post('NAobjetivos'),
         "id_empresa" => $this->input->post('NAempresa'),
         "id_lugar" => $this->input->post('NAlugar'),
         "pendientes_anteriores" => $this->input->post('NApen_anteriores'),
         "avances_actividades" => $this->input->post('NAavances_actividades'),
         "acuerdos" => $this->input->post('NAacuerdos'),
         "invitados" => $this->input->post('NAinvitados')
      );
      
      $id_acta = $this->actas_model->guardaracta($datos);
      $listaparticipante = array();

      if ($id_acta !=  FALSE) {

        if ($participantes[0] != 00) {
           for ($i=0; $i < sizeof($participantes); $i++) { 
               $listaparticipante[] = array(
                  "id_participante" => $participantes[$i],
                  "id_acta" => $id_acta,
               ); 
            }
         }else{
            $db = $this->actas_model->loadparticipantes();
            foreach ($db as $key) {
               $listaparticipante[] = array(
                  "id_participante" => $key['id_participante'],
                  "id_acta" => $id_acta,
               );
            }
         }
         if ($this->actas_model->guardaractaparticipante($listaparticipante) == TRUE) {
            $this->nueva_acta();
         }else{
           echo  "ERROR AL GUARDAR LOS PARTICIPANTES";
         }

      }else{
         echo  "ERROR AL GUARDAR EL ACTA";
      }

   }

   public function actualizaracta($id_acta){

      $participantes = $this->input->post('UAparticipantes');

      $datos = array(
         "fecha" => $this->input->post('UAfecha'),
         "objetivos" => $this->input->post('UAobjetivos'),
         "id_empresa" => $this->input->post('UAempresa'),
         "id_lugar" => $this->input->post('UAlugar'),
         "pendientes_anteriores" => $this->input->post('UApen_anteriores'),
         "avances_actividades" => $this->input->post('UAavances_actividades'),
         "acuerdos" => $this->input->post('UAacuerdos'),
         "invitados" => $this->input->post('UAinvitados')
      );


      $this->actas_model->updateacta($id_acta ,$datos);
      $listaparticipante = array();

      if ($participantes[0] != 00) {
         for ($i=0; $i < sizeof($participantes); $i++) { 
            $listaparticipante[] = array(
               "id_participante" => $participantes[$i],
               "id_acta" => $id_acta,
            ); 
         }  
      }else{
         $db = $this->actas_model->loadparticipantes();
         foreach ($db as $key) {
            $listaparticipante[] = array(
               "id_participante" => $key['id_participante'],
               "id_acta" => $id_acta,
            );
         }
      }
      if ($this->actas_model->updateactaparticipante($id_acta ,$listaparticipante) == TRUE) {
        redirect(base_url().'actacompleta/'.$id_acta);
      }
      else{
         redirect(base_url().'actacompleta/'.$id_acta); 
      }
      
   }

   public function acta_completa($id_acta){
      $data = array();
      $data['actacompleta'] = $this->actas_model->seleccionar_acta_por_id($id_acta);
      $data['actaparticipantes'] = $this->actas_model->seleccionar_participantes_por_id_acta($id_acta);
      
      $this->load->view('templates/header');
      $this->load->view('templates/menuprincipal');
      $this->load->view('actas/acta_completa', $data);
      $this->load->view('templates/footer');
      
   }

   public function modificar_acta($id_acta){
      $idusuarioempresa = $this->session->userdata('id_empresa');
      $usuariotipo = $this->session->userdata('tipousuario');

      $data = array();
      $data['participantes'] = $this->actas_model->loadparticipantes();
      $data['lugares'] = $this->actas_model->loadlugares();
      $data['empresas'] = $this->actas_model->cargarempresas($idusuarioempresa, $usuariotipo);

      $data['actacompleta'] = $this->actas_model->seleccionar_acta_por_id($id_acta);
      $data['actaparticipantes'] = $this->actas_model->seleccionar_participantes_por_id_acta($id_acta);
      
      $this->load->view('templates/header');
      $this->load->view('templates/menuprincipal');
      $this->load->view('actas/acta_modificar', $data);
      $this->load->view('templates/footer');
   }


}