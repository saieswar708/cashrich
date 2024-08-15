package com.cashrich.backend.service;



import com.cashrich.backend.model.*;
import com.cashrich.backend.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class CoinService {

    @Value("${coinmarketcap.api.url}")
    private String apiUrl;

    @Value("${coinmarketcap.api.key}")
    private String apiKey;

    @Autowired
    private CoinRequestRepository coinRequestRepository;

    public String getCoinData(String symbol, Long userId) {
        RestTemplate restTemplate = new RestTemplate();
        Map<String, String> headers = new HashMap<>();
        headers.put("X-CMC_PRO_API_KEY", apiKey);

        String url = apiUrl + "?symbol=" + symbol;
        String response = restTemplate.getForObject(url, String.class);

        // Save the request and response in the database
        CoinRequest coinRequest = new CoinRequest();
        coinRequest.setUserId(userId);
        coinRequest.setSymbol(symbol);
        coinRequest.setResponse(response);
        coinRequest.setTimestamp(new Date());
        coinRequestRepository.save(coinRequest);

        return response;
    }
}

