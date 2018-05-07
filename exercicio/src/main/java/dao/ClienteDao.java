package dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import model.Cliente;

public class ClienteDao {

	@Inject
	private EntityManager manager;

	public void save(Cliente cliente) {
		manager.persist(cliente);
	}

	public List<Cliente> findAll() {
		return this.manager.createQuery("select t from Cliente t", Cliente.class).getResultList();
	}
}
