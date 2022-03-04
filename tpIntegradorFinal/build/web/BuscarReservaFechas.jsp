<%-- 
    Document   : BuscarReservaFechas
    Created on : 7 ago. 2021, 7:29:16 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><html lang="es">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>Booking Form HTML Template</title>

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
 
            <div id="booking" class="section">
                <div class="section-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="booking-cta">
                                    <h1>Busca las reservas</h1>
                                    <p>Ingresando las fechas podras ver todas las reservas de un determinado huesped </p>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1">
                                <div class="booking-form">
                                    <form action="SvReservasHuesped" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" name= "fechaReservaDesde" type="date" required>
                                                    <span class="form-label">Fecha de reserva (Desde)</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" name="fechaReservaHasta" type="date" required>
                                                    <span class="form-label">Fecha de reserva (Hasta)</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" name="dni"autocomplete="off">
                                                    <span class="form-label">Dni del huesped</span>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-btn">
                                            <button class="submit-btn">Buscar</button>
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
