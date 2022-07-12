package pl.stepien.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.stepien.springbootproject.model.Cryptocurrency;

public interface CryptocurrencyRepository extends JpaRepository<Cryptocurrency, Long> {

}
