package com.booking.restaurantapi.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.booking.restaurantapi.entities.Reservation;

@Repository
public interface TurnRepositiry extends JpaRepository<Reservation, Long>{
	Optional<Reservation> findById(Long id);
}
