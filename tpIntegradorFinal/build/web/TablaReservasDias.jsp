<%-- 
    Document   : TablaReservasDias
    Created on : 5 ago. 2021, 6:39:14 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Logica.Habitacion"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Logica.Controladora"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Logica.Reserva"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Menu</title>
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
                                    <th class="column1">Numero de Reserva</th>
                                    <th class="column2">Fecha de Reserva</th>
                                    <th class="column3">Eliminar</th>
                                </tr>
                            </thead>
                            <tbody>
                            <div>  

                                <% HttpSession sessionEmpleado = request.getSession();
                                    Controladora control = new Controladora();
                                    String fechaBuscar = (String) sessionEmpleado.getAttribute("fecha");
                                    List<Reserva> listaReservas = control.traerReservas();
                                    List<Habitacion> listaHabitaciones = control.traerHabitaciones();

                                    for (Reserva rsv : listaReservas) {
                                        for(Habitacion hab: listaHabitaciones){
                                        if (fechaBuscar.equals(rsv.getFechaReserva())) {
                                            

                                %>




                                <tr>
                                    <%int idReserva = rsv.getIdReserva();%>
                                    <td class="column1"><%=idReserva%></td>
                                    <%String fechaReservaS = rsv.getFechaReserva();%>
                                    <td class="column2"><%=fechaReservaS%></td>



                                    <%int id = rsv.getIdReserva();%>
                                    <%int idHabitacion = hab.getIdHabitacion();%>

                                    <td class="column3">
                                        <form name="fmrBorrarReserva" action="SvBorrarReserva" method="POST" style="display:inline">
                                            <input type ="hidden" name="id" value="<%=id%>">
                                            <input type ="hidden" name="idHabitacion" value="<%=idHabitacion%>">
                                            <button type="submit" class="btn btn-danger btn-xs" data-title="Delete"style="display:inline">Eliminar</button>
                                        </form>

                                    </td>




                                </tr>
                            </div>



                            </tbody>

              
                            <%}%>
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
