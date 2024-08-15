package com.cashrich.backend.controller;


import com.cashrich.backend.service.CoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class CoinController {

    @Autowired
    private CoinService coinService;

    @GetMapping("/coins")
    public ResponseEntity<?> getCoinData(@RequestParam String symbol, Authentication authentication) {
        Long userId = (Long) authentication.getPrincipal(); // Assuming principal contains user ID
        String response = coinService.getCoinData(symbol, userId);
        return ResponseEntity.ok(response);
    }
}
