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
		//manager.getTransaction().begin();
		Cliente cliente = manager.find(Cliente.class, id);
		System.out.println("pegando esse cliente" + cliente.getNome());
		manager.remove(cliente);
		//manager.close();
	}
}
