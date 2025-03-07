package app;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.Estudiante;

public class ActualizarEst {
	
	EntityManagerFactory factory;
	EntityManager em;
	Estudiante es;
	
	public void actualizarEstudiante(int idEst, Estudiante data) throws Exception {
		factory =Persistence.createEntityManagerFactory("LPII_Sesion03_CRUD");
		em = factory.createEntityManager();
		em.getTransaction().begin();
		Estudiante e = em.find(Estudiante.class, idEst);
		
	if(e==null) {
		System.out.println("Estudiante con id: " +idEst + "no existe, no se pudo actualizar");
	}else {
		e.setIdEst(idEst);
		e.setNombreApe(data.getNombreApe());
		e.setCarrera(data.getCarrera());
		e.setTelefono(data.getTelefono());
		e.setTipoDocumento(data.getTipoDocumento());
		e.setNroDocumento(data.getNroDocumento());
		em.getTransaction().commit();
		System.out.println("Estudiante con id: "+ idEst + " fue actualizado correctamente");
	}
	em.close();
	factory.close();
	}
	
	public static void main(String[] args) {
		ActualizarEst p = new ActualizarEst();
		try {
			/*INI: ACTUALIZAR ESTUDIANTE********/
			Estudiante student2 = new Estudiante();
			student2.setNombreApe("Mario Vargas");
			student2.setTipoDocumento("DNI");
			student2.setNroDocumento("12345678");
			student2.setTelefono("987987987");
			student2.setCarrera("Logistica");
			p.actualizarEstudiante(3, student2);
			/* fin : actualizar estudiante *********/
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}
}
