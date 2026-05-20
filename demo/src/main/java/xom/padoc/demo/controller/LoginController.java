package xom.padoc.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import xom.padoc.demo.model.Funcionario;
import xom.padoc.demo.repository.FuncinarioRepository;

@Controller
public class LoginController {

    @Autowired
    private FuncinarioRepository funcinarioRepository;

    @GetMapping("/login")
    public String exibirLogin() {
        return "login";
    }

    @PostMapping("/login")
    public String realizaProcessamentoLogin(
            @RequestParam String login,
            @RequestParam String senha,
            HttpSession sessao,
            Model model) {

        Funcionario fun = funcinarioRepository.findByLogin(login);

        if (fun != null && fun.getSenha().equals(senha)) {

            sessao.setAttribute("funcionario", fun);

            return "redirect:/principal";
        }

        model.addAttribute("erro", "Login ou senha incorretos!");

        return "login";
    }
}