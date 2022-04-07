package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Vacancy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/registrar")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String companyName  = request.getParameter("company-name");
        String jobType  = request.getParameter("job-type");
        String description = request.getParameter("description");

        Vacancy vacancy = new Vacancy(companyName, jobType, description);

        request.setAttribute("flash.company", vacancy);
        System.out.println(vacancy.getName());
        System.out.println(vacancy.getType());
        System.out.println(vacancy.getDescription());

        response.sendRedirect("post-test");
    }
}
