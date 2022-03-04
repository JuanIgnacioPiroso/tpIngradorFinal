/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "SvLoginEmpleado", urlPatterns = {"/SvLoginEmpleado"})
public class SvLoginEmpleado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvLoginEmpleado</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvLoginEmpleado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dni = request.getParameter("dni");
        String contrasenia = request.getParameter("contrasenia");
        //String idEmpleado = request.getParameter("idEmpleado");
        

        Controladora control = new Controladora();
        boolean autorizacion = control.verificarEmpleado(dni, contrasenia);

        if (autorizacion == true) {

            //Obtengo la session y le asigno el dni para validar
            HttpSession sessionEmpleado = request.getSession(true);
            sessionEmpleado.setAttribute("dni", dni);
            sessionEmpleado.setAttribute("contraseña", contrasenia);
            //sessionEmpleado.setAttribute("idEmpleado", idEmpleado);

            
            response.sendRedirect("index2.jsp");

        } else {
        
            try {
                HttpSession sessionEmpleado = request.getSession();
                //sessionEmpleado.setAttribute("idEmpleado", idEmpleado);
                String nya = request.getParameter("nya");
                String fechaNac = request.getParameter("fechaNac");
                String direccion = request.getParameter("direccion");
                String cargo = request.getParameter("cargo");
                
                request.getSession().setAttribute("dni", dni);
                request.getSession().setAttribute("nya", nya);
                request.getSession().setAttribute("fechaNac", fechaNac);
                request.getSession().setAttribute("direccion", direccion);
                request.getSession().setAttribute("cargo", cargo);
                request.getSession().setAttribute("contraseña", contrasenia);
                
                
                
                
                
                control.crearEmpleado(dni, nya, fechaNac, direccion, cargo, contrasenia);
                
                
                response.sendRedirect("index2.jsp");
            } catch (Exception ex) {
                Logger.getLogger(SvLoginEmpleado.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
