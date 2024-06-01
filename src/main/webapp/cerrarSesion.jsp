<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
						HttpSession sesionOk = request.getSession(); 
						sesionOk.invalidate(); 
					%> 
					<jsp:forward page="login.jsp"> 
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