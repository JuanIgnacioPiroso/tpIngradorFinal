<%-- 
    Document   : TablaReservasHuespedes
    Created on : 7 ago. 2021, 8:09:25 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Logica.Reserva"%>
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
                                    <th class="column1">Dni huesped</th>
                                    <th class="column2">Numero de reserva</th>
                                    <th class="column3">Fecha de reserva</th>
                                </tr>
                            </thead>
                            <tbody>
                            <div>
                                <% HttpSession sessionReservaH = request.getSession();
                                    Controladora control = new Controladora();
                                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                                    String fechaInicio = (String) sessionReservaH.getAttribute("fechaReservaDesdeD");
                                    String fechaTermino = (String) sessionReservaH.getAttribute("fechaReservaHastaD");

                                    String dniBuscar = (String) sessionReservaH.getAttribute("dniHuesped");
                                    List<Reserva> listaReservas = control.traerReservas();

                                    for (Reserva rsv : listaReservas) {

                                        String fechaS = rsv.getFechaReserva();
                                        LocalDate fechaD = LocalDate.parse(fechaS, formatter);
                                        LocalDate fechaInicioD = LocalDate.parse(fechaInicio, formatter);
                                        LocalDate fechaTerminoD = LocalDate.parse(fechaTermino, formatter);

                                        if (dniBuscar.equals(rsv.getDniHuesped())) {

                                            System.out.println("fechaD: " + fechaD);
                                            System.out.println("fechaInicioD: " + fechaInicioD);
                                            System.out.println("fechaTerminoD: " + fechaTerminoD);
                                            System.out.println("fechaS:" + fechaS);

                                            if ((fechaD.isAfter(fechaInicioD) || fechaD.isEqual(fechaInicioD))
                                                    && (fechaD.isBefore(fechaTerminoD) || fechaD.isEqual(fechaTerminoD))) {

                                %>
                                <tr>
                                    <%String dniHuesped = rsv.getDniHuesped();%>
                                    <td class="column1"><%=dniHuesped%></td>
                                    <%long numReserva = rsv.getIdReserva();%>
                                    <td class="column2"><%=numReserva%></td>
                                    <%String fechaReserva = rsv.getFechaReserva();%>
                                    <td class="column3"><%=fechaReserva%></td>

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
