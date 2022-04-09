package br.edu.utfpr.devjobs.model.dto;

import br.edu.utfpr.devjobs.model.domain.Vacancy;
import lombok.Data;
import lombok.NonNull;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
public class CandidateDTO {
    @NonNull
    private String name;
    @NonNull
    private String email;
    @ManyToOne
    @JoinColumn(name = "vacancy_id")
    @NonNull
    private Vacancy vacancy;
}
