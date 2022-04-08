package br.edu.utfpr.devjobs.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class VacancyDTO {
    @NonNull
    private String name;
    @NonNull
    private String type;
    @NonNull
    private String description;
}
