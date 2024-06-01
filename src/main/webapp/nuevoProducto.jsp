<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Nuevo Producto</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" type="text/css" href="css/estilo_form.css">
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
                           
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <section id="todo">
            <div class="contenedor">
                <article class="texto">
                    <h2>Registro de nuevo producto</h2>
                    
                    <form action="registroProducto.jsp" method="post" >
                    
                    	<span>Categoría: </span> 
                        <% Categoria c = new Categoria();
		                String combCategoria = c.mostrarCategoria();
		                out.print(combCategoria); %>
                        
                        <label for="nombreProd">Nombre del producto: </label>  
                        <input type="text" id="nombreProd" name="txtNombreProd" required/>
                        
                        <label for="cantidad">Cantidad: </label>  
                        <input type="number" id="cantidad" name="cantidad" required min="6"/>
                            
                        <label for="precio">Precio: </label> 
                        <input type="number" id="precio" name="precio" min="0" step="0.01" pattern="\d+(\.\d{1,2})?" required/>
                            
                        <label for="fileFoto">Imagen del producto: </label> 
                        <input type="file" id=="fileFoto" name="fileFoto" accept=".jpg" required/>

                        <div class="button">
                            <input type="submit" value="Enviar"/>
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