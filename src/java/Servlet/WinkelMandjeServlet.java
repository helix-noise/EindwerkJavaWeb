/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bll.Aankoop;
import bll.Film;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
public class WinkelMandjeServlet extends HttpServlet {

    private EntityManagerFactory _emf;
    private EntityManager _em;
    private Aankoop _aankoop;
    private List<Aankoop> _winkelMandje;
    private Film _film;
    private float _totaal;

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
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            _emf = Persistence.createEntityManagerFactory("EindwerkJavaFilmShopPU");
            _em = _emf.createEntityManager();
            _em.getTransaction().begin();
            Query q = _em.createNamedQuery("Film.findById").setParameter("id", id);
            _film = (Film) q.getSingleResult();
            _aankoop = new Aankoop();
            _aankoop.setNaam(_film.getNaam());
            _aankoop.setAantal(Integer.parseInt(request.getParameter("Aantal")));
            _aankoop.setPrijs(_film.getPrijs());
            if (request.getSession().getAttribute("winkelMandje") != null) {
                _winkelMandje = (List<Aankoop>) request.getSession().getAttribute("winkelMandje");
            } else {
                _winkelMandje = new ArrayList();
            }
            _winkelMandje.add(_aankoop);
            _totaal = 0;
            for (Aankoop aankoop : _winkelMandje) {
                _totaal += aankoop.getSubtotaal();
            }
            request.setAttribute("Totaal", _totaal);
            request.getSession().setAttribute("winkelMandje", _winkelMandje);
            RequestDispatcher rs = request.getRequestDispatcher("WinkelMandje.jsp");
            rs.forward(request, response);

        } catch (Exception e) {
            RequestDispatcher rs = request.getRequestDispatcher("ErrorPagina.jsp");
            rs.forward(request, response);
        } finally {
            _em.close();
            _emf.close();
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
