package br.edu.infnet.service;

import br.edu.infnet.domain.Vaga;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@FeignClient(url = "http://localhost:8081/vagas", name = "vagaService")
public interface VagaService {

    @GetMapping(value = "/usuario/{usuarioId}")
    List<Vaga> listarVagaPorUsuarioId(@PathVariable Integer usuarioId);

    @PostMapping
    Vaga publicarVaga(Vaga vaga);
}
