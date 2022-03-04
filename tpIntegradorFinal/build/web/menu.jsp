<%-- 
    Document   : menu
    Created on : 4 ago. 2021, 10:16:31 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Menu</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="menu/css/style.css">

    </head>
    <body>

        <% Controladora control = new Controladora();
            HttpSession misession = request.getSession();
            String fechaIngreso = (String) misession.getAttribute("fechaIngreso");
            String fechaEgreso = (String) misession.getAttribute("fechaEgreso");
            String tipoHabitacion = (String) misession.getAttribute("tipoHabitacion");
            String idHabitacion = (String) misession.getAttribute("numeroHabitacion");
            String piso = (String) misession.getAttribute("piso");
            String tematica = (String) misession.getAttribute("tematica");


            double precio = control.calcularPrecio(fechaIngreso, fechaEgreso, tipoHabitacion);


        %>

        <div class="page">
            <nav id="colorlib-main-nav" role="navigation">
                <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
                <div class="js-fullheight colorlib-table">
                    <div class="img" style="background-image: url(images/bg_3.jpg);"></div>
                    <div class="colorlib-table-cell js-fullheight">
                        <div class="row no-gutters">
                            <div class="col-md-12 text-center">
                                <h1 class="mb-4"><a href="menu.jsp" class="logo">Hoteles Argentinos</a></h1>
                                <ul>
                                    <li class="active"><a href="index2.jsp"><span>Nueva reserva</span></a></li>
                                    <li><a href="BuscarFecha.jsp">Reservas realizadas en determinado dia</a></li>
                                    <li><a href="TablaHuespedes.jsp"><span>Huespedes registrados en el sistema</span></a></li>
                                    <li><a href="BuscarEmpleado.jsp"><span>Reservas realizadas por determinado empleado</span></a></li>
                                    <li><a href="BuscarReservaFechas.jsp"><span>Reservas realizadas por determinado huesped</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <div id="colorlib-page">
                <header>
                    <div class="container">
                        <div class="colorlib-navbar-brand">
                            <a class="colorlib-logo" href="menu.jsp">Hoteles Argentinos</a>
                        </div>
                        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
                    </div>
                </header>

                <section class="hero-wrap js-fullheight">
                    <div class="container px-0">
                        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                            <div class="col-md-12 ftco-animate text-center">
                                <div class="desc">
                                    <h1>Reserva guardada con exito!</h1>

                                    <h3>El costo total de la reserva es de: <%=precio%></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>

        <script src="menu/js/jquery.min.js"></script>
        <script src="menu/js/popper.js"></script>
        <script src="menu/js/bootstrap.min.js"></script>
        <script src="menu/js/main.js"></script>

    </body>
</html>

