package com.dairy.mypkg.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.dairy.mypkg.Entity.CartInfo;

public interface CartInfoRepository extends JpaRepository<CartInfo, Long> {

	void deleteByEmail(String email);

}
