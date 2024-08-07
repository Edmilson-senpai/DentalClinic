/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import BD.MetodosSQL;
import DAO.LoginDAO;
import Modelo.UsuarioModel;
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
 * @author reygr
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        /* TODO output your page here. You may use following sample code. */
        HttpSession sesion = request.getSession();
        
        
        MetodosSQL metodos = new MetodosSQL();
        
        UsuarioModel um = new UsuarioModel();
        LoginDAO lg = new LoginDAO();
        int rspta = 0;
        if (request.getParameter("btn-login") != null) {
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");
            um.setCorreo(usuario);
            um.setPassword(clave);
            System.out.println("Usuario de ingreso Login Controller: " + usuario);
            System.out.println("Clave de ingreso Login Controller: " + clave);
            try {
                rspta = lg.validarLogin(um);
            } catch (Exception ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println("rspta que llego al LoginController: " + rspta);
            if (rspta == 1) {                
                String nombres = metodos.buscarNombre(usuario);
                String apellidos = metodos.buscarApellido(usuario);
                //out.println("El valor del nombre en el SERVLET es: " + nombres);
                
                sesion.setAttribute("nombres", nombres);
                sesion.setAttribute("apellidos", apellidos);
                
                
                response.sendRedirect("/DentoSmile/vistas/administradorView/dashboard.jsp");
                     
            }else if (rspta == 2) {
                System.out.println("Ingresa por 2");
                String nombres = metodos.buscarNombre(usuario);
                String apellidos = metodos.buscarApellido(usuario);
                sesion.setAttribute("nombres", nombres);
                sesion.setAttribute("apellidos", apellidos);
                response.sendRedirect("/DentoSmile/vistas/doctorView/dashboard.jsp");
            }else{
                response.sendRedirect("/DentoSmile/login.jsp?rspta=" + rspta);
            }
            
            /*
            switch (rspta) {
                case 1:
                    response.sendRedirect("/DentoSmile/vistas/administradorView/adminview.html");
                    break;
                case 2:
                    response.sendRedirect("/DentoSmile/vistas/doctorView/doctorview.html");
                    break;
                default:
                    response.sendRedirect("/DentoSmile/login.jsp?rspta=" + rspta);
                    break;
            }*/

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
        processRequest(request, response);
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
