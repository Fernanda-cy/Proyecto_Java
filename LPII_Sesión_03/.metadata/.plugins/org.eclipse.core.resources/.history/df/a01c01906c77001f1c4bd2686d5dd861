package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Index;
import javax.persistence.Enumerated;
import javax.persistence.EnumType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "producto" ,
indexes = (@Index(name = "idx_prod", columnList = "descripticion", unique = true)))

public class Producto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idProd")
	private int idProducto;
	
	@Column(name = "descripcion", nullable = false, length = 100)
	private String nombreProd;
	
	@Column(name = "precio", nullable =false)
	private double precio;
	
	@Column(name = "estado", nullable = false)
	@Enumerated(value = EnumType.STRING)
	private Status estado;
	
	@Column(name = "fechaIng", updatable = false, nullable = false)
	@Temporal (TemporalType.DATE)
	private Date fecha_Ingreso;
	
	@Column (name = "stock", nullable = false)
	private double stock;
	
	//encapsulado
	public int getIdProducto() {
		return idProducto;
	}
	
	
}
