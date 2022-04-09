package br.edu.utfpr.devjobs.service;

import br.edu.utfpr.devjobs.model.dao.CandidateDAO;
import br.edu.utfpr.devjobs.model.domain.Candidate;
import br.edu.utfpr.devjobs.model.domain.Vacancy;

import java.util.ArrayList;
import java.util.List;

public class CandidateService extends AbstractService<Long, Candidate> {
    public CandidateService() {
        dao = new CandidateDAO();
    }

    public List<Candidate> getCandidateByPk(Long pk) {
        List<Candidate> listAll = findAll();
        List<Candidate> list = new ArrayList<>();
        for(Candidate c : listAll)
            if (c.getVacancy().getId() == pk)
                list.add(c);

        return list;
    }
}
