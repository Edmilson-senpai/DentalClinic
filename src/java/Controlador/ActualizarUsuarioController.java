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
public class ActualizarUsuarioController extends HttpServlet {

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
        int idusuario=0;
        String usuario_dni="";
        String usuario_nombre="";
        String usuario_apellido="";
        int usuario_telefono=0;
        String usuario_direccion="";
        if (request.getParameter("btnActualizar")!= null) {
            idusuario = Integer.parseInt(request.getParameter("idusuario"));
            usuario_dni = request.getParameter("usuario_dni");
            usuario_nombre = request.getParameter("usuario_nombre");
            usuario_apellido = request.getParameter("usuario_apellido");
            usuario_telefono = Integer.parseInt(request.getParameter("usuario_telefono"));
            usuario_direccion = request.getParameter("usuario_direccion");
            
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ idusuario);
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ usuario_dni);
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ usuario_nombre);
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ usuario_apellido);
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ usuario_telefono);
            System.out.println("POSITIVO usuario_dni ActualizarUsuarioController: "+ usuario_direccion);
        }else{
                System.out.println("NEGATIVO usuario_dni ActualizarUsuarioController: "+ idusuario);
                
        }
       // String usuario_dni = request.getParameter("btnEliminar");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");
        boolean actualizar = metodos.actualizarUsuario(idusuario,usuario_nombre,usuario_apellido,usuario_dni,usuario_telefono,usuario_direccion);
        if (actualizar == true) {
                out.println("alert('El usuario se ha actualizado con exito :) ')");
                out.println("location='vistas/administradorView/listausuario.jsp'");
        } else {
                out.println("alert('ERROR el usuario no se ha actualizado :( ')");
                out.println("location='vistas/administradorView/listausuario.jsp'");
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
