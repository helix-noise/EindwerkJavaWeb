/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bll.Klant;
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
public class LoginKlant extends HttpServlet {

    private EntityManagerFactory emf;
    private EntityManager em;
    private Klant k;
    private String error;

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
            try {
                emf = Persistence.createEntityManagerFactory("EindwerkJavaFilmShopPU");
                em = emf.createEntityManager();
                em.getTransaction().begin();
                Query q = em.createNamedQuery("Klant.findByEmail").setParameter("email", request.getParameter("Email"));
                try {
                    k = (Klant) q.getSingleResult();
                    if (k.getPaswoord().equals(request.getParameter("Paswoord"))) {
                        //TODO: login session maken !!
                        request.getSession().setAttribute("LoggedUser", k);
                        RequestDispatcher rs = request.getRequestDispatcher("Index.jsp");
                        rs.forward(request, response);
                    } else {
                        request.setAttribute("error", "Foutief paswoord!");
                        RequestDispatcher rs = request.getRequestDispatcher("Login.jsp");
                        rs.forward(request, response);
                    }
                } catch (Exception e) {
                    request.setAttribute("error", "Gebruiker bestaat niet!");
                    RequestDispatcher rs = request.getRequestDispatcher("Login.jsp");
                    rs.forward(request, response);
                }
            } catch (Exception e) {

            } finally {
                em.close();
                emf.close();
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
