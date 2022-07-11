package pl.stepien.springbootproject.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Setter
@Getter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private Integer age;
    private Date created;
    @OneToMany
    private List<FiatCurrency> fiatCurrencyList;
    @OneToMany
    private List<Cryptocurrency> cryptocurrencyList;

}
