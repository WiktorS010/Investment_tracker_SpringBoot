package pl.stepien.springbootproject.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Setter
@Getter
@JsonIgnoreProperties(value = "id", ignoreUnknown = true)
public class Cryptocurrency {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String symbol;
    @JsonProperty("market_cap_rank")
    private Long mcr;
    @JsonProperty("current_price")
    private Double price;
    @JsonProperty("price_change_percentage_24h")
    private Double daychange;
    @JsonProperty("market_cap")
    private Long marketcap;
    private String image;
}
