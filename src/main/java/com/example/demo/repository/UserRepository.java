package com.example.demo.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.Purchase;

@Repository
public interface UserRepository extends CrudRepository <Purchase, Integer> {
	 
List<Purchase> findByTableNo(int id);


	
}

