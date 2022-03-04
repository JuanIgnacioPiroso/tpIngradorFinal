<%-- 
    Document   : TablaHuespedes
    Created on : 4 ago. 2021, 11:41:41 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Logica.Reserva"%>
<%@page import="Logica.Huesped"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="tablahuespedes/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablahuespedes/css/util.css">
        <link rel="stylesheet" type="text/css" href="tablahuespedes/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-table100">
                <div class="wrap-table100">
                    <div class="table100">
                        <table>
                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">DNI</th>
                                    <th class="column2">Nombre y Apellido</th>
                                    <th class="column3">Fecha de nacimiento</th>
                                    <th class="column4">Direccion</th>
                                    <th class="column5">Profesion</th>
                                    <th class="column6">Eliminar</th>
                                    <th class="column7">Modificar</th>


                                </tr>
                            </thead>
                            <tbody>

                                <% Controladora control = new Controladora();
                                    List<Huesped> listaHuespedes = control.traerHuespedes();
                                    for (Huesped hues : listaHuespedes) {
                                %>

                                <tr>
                                    <%String dni = hues.getDni();%>
                                    <td class="column1"><%=dni%></td>
                                    <%String nya = hues.getNya();%>
                                    <td class="column2"><%=nya%></td>
                                    <%String fechaNac = hues.getFechaNac();%>
                                    <td class="column3"><%=fechaNac%></td>
                                    <%String direccion = hues.getDireccion();%>
                                    <td class="column4"><%=direccion%></td>
                                    <%String profesion = hues.getProfesion();%>
                                    <td class="column5"><%=profesion%></td>
                                    <% int id = hues.getIdHuesped();%>


                                    <td class =" column6">
                                        <form name="fmrBorrarHuesped" action="SvBorrarHuesped" method="POST" style="display:inline">
                                            <input type ="hidden" name="id" value="<%=id%>">
                                            <button type="submit" class="btn btn-danger btn-xs" data-title="Delete"style="display:inline">Eliminar</button>
                                        </form>
                                    </td>
                                    <td class =" column7">
                                        <form name="fmrModificarHuesped" action="SvModificarHuesped" method="POST" style="display:inline">
                                            <input type ="hidden" name="id" value="<%=id%>">
                                            <button type="submit" class="btn btn-primary" data-title="Edit"style="display:inline">Modificar</button>
                                        </form>
                                    </td>

                                </tr>

                                <%}%>
                            </tbody>

                        </table>

                    </div>
                </div>
                <input type="button" class="btn btn-primary" value="Página anterior" onClick="window.location = 'menu.jsp';">
            </div>
        </div>





        <!--===============================================================================================-->	
        <script src="tablahuespedes/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablahuespedes/vendor/bootstrap/js/popper.js"></script>
        <script src="tablahuespedes/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablahuespedes/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablahuespedes/js/main.js"></script>

    </body>
</html>