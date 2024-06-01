<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" type="text/css" href="css/estilo_form.css">
    <link href="https://fonts.googleapis.com/css2?family=Krona+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<title>Editar Producto</title>
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
					<% int cod = Integer.parseInt(request.getParameter("cod")) ;
                    Producto p = new Producto(); 
                    p.consulEditarProductos(cod); %>  
                    
                    <h2>Modificar producto</h2>
                    <div class="container">
                        <form action="editarProducto.jsp" method="post">
                        	<table>
                        		<tr>
	                            	<td>Codigo producto</td>
	                            	<td><input type="text" name="editarCod" value="<%=cod%>"/></td>
	                            </tr>
	                            
	                        	<tr>
	                            	<td>Categoria</td>
	                            	<td><output><%=p.getId_cat() %></output></td>
	                            </tr>
	                            
	                            <tr>
	                            	<td>Descripcion</td>
	                            	<td><input type="text" name="editarDesc" value="<%=p.getNombre_pr() %>"/></td>
	                            </tr>
	                            
	                            <tr>
	                            	<td>Cantidad</td>
	                            	<td><input type="text" name="editarCant" value="<%=p.getCantidad_pr()%>"/></td>
	                            </tr>
	                            
	                            <tr>
	                            	<td>Precio</td>
	                            	<td><input type="text" name="editarPrec" value="<%=p.getPrecio_pr()%>"/></td>
	                            </tr>
	                            
                        	</table>        
                        	
                        	<div class="button">
	                            <input type="submit" value="Actualizar"/>
	                    	</div>                      
                    	</form>  
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