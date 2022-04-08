package br.edu.utfpr.devjobs.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class CandidateDTO {
    @NonNull
    private String name;
    @NonNull
    private String email;
}
