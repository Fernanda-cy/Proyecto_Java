package app;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Estudiante;

public class InsertaEst {

	EntityManagerFactory factory;
	EntityManager em;
	Estudiante es;
	
	public void registrarEstudiante(Estudiante data) throws Exception {
		factory =Persistence.createEntityManagerFactory("LPII_Sesion03_CRUD");
		em = factory.createEntityManager();
		em.getTransaction().begin();
		em.persist(data);
		em.getTransaction().commit();
		em.close();
		factory.close();
		
		System.out.println("Estudiante registrado correctamente");
	}

	public static void main(String[] args) {
		InsertaEst p= new InsertaEst();
		try{
			/*INI: REGISTRAR ESTUDIANTE ******/
		Estudiante student1 = new Estudiante();
				student1.setNombreApe("Ricardo Luna");
				student1.setTipoDocumento("CEX");
				student1.setNroDocumento("0124578450");
				student1.setTelefono("987987987");
				student1.setCarrera("Contabilidad");
				p.registrarEstudiante(student1);
				/*fin: registrar estudiante****/
	}
	catch (Exception e) {
	e.printStackTrace();
}
		
}
}
