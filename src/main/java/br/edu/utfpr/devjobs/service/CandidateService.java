package br.edu.utfpr.devjobs.service;

import br.edu.utfpr.devjobs.model.dao.CandidateDAO;
import br.edu.utfpr.devjobs.model.domain.Candidate;

public class CandidateService extends AbstractService<Long, Candidate> {
    public CandidateService() {
        dao = new CandidateDAO();
    }
}
