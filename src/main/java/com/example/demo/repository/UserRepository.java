package com.example.demo.repository;

import java.util.List;
import java.util.Optional;



import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Menu;
import com.example.demo.model.Purchase;

@Repository
public interface UserRepository extends CrudRepository <Purchase, Integer> {
	 
List<Purchase> findByTableNo(int id);


	
}

