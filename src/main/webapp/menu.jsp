<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Menu</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link href="https://fonts.googleapis.com/css2?family=Krona+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>
<body>
   <main>
        <header id="home">
            <div class = "contenedor">
                <div class="titular">
                    <h1>Gomitas Lesnuti</h1>
                    <h2> Sabores que endulzan momentos difíciles </h2>
                </div>
            </div>
        </header>

        <div id="menu">
            <div class="contenedor">
                <div class="logo-nav">
                    <img src="imagenes/logo.png" alt="Logo Gomitas Lesnuti">
                    <nav>
                        <ul>
                            <li><a href="productos.jsp">Ver productos</a></li>
                            <li><a href="categoria.jsp">Buscar Por Categoria</a></li>
                            <li><a href="login.jsp">Login</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <section id="todo">
            <div class="contenedor">
                <article class="texto">
					<% 
						String usuario = null; // Declarar las variables fuera del bloque else
					    int perfil = 0; // Declarar las variables fuera del bloque else
						HttpSession sesion = request.getSession(); 
						
						if (sesion.getAttribute("usuario") == null)   //Se verifica si existe la variable      
						{ 
							%> 
								<jsp:forward page="login.jsp"> 
							    <jsp:param name="error" value="Debe registrarse en el sistema."/> 
							    </jsp:forward> 
						    <% 
						} else { 
							usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos 
						    perfil=(Integer)sesion.getAttribute("perfil"); 
						}
						
					%> 
					<h1>Sitio Privado de Productos</h1>  
					<h4>Bienvenido  
					<%  
						out.println(usuario); 
						out.println(perfil);
					%> 
					</h4> 
					<% 
						Pagina pag=new Pagina(); 
						String menu=pag.mostrarMenu(perfil); 
						out.print(menu); 
					%>
                </article>

                <aside class="info">
                    <h4>Conoce a los Desarrolladores</h4> 
                    <p>Detrás de cada deliciosa gomita de Lesnuti, hay un equipo de apasionados emprendedores que trabaja incansablemente para endulzar tu día. Si quieres saber más sobre las mentes creativas y los corazones dedicados que impulsan nuestro negocio, te invitamos a conocer más sobre nuestros desarrolladores.</p> 
                    <a href="https://ec.linkedin.com/">Ver más información sobre los desarrolladores </a>
                </aside>
            </div>
        </section>

        <footer>
            <div class="contenedor">
                <ul class="social_icon">
                    <li><a href="https://www.facebook.com/RomeoSantosOfficial" target="_blank"><img src="imagenes/facebook.png"></a></li> 
                    <li><a href="https://www.youtube.com/user/romeo" target="_blank"><img src="imagenes/whatsapp.png"></a></li> 
                    <li><a href="https://www.instagram.com/romeosantos/" target="_blank"><img src="imagenes/instagram.png"></a></li> 
                </ul> 
                <p>Derechos de autor © Gomitas Lesnuti 2020 | Gomitas Lesnuti® Todos lo derechos reservados</p>
            </div>
        </footer>
    </main>    
</body>   
</html>