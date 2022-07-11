package pl.stepien.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.stepien.springbootproject.model.Investment;

import java.util.List;

public interface InvestmentRepository extends JpaRepository<Investment, Long> {
    List<Investment> findAllByUser_Id(Long user_id);

}
