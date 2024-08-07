/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import BD.MetodosSQL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author reygr
 */
public class GuardarRegistroUsuarioController extends HttpServlet {

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

        MetodosSQL metodos = new MetodosSQL();
        String usuario_dni = request.getParameter("usuario_dni");
        String usuario_nombre = request.getParameter("usuario_nombre");
        String usuario_apellido = request.getParameter("usuario_apellido");
        String usuario_usuario = request.getParameter("usuario_usuario");
        int usuario_telefono = Integer.parseInt(request.getParameter("usuario_telefono"));
        String usuario_direccion = request.getParameter("usuario_direccion");
        String usuario_email = request.getParameter("usuario_email");
        String usuario_clave_2 = request.getParameter("usuario_clave_2");
        String usuario_privilegio = request.getParameter("usuario_privilegio");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");
        boolean registro = metodos.registrarUsuario(usuario_nombre, usuario_apellido, usuario_usuario, usuario_clave_2, usuario_email, usuario_dni, usuario_privilegio, usuario_direccion, usuario_telefono);
        if (registro == true) {
                out.println("alert('El usuario se ha registrado con exito :) ')");
                out.println("location='vistas/administradorView/nuevousuario.jsp'");
        } else {
                out.println("alert('ERROR el usuario no se ha registrado :( ')");
                out.println("location='vistas/administradorView/nuevousuario.jsp'");
        }
        out.println("</script>");
        out.println("</body>");
        out.println("</html>");

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
