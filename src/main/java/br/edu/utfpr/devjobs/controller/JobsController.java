package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Vacancy;
import br.edu.utfpr.devjobs.service.VacancyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "JobsController", value = "/vagas")
public class JobsController extends HttpServlet {
    VacancyService vacancyService = new VacancyService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Vacancy> vacancies = vacancyService.findAll();
        request.setAttribute("vacancies", vacancies);
        request.getRequestDispatcher("/WEB-INF/view/jobs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
