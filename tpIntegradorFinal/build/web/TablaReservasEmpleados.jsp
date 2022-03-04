<%-- 
    Document   : TablaReservasEmpleados
    Created on : 7 ago. 2021, 5:56:44 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Logica.Reserva"%>
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Lista de reservas empleados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="tablareservasdias/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="tablareservasdias/css/util.css">
        <link rel="stylesheet" type="text/css" href="tablareservasdias/css/main.css">
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
                                    <th class="column1">Numero de empleado</th>
                                    <th class="column2">Numero de reserva</th>
                                </tr>
                            </thead>
                            <tbody>

                            <div>
                                <% HttpSession sessionReservaE = request.getSession();
                                    Controladora control = new Controladora();
                                    String idEmpleadoBuscar = (String) sessionReservaE.getAttribute("idEmpleado");
                                    DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
                                    List<Reserva> listaReservas = control.traerReservas();
                                    for (Reserva rsv : listaReservas) {

                                        if (idEmpleadoBuscar.equals(rsv.getIdEmpleado())) {

                                %>


                                <tr>
                                    <%String idEmpleado = rsv.getIdEmpleado();%>
                                    <td class="column1"><%=idEmpleado%></td>
                                    <%int idReserva = rsv.getIdReserva();%>
                                    <td class="column2"><%=idReserva%></td>

                                </tr>
                            </div>

                            </tbody>

                            <%}%>
                            <%}%>

                        </table>
                    </div>
                </div>
                            <input type="button" class="btn btn-primary" value="Página anterior" onClick="window.location = 'menu.jsp';">
            </div>
        </div>



        <!--===============================================================================================-->	
        <script src="tablareservasdias/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablareservasdias/vendor/bootstrap/js/popper.js"></script>
        <script src="tablareservasdias/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablareservasdias/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="tablareservasdias/js/main.js"></script>

    </body>
</html>
