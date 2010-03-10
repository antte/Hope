<?php
	class PeopleController extends AppController {
		var $name = 'PeopleController';
		
		function __construct() {
			$this->loadModel('Person');	
		}
		
		function index() {
			 $this->set('people', $this->Person->find('all'));
		}
	}