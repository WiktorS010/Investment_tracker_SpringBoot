package pl.stepien.springbootproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.util.Date;

@Entity
@Setter
@Getter
public class Investment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double quantityOfCryptocurrency;
    private Double quantityOfCryptocurrencyInDolar;
    private ZonedDateTime created;
    private Double enterPrice;
    private Double currentIncomeInPercentages;
    private Double currentIncomeInDollars;
    private Duration beingActive;
    @ManyToOne
    private User user;
    @ManyToOne
    private Cryptocurrency cryptocurrency;

}
