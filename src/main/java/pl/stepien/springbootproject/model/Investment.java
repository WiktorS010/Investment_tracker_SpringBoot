package pl.stepien.springbootproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
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
//    private LocalDateTime beingActiveTime;
//    private Double currentIncomeInPercentages;
    private Double currentIncomeInDollars;
    @ManyToOne
    private User user;
    @ManyToOne
    private Cryptocurrency cryptocurrency;

}
