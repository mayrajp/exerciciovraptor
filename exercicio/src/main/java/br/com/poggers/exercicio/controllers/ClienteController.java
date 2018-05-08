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
	
	@Post("/teste")
	@Transactional
	public void teste(Cliente cliente) {
		clienteDao.save(cliente);
		System.out.println("teste");
		result.redirectTo(this).lista();
	}
	
	/*@Get("edita/{cliente.id}")
	public Cliente edita(int id) {
		return clienteDao.carrega(id);
	}
	*/
	
	
	@Get("/remove/{id}")
	@Transactional
	public void excluir(int id) {
		clienteDao.excluir(id);
		result.redirectTo(this).lista();
	}
	
	@Get("/edita")
	public void edita() {
		
	}
	
	/*
	@Get("/edita/{cliente.id}")
	public Cliente edita(int id) {
		return clienteDao.carrega(id);
	}
	#/
	
	/*public void remove(int id) {
		Cliente cliente = clienteDao.carrega(id);
		ClienteDao.remove(cliente);
		result.redirectTo(this).lista();
	}
	*/
}
