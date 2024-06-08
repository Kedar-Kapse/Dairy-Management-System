package com.dairy.mypkg.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.dairy.mypkg.Entity.Products;

@Repository
public interface ProductRepository extends JpaRepository<Products, Long> {

	
}
