<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="true" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificar Inicio de sesion</title>
</head>
<body>
	<main>
		<header>
            <h1> GOMITAS LESNUTI </h1>
            <h2> Sabores que endulzan momentos difíciles </h2>
        </header>

        <nav>
            <a href="consulta.jsp">Ver productos</a>
            <a href="categoria.jsp">Buscar Por Categoria</a> 
            <a href="nuevoProducto.jsp">Registrar producto</a> 
            <a href="login.jsp">Login</a>
        </nav>

        <div class="contenedor">
            <section>
                <article>
 					<% 
 						Usuario usuario=new Usuario(); 
						String nlogin=request.getParameter("usuario"); 
						String nclave=request.getParameter("clave"); 
						 
						HttpSession sesion=request.getSession();  //Se crea la variable de sesión 
						boolean respuesta=usuario.verificarUsuario(nlogin,nclave); 
						
						if (respuesta) 
						{ 
						 sesion.setAttribute("usuario", usuario.getNombre()); //Se añade atributos 
						 sesion.setAttribute("perfil", usuario.getPerfil());  //Se añade atributos 
						 response.sendRedirect("menu.jsp");  //Se redirecciona a una página específica 
						} 
						else 
						{ 
					%> 
						 <jsp:forward page="login.jsp"> 
						 <jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/> 
						 </jsp:forward> 
					<% 
						} 
					%> 
                </article>
                
                <aside>
                    <a href="https://ec.linkedin.com/">Ver más información sobre los desarrolladores </a>
                </aside>
            </section>
        </div>

        <footer>
            <ul class="social_icon">
                <li><img src="imagenes/facebook.png"></li> 
                <li><img src="imagenes/whatsapp.png"></li> 
                <li><img src="imagenes/instagram.png"></li> 
            </ul> 
            <p>Derechos de autor © Gomitas Lesnuti 2020 | Gomitas Lesnuti® Todos lo derechos reservados</p>
        </footer>
    </main>   

</body>
</html>