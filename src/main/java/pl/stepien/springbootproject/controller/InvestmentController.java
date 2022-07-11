package pl.stepien.springbootproject.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.stepien.springbootproject.model.Investment;
import pl.stepien.springbootproject.repository.InvestmentRepository;
import pl.stepien.springbootproject.service.MathMethods;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.List;


@Controller
@RequestMapping("/investments")
@RequiredArgsConstructor
public class InvestmentController {

    private final CryptoConnection cryptoConnection;
    private final InvestmentRepository investmentRepository;

    @GetMapping("")
    public String showInvestments(Model model) {
        MathMethods mathMethods = new MathMethods();
        List<Investment> investments = investmentRepository.findAllByUser_Id(1l);
        for (Investment investment : investments) {
            Double price = investment.getEnterPrice();
            Double income = (investment.getQuantityOfCryptocurrency() *
                            cryptoConnection.getCrypto().get(investment.getCryptocurrency().getId().intValue() - 1).getPrice()) -
                            (price * investment.getQuantityOfCryptocurrency());

            investment.setCurrentIncomeInDollars(mathMethods.round(income, 3));
        }
        model.addAttribute("investments", investments);// user id z security

        return "investments";
    }

    // USUNIĘTE INWESTYCJE , ZAPISUJA SIE NA JAKIŚ CZAS X

    @GetMapping("/old")
    public String oldInvestments() {
        return "oldInvestments";
    }

    // DODAWANIE INWESTYCJI PRZEZ STRONĘ GŁÓWNĄ PO KLIKNIĘCIU W SUCCESS PRZY KRYPTOWALUCIE

    @GetMapping("/add/{mcr}")
    public String addInvestments(Model model, @PathVariable Long mcr) {
        model.addAttribute("cryptocurrency", cryptoConnection.getCrypto().get(mcr.intValue() - 1));
        model.addAttribute("investment", new Investment());
        return "addInvestments";
    }


    @PostMapping("/add/{mcr}")
    public String addInvestment(Model model, Investment investment, @PathVariable Long mcr) {
        Double price = cryptoConnection.getCrypto().get(mcr.intValue() - 1).getPrice();

        investment.setQuantityOfCryptocurrencyInDolar(investment.getQuantityOfCryptocurrency() * price);
        investment.setEnterPrice(price);
        ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.of("UTC")).withZoneSameInstant(ZoneId.of("Europe/Warsaw"));
        investment.setCreated(date);
//        investment.setUser();
        investment.setCurrentIncomeInDollars(0.0);

        investmentRepository.save(investment);
        return "redirect:/investments";
    }

    // USUWANIE INWESTYCJI
    @GetMapping("/close/{id}")
    public String deleteInvestment(@PathVariable Long id) {

        investmentRepository.deleteById(id);
        return "deleteInvestment";
    }
}
