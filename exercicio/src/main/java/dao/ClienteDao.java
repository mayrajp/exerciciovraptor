package dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.Delete;
import model.Cliente;

public class ClienteDao {

	@Inject
	private EntityManager manager;

	
	private Session session;
	
	// salva cliente no banco
	public void save(Cliente cliente) {
		manager.persist(cliente);
	}

	// retorna lista de clientes
	public List<Cliente> findAll() {
		return this.manager.createQuery("select t from Cliente t", Cliente.class).getResultList();
	}

	public void excluir(int id) {
		Cliente cliente = manager.find(Cliente.class, id);
		manager.remove(cliente);
		
	}
	
	public Cliente edita(int id) {
		Cliente cliente = manager.find(Cliente.class, id);
		return cliente;
	}
	
	public void alterar(Cliente cliente) {
		Cliente cAtual = manager.find(Cliente.class, cliente.getId());
		cAtual.setNome(cliente.getNome());
		cAtual.setCpf(cliente.getCpf());
		manager.persist(cAtual);
	}
	

}
