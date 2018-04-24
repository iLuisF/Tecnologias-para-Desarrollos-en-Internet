
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Boleto</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
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
                                    <td>Dia: </td>
                                    <td>Jueves 29 de marzo</td>
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
                                    <td>Sala: </td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
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
