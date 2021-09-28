package br.edu.infnet.controller;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.service.UsuarioService;
import br.edu.infnet.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes("usuario")
public class AcessoController {

    @Autowired
    private UsuarioService usuarioService;

    @Autowired
    private VagaService vagaService;


    @PostMapping(value = "/app/login")
    public String login(Model model, @RequestParam String email, @RequestParam String senha) {

        Usuario usuario = usuarioService.pegarPorEmail(email);

        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals(usuario.getSenha())) {
            model.addAttribute("usuario", usuario);

            String inbox = null;

            if (usuario.getTipo() == Usuario.ADMINISTRADOR) {
                inbox = "/administrador/home";

            } else if (usuario.getTipo() == Usuario.CANDIDATO) {
                inbox = "/candidato/home";

            } else {
                List<Vaga> vagas = vagaService.listarVagaPorUsuarioId(usuario.getId());
                model.addAttribute("vagas", vagas);
                inbox = "/empresa/home";
            }

            return inbox;
        } else {
            model.addAttribute("msg", "Autenticacao invalida para o usuario " + email);
        }

        return "/acesso/login";
    }

    @GetMapping(value = "/acesso")
    public String formLogin() {

        return "/app/login";
    }


    @GetMapping(value = "/logout")
    public String logout(HttpSession session, SessionStatus status) {

        status.setComplete();
        session.removeAttribute("usuario");

        return "redirect:/acesso";
    }

    @GetMapping(value = "/")
    public String homePage() {

        return "/app/index";

    }
}