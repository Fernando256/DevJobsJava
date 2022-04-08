package br.edu.utfpr.devjobs.service;


import br.edu.utfpr.devjobs.model.dao.VacancyDAO;
import br.edu.utfpr.devjobs.model.domain.Vacancy;

public class VacancyService extends AbstractService<Long, Vacancy>{

    public VacancyService() {
        dao = new VacancyDAO();
    }
}
