<%-- 
    Document   : FechaOcupada
    Created on : 9 ago. 2021, 3:20:13 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<!DOCTYPE html>
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><html lang="es">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>Fecha reservada</title>

            <!-- Google font -->
            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">

            <!-- Bootstrap -->
            <link type="text/css" rel="stylesheet" href="reservas/css/bootstrap.min.css" />

            <!-- Custom stlylesheet -->
            <link type="text/css" rel="stylesheet" href="reservas/css/style.css" />

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
                      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                    <![endif]-->

        </head>

        <body>
            <%       HttpSession misession = request.getSession();
                String idEmpleado = (String) misession.getAttribute("idEmpleado");
                %>
            <div id="booking" class="section">
                <div class="section-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="booking-cta">
                                    <h1>Hace tu reserva</h1>
                                    <p>¿Estas cansado de tu trabajo?. Es hora de descansar en Hoteles Argentinos. Diversion garantizada</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="booking-form">
                                    <form action="SvReserva" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="nya"autocomplete="off">
                                                    <span class="form-label">Nombre y Apellido</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="date" name="fechaNac"autocomplete="off">
                                                    <span class="form-label">Fecha de nacimiento</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="dni"autocomplete="off">
                                                    <span class="form-label">Dni</span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6">
                                                <div class="form-group">
                                                    <span class="form-label">Habitacion</span>
                                                    <select class="form-control" name="tipo">
                                                        <option>Single (1 persona)</option>
                                                        <option>Doble (2 personas como maximo)</option>
                                                        <option>Triple (3 personas como maximo)</option>
                                                        <option>Multiple (Hasta 6 personas)</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-6">
                                                <div class="form-group">
                                                    <span class="form-label">Tematica</span>
                                                    <select class="form-control" name="tematica">
                                                        <option>Economica</option>
                                                        <option>Vip</option>
                                                        <option>Premium</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="direccion"autocomplete="off">
                                                    <span class="form-label">Direccion</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="profesion"autocomplete="off">
                                                    <span class="form-label">Profesion</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="idHabitacion"autocomplete="off">
                                                    <span class="form-label">Numero de habitacion</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="piso"autocomplete="off">
                                                    <span class="form-label">Piso</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" name= "fechaIngreso" type="date" required>
                                                    <span class="form-label">Fecha de ingreso</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" name="fechaEgreso" type="date" required>
                                                    <span class="form-label">Fecha de egreso</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="alert alert-danger alert-dismissable">
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            <strong>¡Atencion!</strong> La habitacion en las fechas elegidas esta reservada
                                        </div>
                                        
                                         <input type ="hidden" name="idEmpleado" value="<%=idEmpleado%>">

                                        <div class="form-btn">

                                            <button class="submit-btn">Reservar Ya</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="reservas/js/jquery.min.js"></script>
            <script>
                $('.form-control').each(function () {
                    floatedLabel($(this));
                });

                $('.form-control').on('input', function () {
                    floatedLabel($(this));
                });

                function floatedLabel(input) {
                    var $field = input.closest('.form-group');
                    if (input.val()) {
                        $field.addClass('input-not-empty');
                    } else {
                        $field.removeClass('input-not-empty');
                    }
                }
            </script>

        </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

    </html>
