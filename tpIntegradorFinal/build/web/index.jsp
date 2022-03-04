<%-- 
    Document   : index
    Created on : 31 jul. 2021, 11:06:42 p. m.
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Hoteles Argentinos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100 p-t-30 p-b-50">
                    <span class="login100-form-title p-b-41">
                        Ingreso de Empleado
                    </span>
              
                    <form action="SvLoginEmpleado" method="POST" class="login100-form validate-form p-b-33 p-t-5">
                            
                             

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese su DNI">
                            <input class="input100" type="text" name="dni" placeholder="DNI"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#x1f583;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Ingrese su contraseña">
                            <input class="input100" type="password" name="contrasenia" placeholder="Contraseña"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Ingrese su Nombre y Apellido">
                            <input class="input100" type="text" name="nya" placeholder="Nombre y Apellido"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#xe82a"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese su fecha de nacimiento">
                            <input class="input100" type="date" name="fechaNac" placeholder="Fecha Nacimiento"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#x1f5d3;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese su direccion">
                            <input class="input100" type="text" name="direccion" placeholder="Direccion"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#x1f3e0;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese su cargo">
                            <input class="input100" type="text" name="cargo" placeholder="Cargo"autocomplete="off">
                            <span class="focus-input100" data-placeholder="&#x26fc;"></span>
                        </div>
                                    
                        <div class="container-login100-form-btn m-t-32">
                            <button class="login100-form-btn">
                                Ingresar
                            </button>
                        </div>

                               
                    </form>
                         
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>