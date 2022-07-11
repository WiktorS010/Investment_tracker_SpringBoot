package pl.stepien.springbootproject.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class CryptoController {

    private final CryptoConnection cryptoConnection;

@GetMapping("")
    public String showCryptoList (Model model) {
    model.addAttribute("cryptocurrencys", cryptoConnection.getCrypto());

        return "user";
    }

}
