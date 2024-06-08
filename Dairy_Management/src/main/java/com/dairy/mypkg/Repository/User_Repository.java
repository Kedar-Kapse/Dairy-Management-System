package com.dairy.mypkg.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.dairy.mypkg.Entity.User_Entity;


public interface User_Repository extends JpaRepository<User_Entity, Long>{
	
	public User_Entity findByEmail(String email);
	boolean existsByEmail(String email);
	
}
