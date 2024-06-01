<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Iniciar sesion</title>
    <link href="https://fonts.googleapis.com/css2?family=Krona+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
	<link rel="stylesheet" type="text/css" href="css/estilo_log.css">
</head>
</head>
<body>
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
                        	<li><a href="index.jsp">Home</a></li>
                            <li><a href="productos.jsp">Ver productos</a></li>
                            <li><a href="categoria.jsp">Buscar Por Categoria</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <section id="todo">
            <div class="contenedor">
                <article class="texto">
                	<%String errorMessage = request.getParameter("error");%> 
                	
                	<img src="imagenes/user.png" alt="user-login">
                    <h2>Bienvenido</h2>
                    
                    <form action="verificarLogin.jsp" method="post">
                    	<label for="usuario">Ingrese su Email: </label>
                    	<input type="email" id="usuario" name="usuario" placeholder="usuario@nombreProveedor.dominio">
                    	
                    	<label for="clave">Ingrese su contraseña: </label>
                        <input type="password" id="clave" name="clave" placeholder="Contraseña">
                        
                        <div class="button">
                            <input type="submit" value="Iniciar Sesión"/>
                            <input type="reset" value="Borrar"/>
                        </div> 
                        
                        <a href="registro.jsp">Registrarse</a>
                        <a href="cambioClave.jsp">Olvidaste tu contraseña?</a>
                    </form>
                        
                        <% if (errorMessage != null) { %>
        				<div class="errorMessage"><%= errorMessage %></div>
    					<% } %>
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