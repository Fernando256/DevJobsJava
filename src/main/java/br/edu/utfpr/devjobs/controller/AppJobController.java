package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Candidate;
import br.edu.utfpr.devjobs.model.domain.Vacancy;
import br.edu.utfpr.devjobs.service.CandidateService;
import br.edu.utfpr.devjobs.service.VacancyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AppJobController", value = "/vaga/aplicar")
public class AppJobController extends HttpServlet {
    CandidateService candidateService = new CandidateService();
    VacancyService vacancyService = new VacancyService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idVacancy = request.getParameter("id");
        request.setAttribute("id", idVacancy);
        request.getRequestDispatcher("/WEB-INF/view/app-job.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String id = request.getParameter("id");

        Vacancy vacancy = vacancyService.getById(Long.parseLong(id));
        Candidate candidate = new Candidate(name, email, vacancy);

        candidateService.save(candidate);

        request.setAttribute("flash.candidate", candidate);
        response.sendRedirect("/devjobs/vaga/detalhes?id=" + id);
    }
}
