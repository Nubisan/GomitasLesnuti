package com.productos.seguridad;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.producto.datos.Conexion;

public class Usuario {
	
	private int perfil;
	private String nombre;
	private String direccion;
	private String login;
	private String clave;
	
	public int getPerfil() {
		return perfil;
	}

	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String ingresarCliente() { 
		
		 String result=""; 
		 Conexion con=new Conexion(); 
		 PreparedStatement pr=null; 
		 String sql="INSERT INTO tb_usuario (id_per, nombre_us, direccion_us," 
		   + "login_us, clave_us) " 
		   + "VALUES(?,?,?,?,?)"; 
		 
		 try{ 
			 pr=con.getConexion().prepareStatement(sql); 
			 pr.setInt(1,2);     
			 pr.setString(2, this.getNombre()); 
			 pr.setString(3, this.getDireccion()); 
			 pr.setString(4, this.getLogin()); 
			 pr.setString(5, this.getClave()); 
			   
			 if(pr.executeUpdate()==1) { 
				 result="Insercion correcta"; 
			 } else { 
				 result="Error en insercion"; 
			 } 
			 
		  } catch(Exception ex) { 
			   result=ex.getMessage(); 
			   System.out.print(result); 
		  } finally { 
			  try { 
				  pr.close(); 
			      con.getConexion().close(); 
			  } catch(Exception ex) { 
				  System.out.print(ex.getMessage()); 
			  } 
		  } 
		  return result; 
	} 
	
	public boolean verificarUsuario(String nlogin, String nclave) { 
		boolean respuesta=false; 
		String sentencia= "Select * from tb_usuario where login_us='"+nlogin+ 
	    "' and clave_us='"+nclave+"';"; 
		//System.out.print(sentencia); 
		
		try {
			ResultSet rs; 
			Conexion con=new Conexion(); 
			rs=con.Consulta(sentencia); 
				   
			if(rs.next()) { 
				respuesta=true; 
				this.setLogin(nlogin); 
				this.setClave(nclave); 
				this.setPerfil(rs.getInt(2));  
				this.setNombre(rs.getString(3)); 
			} else { 
				respuesta=false; 
				rs.close(); 
			} 
		} catch(Exception ex) { 
			System.out.println( ex.getMessage()); 
		} 
		return respuesta; 
	}


}
