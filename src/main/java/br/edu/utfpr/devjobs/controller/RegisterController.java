package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Vacancy;
import br.edu.utfpr.devjobs.service.VacancyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RegisterController", value = "/registrar")
public class RegisterController extends HttpServlet {
    VacancyService vacancyService = new VacancyService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String companyName  = request.getParameter("company-name");
        String jobType  = request.getParameter("job-type");
        String description = request.getParameter("description");
        String salary = request.getParameter("salary");

        Vacancy vacancy = new Vacancy(companyName, jobType, salary, description);

        List<Vacancy> vacancies = vacancyService.findAll();

        vacancyService.save(vacancy);
        request.setAttribute("flash.company", vacancy);
        System.out.println(vacancy.getName());
        System.out.println(vacancy.getType());
        System.out.println(vacancy.getDescription());

        response.sendRedirect("vagas");
    }
}
