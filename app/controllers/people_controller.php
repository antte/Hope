<?php
	class PeopleController extends AppController {
		var $name = 'People';
		/*
		function __construct() {
			$this->loadModel('Person');	
		}
		*/
		function index() {
			 $this->set('people', $this->Person->find('all'));
		}
<<<<<<< HEAD
		function view($id) {
			$this->set('person', $this->Person->find('all',array( 'conditions' => array('id' => $id))));
		} 
=======
		
>>>>>>> 0db949f887b64f74f752d0482e3baff6346b83c3
	}