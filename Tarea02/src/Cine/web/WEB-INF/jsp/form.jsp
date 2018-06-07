<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title><spring:message code="label.boleto"/></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script> 
        <script>
        $(function() {
            $("#datepicker").datepicker();
        });
    </script>
    <script>
        $(document).ready(function() {
            //add more file components if Add is clicked
            $('#addFile').click(function() {
		var fileIndex = $('#fileTable tr').children().length;
		$('#fileTable').append(
				'<tr><td>'+
				'	<input type="file" name="files['+ fileIndex +']" />'+
				'</td></tr>');
            });
	
        });
    </script>
    </head>
    <body>
        <!---Datos de la pelicula constantes-->
    
    <center>
    <div calss="container" align="center">    
        <br />
        <br />
        <table>
            <thead>
                <tr>
                    <th><center><spring:message code="label.poster"/></center></th>
            <th><center><spring:message code="label.datosPelicula"/></center></th>
            <th><center><spring:message code="label.similares"/></center></th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/img/interestelar.jpg" download="interestelar.jpg">
                        <img src="${pageContext.request.contextPath}/img/interestelar.jpg" 
                             alt="Interstellar" width="150px" class="img-thumbnail" title="Da clic para descargar el poster"/>
                        </a>
                    </td>
                    <td>
                        <!--descargar poster -->
                        
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th><spring:message code="label.titulo"/></th>
                                    <th><spring:message code="label.tituloPelicula"/></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><spring:message code="label.clasificacion"/></td>
                                    <td>B</td>

                                </tr>
                                <tr>
                                    <td><spring:message code="label.version"/></td>
                                    <td><spring:message code="label.versionIdioma"/></td>
                                </tr>
                                <tr>
                                    <td><spring:message code="label.sala"/></td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td><spring:message code="label.hora"/></td>
                                    <td>12:00 PM</td>
                                </tr>
                                <tr>
                                    <td><spring:message code="label.cine"/></td>
                                    <td>Cinemex parque lindavista</td>
                                </tr>
                                <tr>

                                    <td><spring:message code="label.dia"/></td>
                                    <td><input type="text" id="datepicker"></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td>
                        <div class="container-fluid">
                            <div id="jsaAboutCarousel" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#jsaAboutCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#jsaAboutCarousel" data-slide-to="1"></li>
                                    <li data-target="#jsaAboutCarousel" data-slide-to="2"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner">

                                    <div class="item active">
                                        <img src="${pageContext.request.contextPath}/img/avengers.jpg" alt="JSA-About" style="width:170px;" />
                                        <div class="carousel-caption">
                                            <h3>Vengadores</h3>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <img src="${pageContext.request.contextPath}/img/rogueO.jpg" alt="JSA-About" style="width:170px;" />
                                        <div class="carousel-caption">
                                            <h3>Star Wars</h3>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <img src="${pageContext.request.contextPath}/img/blackP.jpg" alt="JSA-About" style="width:170px;" />
                                        <div class="carousel-caption">
                                            <h3>Black Panther</h3>
                                        </div>
                                    </div>

                                </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#jsaAboutCarousel" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#jsaAboutCarousel" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </td>
                </tr>                
            </tbody>
        </table>
        </div>
    </center>
    <!--Fin-->

    <div class="container">
        <div class="row" style="background-color:#ccffcc">
            <h1><spring:message code="label.datos"/></h1>
            <form:form method="POST" commandName="boleto">

                <form:errors path="*" element="div" cssClass="alert alert-danger" />

                <p>
                    <form:label path="nombre"><spring:message code="label.nombreCliente"/></form:label>
                    <form:input path="nombre" cssClass="form-control" />
                    <form:errors path="nombre" />
                </p>

                <p>
                    <form:label path="tituloPelicula"><spring:message code="label.titulo"/></form:label>
                    <form:input path="tituloPelicula" cssClass="form-control" />
                    <form:errors path="tituloPelicula" />
                </p>

                <p>
                    <form:label path="precio"><spring:message code="label.precio"/></form:label>
                    <form:input path="precio" cssClass="form-control" />
                    <form:errors path="precio" />
                </p>

                <p>
                    <form:label path="sala"><spring:message code="label.sala"/></form:label>
                    <form:input path="sala" cssClass="form-control" />
                    <form:errors path="sala" />
                </p>
                <center>
                    <img src="https://i.imgur.com/qT4fVbq.jpg" 
                         alt="Butacas" width="500px" class="img-thumbnail">
                </center>
                <p>
                    <form:label path="asiento"><spring:message code="label.asiento"/></form:label>
                    <form:input path="asiento" cssClass="form-control" />
                    <form:errors path="asiento" />
                </p>

                <p>
                    <form:label path="cine"><spring:message code="label.cine"/></form:label>
                    <form:input path="cine" cssClass="form-control" />
                    <form:errors path="cine" />
                </p>
                
                <p>
                    
                
                <hr />
                <p align="right"><input type="submit" value="Continuar" class="btn btn-success" dir="rtl"/></p>
                </form:form>

        </div>
    </div>    
    <div class="container">
        <div class="row">
            <h1><spring:message code="label.tienes"/></h1>
            <form:form method="post" action="save.htm" modelAttribute="uploadForm" enctype="multipart/form-data">
                <p><spring:message code="label.comparte"/></p>
                <input id="addFile" type="button" value="Agregar archivo" /></br>
                <table id="fileTable">
                    <tr>
                        </br>
                        <td><input name="files[0]" type="file" size="50"/></br></td>
                    </tr>		
                    		
                </table>
                <br/><input type="submit" value="Subir" />
                </p>
                
            </form:form>
                
                

        </div>
    </div> 
            


<span style="float: right">
	<a href="?lang=es">es</a> 
	| 
	<a href="?lang=en">en</a>
</span>
    
</body>
</html>
