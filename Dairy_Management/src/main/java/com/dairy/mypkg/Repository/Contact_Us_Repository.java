package com.dairy.mypkg.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.dairy.mypkg.Entity.Contact_Us;
import com.dairy.mypkg.Entity.User_Entity;


public interface Contact_Us_Repository extends JpaRepository<Contact_Us, Long> {
	

	void deleteById(Long id);
}
