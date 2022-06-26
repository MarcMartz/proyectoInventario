<?php

class Conexion{

	static public function conectar(){

		// $link = new PDO("mysql:host=127.0.0.1:33065;dbname=pos",
		// 	            "root",
		// 	            "");
		$dbhost = 'pos.cczscperknxc.us-east-1.rds.amazonaws.com';
		$dbport = '3306';
		$dbname = 'pos';
		$link = new PDO("mysql:host=pos.cczscperknxc.us-east-1.rds.amazonaws.com:3306;dbname=pos",
			            "admin",
			            "Bahamon2001");
		// $server="http://23.20.15.240";
		// $user="root";
		// $pass="dokatho";
		// $db="pos";
		//172.31.28.230:3306
		// $link = new PDO("mysql:host=$server;dbname=$db",$user,$pass);				
		
		$link->exec("set names utf8");

		return $link;

	}

}