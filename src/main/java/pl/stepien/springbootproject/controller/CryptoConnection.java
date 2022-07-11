package pl.stepien.springbootproject.controller;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import pl.stepien.springbootproject.model.Cryptocurrency;

import java.util.List;
@Component
public class CryptoConnection {
    private final RestTemplate restTemplate = new RestTemplate();
    private final String CRYPTO_URL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20";

    public List<Cryptocurrency> getCrypto(){
        ResponseEntity<List<Cryptocurrency>> response = restTemplate.exchange(CRYPTO_URL, HttpMethod.GET, null, new ParameterizedTypeReference<List<Cryptocurrency>>() {
        });
        List<Cryptocurrency> cryptoList = response.getBody();
        return cryptoList;
    }

}
