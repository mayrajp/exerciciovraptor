package br.com.poggers.exercicio.controllers;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
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
	
	@Get("/formulario")
	public void formulario() {
		
	}
	
	@Post("/alterar")
	@Transactional
	public void alterar(Cliente cliente) {
		clienteDao.alterar(cliente);
		System.out.println("esta entrando no metodo");
		result.redirectTo(this).lista();
	}
	
	@Post("/teste")
	@Transactional
	public void teste(Cliente cliente) {
		clienteDao.save(cliente);
		System.out.println("teste");
		result.redirectTo(this).lista();
	}

	
	@Get("/remove/{id}")
	@Transactional
	public void excluir(int id) {
		clienteDao.excluir(id);
		result.redirectTo(this).lista();
	}
	
	@Get("/formEdita/{id}")
	public void formEdita(int id) {
		Cliente cliente = clienteDao.edita(id);
		result.include("cliente",cliente);
	}
	
	
	
	
	
	
}
