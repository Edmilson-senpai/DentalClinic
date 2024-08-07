/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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
 * @author ABIGAIL
 */
public class EliminarHistoriaController extends HttpServlet {
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
        int idhistoria=0;
        if (request.getParameter("btnEliminar")!=null) {
            idhistoria = Integer.parseInt(request.getParameter("idhistoria"));
            System.out.println("POSITIVO idhistoria EliminarHistoriaController: "+ idhistoria);
        }else{
                System.out.println("NEGATIVO idhistoria EliminarHistoriaController: "+ idhistoria);
        }
       // String usuario_dni = request.getParameter("btnEliminar");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");
        boolean eliminar = metodos.eliminarHistoria(idhistoria);
        if (eliminar == true) {
                out.println("alert('La historia se ha eliminado con exito :) ')");
                out.println("location='vistas/administradorView/listahistoria.jsp'");
        } else {
                out.println("alert('ERROR la historia no se ha eliminado :( ')");
                out.println("location='vistas/administradorView/listahistoria.jsp'");
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
