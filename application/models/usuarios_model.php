<?php

class Usuarios_model extends CI_Model { 

   public function __construct() {
      parent::__construct();
   }

   public function verificarlogin($usuario, $password){
      $this->db->select('u.id_usuario, u.id_tipousuario, u.id_empresa, t.tipousuario, u.nombres, u.apellidos, t.nombretipousuario');
      $this->db->from('usuarios u');
      $this->db->join('tipousuario t', 'u.id_tipousuario = t.id_tipousuario');
      $this->db->where('usuario', $usuario);
      $this->db->where('password', $password);
      $this->db->where('estado', 1);
      $consulta = $this->db->get();
      $resultado = $consulta->row();
      return $resultado;
   }//FIN LOGIN

   public function cagarlistaempresasgerencias(){ 
      $this->db->select('id_empresa, empresa');
      $this->db->from('empresas');
      $this->db->order_by('id_empresa','asc');
      $query = $this->db->get();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
   }//FIN CARGAR LISTA DE EMPRESAS Y GERENCIAS

   public function cargartiposusuario(){
      $this->db->select('id_tipousuario, tipousuario, nombretipousuario');
      $this->db->from('tipousuario');
      $this->db->order_by('id_tipousuario','asc');
      $query = $this->db->get();
      return $query->result_array();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
      else{
         return false;
      }
   }// FIN CARGAR TIPOS DE USUARIOS

   public function listausuarios(){
      $this->db->select('u.id_usuario, u.usuario, u.nombres, u.apellidos, u.estado, t.nombretipousuario, t.tipousuario');
      $this->db->from('usuarios u');
      $this->db->join('tipousuario t', 'u.id_tipousuario = t.id_tipousuario');
      $this->db->order_by('u.id_usuario','asc');
      $query = $this->db->get();
      return $query->result_array();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
   }// FIN LISTAR TODOS LOS USUARIOS

   public function cargarusuarioid($id_usuario){
      $this->db->where('id_usuario', $id_usuario);
      $this->db->select('u.id_usuario, u.usuario, u.nombres, u.apellidos, u.password, u.estado, u.id_empresa, u.id_tipousuario,t.nombretipousuario');
      $this->db->from('usuarios u');
      $this->db->join('tipousuario t', 'u.id_tipousuario = t.id_tipousuario');
      $this->db->order_by('u.id_usuario','asc');
      $query = $this->db->get();
      return $query->result_array();
      if($query->num_rows() > 0 )
      {
        return $query->result_array();
      }
      else{
         return false;
      }
   }// FIN CARGAR USUARIO POR ID

   public function actualizarusuario($id_usuario, $usuario, $password, $nombres, $apellidos, $estado, $id_tipousuario, $id_empresa){
      if ($password == "") {
         $data = array(
            'usuario' => $usuario,
            'nombres' => $nombres,
            'apellidos' => $apellidos,
            'estado' => $estado,
            'id_tipousuario' => $id_tipousuario,
            'id_empresa' => $id_empresa
         );
         $this->db->where('id_usuario', $id_usuario);
         $this->db->update('usuarios', $data);
         if ($this->db->affected_rows() > 0) {
           return true;
         }
         else{
           return false;
         }

      }else{
         $data = array(
            'usuario' => $usuario,
            'password' => $password,
            'nombres' => $nombres,
            'apellidos' => $apellidos,
            'estado' => $estado,
            'id_tipousuario' => $id_tipousuario,
            'id_empresa' => $id_empresa
         );
         $this->db->where('id_usuario', $id_usuario);
         $this->db->update('usuarios', $data);
         if ($this->db->affected_rows() > 0) {
           return true;
         }
         else{
           return false;
         }
      }

   }//FIN ACTUALIZAR USUARIO

   public function guardarusuario($data){
      $this->db->insert("usuarios", $data);
      if ($this->db->affected_rows() > 0) {
        return true;
      }
      else{
        return false;
      }
   }// FIN GUARDAR USUARIO

}
