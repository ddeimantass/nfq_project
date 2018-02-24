<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class OrderModel extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
    }

    public function addNewOrder($data) {
        if(null === $this->bookModel->getBookById($data["book_id"])){
            return "Nepavyko rasti nurodytos knygos";
        }
           
        $this->load->library('form_validation');
        
        $this->form_validation->set_rules("book_id", "book_id",'trim|required|xss_clean|numeric|max_length[9]');
        $this->form_validation->set_rules("name", "name",'trim|required|xss_clean|max_length[255]');
        $this->form_validation->set_rules("email", "email",'trim|required|valid_email|xss_clean|max_length[255]');
        $this->form_validation->set_rules("phone", "phone",'trim|required|numeric|xss_clean|max_length[255]|min_length[9]');

        if($this->form_validation->run()){
            $data["date"] = date("Y-m-d H:i");
            $this->db->insert('orders', $data);
            return "Užsakymas sėkmingai išsiūstas.";
        }
        else{
            if(strpos(validation_errors(),"The book_id field")){
                return validation_errors();
            }
            $errors = array();
            if(strpos(validation_errors(),"The phone field")){
                $errors[] = "telefonas";
            }
            if(strpos(validation_errors(),"The email field")){
                $errors[] = "el. paštas";
            }
            if(strpos(validation_errors(),"The name field")){
                $errors[] = "vardas";
            }
            return "Klaidingas: " . implode(", ",$errors). ".";
        }
    }
	public function getAllOrders() {
        $query = $this->db->get('orders');
        $this->db->order_by('id', 'DESC');
        $orders = array();
        foreach ($query->result() as $row)
        {
            $orders[$row->id] = $row;
        }
        return $orders;
	}
    
}