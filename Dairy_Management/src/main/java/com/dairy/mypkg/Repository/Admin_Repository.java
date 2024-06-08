package com.dairy.mypkg.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.dairy.mypkg.Entity.Admin_Entity;

public interface Admin_Repository extends JpaRepository<Admin_Entity, Long>{

	public Admin_Entity findByEmail(String email);
	boolean existsByEmail(String email);
}
