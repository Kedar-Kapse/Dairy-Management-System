package com.dairy.mypkg.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dairy.mypkg.Entity.OrderPlaced;

@Repository
public interface OrderPlacedRepository extends JpaRepository<OrderPlaced, Long> {

}
