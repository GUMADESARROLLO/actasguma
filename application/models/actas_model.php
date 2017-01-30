<?php

class Actas_model extends CI_Model { 

   public function __construct() {
      parent::__construct();
   }

   public function cargarempresas($idusuarioempresa, $usuariotipo){ 
    if ($usuariotipo == "G") {
      $this->db->select('id_empresa, empresa');
      $this->db->where('id_empresa', $idusuarioempresa);
      $this->db->from('empresas');
      $this->db->order_by('id_empresa','asc');
    }else{
      $this->db->select('id_empresa, empresa');
      $this->db->from('empresas');
      $this->db->order_by('id_empresa','asc');
    }
    $query = $this->db->get();
    if($query->num_rows() > 0 )
    {
      return $query->result_array();
    }

   }

   public function loadlugares(){ 
      $this->db->select('id_lugar, lugar');
      $this->db->from('lugaresdereunion');
      $query = $this->db->get();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
   }

  public function loadparticipantes(){
      $this->db->where('estado', 1);
      $this->db->select('id_participante, nombres, apellidos');
      $this->db->from('participantes');
      $query = $this->db->get();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
   }

   public function seleccionar_acta_por_id_empresa($id_empresafiltro, $idusuarioempresa, $usuariotipo){
      if ($id_empresafiltro == 00) {
        $this->db->select('a.id_acta, a.id_empresa, a.id_lugar, a.fecha, a.objetivos, a.pendientes_anteriores, a.avances_actividades, a.acuerdos, e.empresa, l.lugar');
        $this->db->from('actasguma a');
        $this->db->join('empresas e', 'a.id_empresa = e.id_empresa');
        $this->db->join('lugaresdereunion l', 'a.id_lugar = l.id_lugar');
      }else{
        $this->db->select('a.id_acta, a.id_empresa, a.id_lugar, a.fecha, a.objetivos, a.pendientes_anteriores, a.avances_actividades, a.acuerdos, e.empresa, l.lugar');
        $this->db->from('actasguma a');
        $this->db->join('empresas e', 'a.id_empresa = e.id_empresa');
        $this->db->join('lugaresdereunion l', 'a.id_lugar = l.id_lugar');
        $this->db->where('a.id_empresa', $id_empresafiltro);
      }
      $this->db->order_by('a.id_acta','DESC');
      $consul = $this->db->get();
      if($consul->num_rows() > 0 )
      {
        return $consul->result();
      }
      else{
        return false;
      }
   }//FIN SELECT ACTAS POR ID EMPRESA

   public function seleccionar_acta_por_id($id_acta){
      $this->db->select('a.id_acta, a.id_empresa, a.id_lugar, a.fecha, a.objetivos, a.pendientes_anteriores, a.avances_actividades, a.acuerdos, a.invitados, e.empresa, l.lugar');
      $this->db->from('actasguma a');
      $this->db->join('empresas e', 'a.id_empresa = e.id_empresa');
      $this->db->join('lugaresdereunion l', 'a.id_lugar = l.id_lugar');
      $this->db->where('a.id_acta', $id_acta);
      $consul = $this->db->get();
      if($consul->num_rows() > 0 )
      {
        return $consul->result_array();
      }
   }

   public function seleccionar_participantes_por_id_acta($id_acta){
      $this->db->select('a.id_actasparticipantes ,a.id_participante, a.id_acta, p.nombres, p.apellidos, p.gerencia');
      $this->db->from('actasparticipantes a');
      $this->db->join('participantes p', 'a.id_participante = p.id_participante');
      $this->db->where('id_acta', $id_acta);
      $consul = $this->db->get();
      if($consul->num_rows() > 0 )
      {
        return $consul->result_array();
      }
   }

   public function guardaracta($data){
      $this->db->insert("actasguma", $data);
      if ($this->db->affected_rows() > 0) {
        return  $this->db->insert_id();
      }
      else{
        return false;
      }
    }

    public function guardaractaparticipante($data){
      $this->db->insert_batch("actasparticipantes", $data);
      if ($this->db->affected_rows() > 0) {
        return true;
      }
      else{
        return false;
      }
    }

    public function updateacta($id_acta ,$datos){
      $this->db->where('id_acta', $id_acta);
      $this->db->update("actasguma", $datos);
      if ($this->db->affected_rows() > 0) {
        return true;
      }
      else{
        return false;
      }
    }

    public function updateactaparticipante($id_acta, $listaparticipante){
      $this->db->where('id_acta', $id_acta);
      $this->db->delete('actasparticipantes');
      $this->db->insert_batch("actasparticipantes", $listaparticipante);
      if ($this->db->affected_rows() > 0) {
        return true;
      }
      else{
        return false;
      }
      
    }

}