/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import BD.MetodosSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author reygr
 */
public class GuardarNuevaHistoriaClinicaController extends HttpServlet {

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
        String dni_cliente_historia = request.getParameter("dni_cliente_historia");
        String nombre_cliente_historia = request.getParameter("nombre_cliente_historia");
        String apellido_cliente_historia = request.getParameter("apellido_cliente_historia");
        String servicio_historia = request.getParameter("servicio_historia");
        String comentario_1_historia = request.getParameter("comentario_1_historia");
        String comentario_2_historia = request.getParameter("comentario_2_historia");
        String observacion_historia = request.getParameter("observacion_historia");
        
        System.out.println("dni_cliente_historia : " + dni_cliente_historia);
        
        //int usuario_telefono = Integer.parseInt(request.getParameter("usuario_telefono"));


        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");
        boolean registro = metodos.registrarHistoriaClinica(dni_cliente_historia, nombre_cliente_historia, apellido_cliente_historia, servicio_historia, comentario_1_historia, comentario_2_historia, observacion_historia);
        if (registro == true) {
                out.println("alert('La historia se ha registrado con exito :) ')");
                out.println("location='vistas/administradorView/nuevahistoria.jsp'");
        } else {
                out.println("alert('ERROR la historia no se ha registrado :( ')");
                out.println("location='vistas/administradorView/nuevahistoria.jsp'");
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
