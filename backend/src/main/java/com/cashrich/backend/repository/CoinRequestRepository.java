package com.cashrich.backend.repository;

import com.cashrich.backend.model.CoinRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CoinRequestRepository extends JpaRepository<CoinRequest, Long> {
}
