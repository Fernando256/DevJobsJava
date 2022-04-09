package br.edu.utfpr.devjobs.model.dto;

import lombok.Data;
import lombok.NonNull;

import java.time.ZonedDateTime;

@Data
public class VacancyDTO {
    @NonNull
    private String name;
    @NonNull
    private String type;
    @NonNull
    private String salary;
    @NonNull
    private String description;
    @NonNull
    private ZonedDateTime date = ZonedDateTime.now();
}
