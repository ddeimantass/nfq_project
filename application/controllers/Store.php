<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Store extends CI_Controller {
    
    public function index() {
        
        if(isset($_POST) && !empty($_POST)){
            echo $this->orderModel->addNewOrder($_POST);
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