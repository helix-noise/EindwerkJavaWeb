/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bll.Film;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Helix
 */
public class DetailVerkoop extends HttpServlet {

    private EntityManagerFactory emf;
    private EntityManager em;

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
            if (request.getSession().getAttribute("LoggedUser") != null) {
                try {
                    int id = Integer.parseInt(request.getParameter("id"));
                    emf = Persistence.createEntityManagerFactory("EindwerkJavaFilmShopPU");
                    em = emf.createEntityManager();
                    em.getTransaction().begin();
                    Query q = em.createNamedQuery("Film.findById");
                    q.setParameter("id", id);
                    Film film = (Film) q.getSingleResult();
                    request.setAttribute("FilmVerkoop", film);
                    RequestDispatcher rs = request.getRequestDispatcher("DetailAankopen.jsp");
                    rs.forward(request, response);
                } catch (Exception e) {
                    RequestDispatcher rs = request.getRequestDispatcher("ErrorPagina.jsp");
                    rs.forward(request, response);
                } finally {
                    em.close();
                    emf.close();
                }
            } else {
                request.setAttribute("error", "Gelieven eerst in te loggen voor aankoop.");
                RequestDispatcher rs = request.getRequestDispatcher("Login.jsp");
                rs.forward(request, response);
            }

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
