<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class BookModel extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
    }

	public function getAllBooks() {
        $query = $this->db->query('SELECT b.id, b.title, b.description, a.name as author, g.name as genre FROM books as b LEFT JOIN authors as a ON a.id = b.author_id LEFT JOIN genres as g ON g.id = b.genre_id');
        $books = array();
        foreach ($query->result() as $row)
        {
            $books[$row->id] = $row;
        }
        return $books;
	}

}