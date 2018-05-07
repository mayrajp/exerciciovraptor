package br.com.poggers.exercicio.controllers;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import dao.ClienteDao;
import model.Cliente;

@Controller
@Path("/cliente")
public class ClienteController {
	@Inject
	private ClienteDao clienteDao;
	@Inject
	private Result result;

	@Get("")
	public void lista() {
		List<Cliente> listaCliente = clienteDao.findAll();
		result.include("listaCliente", listaCliente);
	}

	@Get("/teste")
	@Transactional
	public void teste() {
		Cliente c = new Cliente();
		c.setNome("joao");
		c.setCpf("123");
		clienteDao.save(c);

		System.out.println("teste");
		result.redirectTo(this).lista();
	}
}
