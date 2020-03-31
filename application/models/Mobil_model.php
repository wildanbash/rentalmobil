<?php 

class mobil_model extends CI_Model{
    public function get_data($table){
        $query = $this->db->get($table);
        return $query;
    }

    public function get_data_type(){
        $this->db->select('mobil.id_mobil, mobil.id_type, mobil.id_type, mobil.merk, mobil.no_plat, mobil.warna, mobil.tahun, mobil.harga, mobil.status, mobil.gambar, type.id_type, type.kode_type, type.nama_type');
        $this->db->from('mobil');
        $this->db->join('type', 'mobil.id_type = type.id_type');
        $query = $this->db->get();
        return $query;

    }

    public function insert_data($data, $table){
        $this->db->insert($table,$data);
    }

    public function edit_data($table, $data, $where){
        $this->db->update($table, $data, $where);
    }

    public function delete_data($where, $table){
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function ambil_id_mobil($id){
        $this->db->select('mobil.id_mobil, mobil.id_type, mobil.id_type, mobil.merk, mobil.no_plat, mobil.warna, mobil.tahun, mobil.status, mobil.gambar, type.id_type, type.kode_type, type.nama_type');
        $this->db->from('mobil');
        $this->db->join('type', 'mobil.id_type = type.id_type');
        $hasil = $this->db->where('id_mobil', $id)->get();

        if($hasil->num_rows() > 0){
            return $hasil->result();
        }else{
            return false;
        }
    }

    //////////////////////////////////////////////////////
                        // A P I //
    /////////////////////////////////////////////////////
    
    public function getMobil($id = null){
        if($id == null){
            $base = base_url('assets/upload/mobil/');
            $this->db->select("id_mobil, type.nama_type as type, merk, no_plat, warna, tahun, harga, if(status=1, 'Tersedia', 'Disewa') as status ,CONCAT('$base', gambar) as gambar");
            $this->db->from('mobil');
            $this->db->join('type', 'mobil.id_type = type.id_type');
            return $this->db->get()->result_array();
        }else{
            $base = base_url('assets/upload/mobil/');
            $this->db->select("id_mobil, type.nama_type as type, merk, no_plat, warna, tahun, harga, if(status=1, 'Tersedia', 'Disewa') as status ,CONCAT('$base', gambar) as gambar");
            $this->db->from('mobil');
            $this->db->join('type', 'mobil.id_type = type.id_type');
            $this->db->where("id_mobil = $id");
            return $this->db->get()->result_array();
        }



        // if($id == null){
        //     return $this->db->get('mobil')->result_array();
        // }else{
        //     return $this->db->get_where('mobil', ['id_mobil'=>$id])->result_array();
        // }
    }

    public function deleteMobil($id){
        $this->db->delete('mobil',['id_mobil' => $id]);
        return $this->db->affected_rows();
    }

    public function createMobil($data){
        $this->db->insert('mobil', $data);
        return $this->db->affected_rows();
    }

    public function updateMobil($data, $id){
        $this->db->update('mobil', $data, ['id_mobil' => $id]);
        return $this->db->affected_rows();
    }



}

?>