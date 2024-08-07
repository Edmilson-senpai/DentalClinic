/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import BD.MetodosSQL;
import Modelo.ClienteModel;
import DAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author reygr
 */
public class BuscarClienteHistoriaClinicaController extends HttpServlet {

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
        HttpSession sesion = request.getSession();
        /* TODO output your page here. You may use following sample code. */
        ClienteModel c = new ClienteModel();
        ClienteDAO cdao = new ClienteDAO();
        MetodosSQL metodos = new MetodosSQL();
        int cliente_dni=0;

        if (request.getParameter("btnBuscarCliente")!= null) {
            cliente_dni = Integer.parseInt(request.getParameter("cliente_dni"));
            String clienteEncontrado = metodos.buscarCliente(cliente_dni);
            System.out.println("Cliente es: " + clienteEncontrado);
            c.setClientenombre(clienteEncontrado);
            c=cdao.buscar(cliente_dni);
            request.setAttribute("c", c);
            System.out.println("Cliente es: " + c.getClientenombre());
            request.setAttribute("clienteEncontrado", clienteEncontrado);

        }else{
                System.out.println("NEGATIVO usuario_dni ActualizarUsuarioController: "+ cliente_dni);
                
        }
        
       // String usuario_dni = request.getParameter("btnEliminar");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">");

        
        
        
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
