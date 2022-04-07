package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Candidate;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AppJobController", value = "/vaga/1/aplicar")
public class AppJobController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/app-job.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Candidate candidate = new Candidate(name, email);

        request.setAttribute("flash.candidate", candidate);
        response.sendRedirect("/devjobs/post-test");
    }
}
