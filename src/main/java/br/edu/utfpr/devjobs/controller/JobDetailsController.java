package br.edu.utfpr.devjobs.controller;

import br.edu.utfpr.devjobs.model.domain.Candidate;
import br.edu.utfpr.devjobs.model.domain.Vacancy;
import br.edu.utfpr.devjobs.service.CandidateService;
import br.edu.utfpr.devjobs.service.VacancyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "JobDetailsService", value = "/vaga/detalhes")
public class JobDetailsController extends HttpServlet {
    VacancyService vacancyService = new VacancyService();
    CandidateService candidateService = new CandidateService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Vacancy vacancy = vacancyService.getById(Long.parseLong(id));
        List<Candidate> candidates = candidateService.getCandidateByPk(Long.parseLong(id));
        request.setAttribute("candidates", candidates);
        request.setAttribute("vacancy", vacancy);

        request.getRequestDispatcher("/WEB-INF/view/job-details.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
