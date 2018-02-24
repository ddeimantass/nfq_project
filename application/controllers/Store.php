<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Store extends CI_Controller {
    
    public function index() {
        
        if(isset($_POST) && !empty($_POST)){
            
            $data= array(
                'name' => htmlspecialchars($this->input->post('name')),
                'email' => htmlspecialchars($this->input->post('email')),
                'book_id' => htmlspecialchars($this->input->post('book_id')),
                'phone' => htmlspecialchars($this->input->post('phone'))
            );
            echo $this->orderModel->addNewOrder($data);
            die();
        }
        
        $books = $this->bookModel->getAllBooks();
        
        $data['books'] = $books;
        
        $this->load->view("header");
        $this->load->view("sideBar");
        $this->load->view("product", $data);
        $this->load->view("footer");
        
	}
    public function order() {
        $books = $this->bookModel->getAllBooks();
        $orders = $this->orderModel->getAllOrders();
        
        $data['orders'] = $orders;
        $data['books'] = $books;
        
        $this->load->view("header");
        $this->load->view("sideBar");
        $this->load->view("order", $data);
        $this->load->view("footer");
	}    
} 