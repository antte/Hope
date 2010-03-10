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
		
	}