package app;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Estudiante;

public class EliminarEst {
	EntityManagerFactory factory;
	EntityManager em;
	Estudiante es;
	
	public void eliminarEstudiante(int idEst) throws Exception{
		factory = Persistence.createEntityManagerFactory("LPII_Sesion03_CRUD");
		em = factory.createEntityManager();
		em.getTransaction().begin();
		Estudiante e = em.find(Estudiante.class, idEst);
		
		if(e==null) {
			System.out.println("Estudiante con ID: " + idEst +" no existe, no se pudo eliminar");
		}else {
			em.remove(e);
			em.getTransaction().commit();
			System.out.println("Estudiante con ID: "+ idEst + " fue eliminado correctamente");
		}
		em.close();
		factory.close();
	}

	public static void main(String[] args) {
		EliminarEst p = new EliminarEst();
		try {
			/* INI : ELIMINAR ESTUDIANTE**********/
			p.eliminarEstudiante(11);
			p.eliminarEstudiante(3);
			/*FIN : ELIMINAR ESTUDIANTE****************/
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
