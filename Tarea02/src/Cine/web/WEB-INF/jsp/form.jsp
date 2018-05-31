
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Boleto</title>
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
    </head>
    <body>
        <!---Datos de la pelicula constantes-->
    <center>
        <br />
        <br />
        <table>
            <thead>
                <tr>
                    <th><center>Poster</center></th>
            <th><center>Datos de la pelicula</center></th>
            <th><center>Similares</center></th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img src="https://imgc.allpostersimages.com/img/print/u-g-F7SGU60.jpg?w=550&h=550&p=0" 
                             alt="Interstellar" width="150px" class="img-thumbnail"></td>
                    <td>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Titulo: </th>
                                    <th>Interstellar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Clasificación: </td>
                                    <td>B</td>

                                </tr>
                                <tr>
                                    <td>Versión: </td>
                                    <td>Español</td>
                                </tr>
                                <tr>
                                    <td>Sala: </td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>Hora: </td>
                                    <td>12:00 PM</td>
                                </tr>
                                <tr>
                                    <td>Cine: </td>
                                    <td>Cinemex parque lindavista</td>
                                </tr>
                                <tr>

                                                                        <td>Dia: </td>
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
                                        <img src="http://es.web.img3.acsta.net/r_1920_1080/pictures/14/03/10/10/35/587504.jpg" alt="JSA-About" style="width:170px;" />
                                        <div class="carousel-caption">
                                            <h3>Vengadores</h3>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <img src="http://speedytv.com/wp-content/uploads/2017/10/qjiskwlV1qQzRCjpV0cL9pEMF9a-720x1080.jpg" alt="JSA-About" style="width:170px;" />
                                        <div class="carousel-caption">
                                            <h3>Star Wars</h3>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <img src="https://pbs.twimg.com/media/DWAjE1DWsAA42kF.jpg" alt="JSA-About" style="width:170px;" />
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
    </center>
    <!--Fin-->

    <div class="container">
        <div class="row">
            <h1>Ingrese sus datos</h1>
            <form:form method="POST" commandName="boleto">

                <form:errors path="*" element="div" cssClass="alert alert-danger" />

                <p>
                    <form:label path="nombre">Nombre del cliente: </form:label>
                    <form:input path="nombre" cssClass="form-control" />
                    <form:errors path="nombre" />
                </p>

                <p>
                    <form:label path="tituloPelicula">Titulo de la pelicula: </form:label>
                    <form:input path="tituloPelicula" cssClass="form-control" />
                    <form:errors path="tituloPelicula" />
                </p>

                <p>
                    <form:label path="precio">Precio: </form:label>
                    <form:input path="precio" cssClass="form-control" />
                    <form:errors path="precio" />
                </p>

                <p>
                    <form:label path="sala">Sala: </form:label>
                    <form:input path="sala" cssClass="form-control" />
                    <form:errors path="sala" />
                </p>
                <center>
                    <img src="https://i.imgur.com/qT4fVbq.jpg" 
                         alt="Butacas" width="500px" class="img-thumbnail">
                </center>
                <p>
                    <form:label path="asiento">Asiento: </form:label>
                    <form:input path="asiento" cssClass="form-control" />
                    <form:errors path="asiento" />
                </p>

                <p>
                    <form:label path="cine">Cine: </form:label>
                    <form:input path="cine" cssClass="form-control" />
                    <form:errors path="cine" />
                </p>
                <hr />
                <p align="right"><input type="submit" value="Continuar" class="btn btn-success" dir="rtl"/></p>
                </form:form>

        </div>
    </div>    

</body>
</html>
