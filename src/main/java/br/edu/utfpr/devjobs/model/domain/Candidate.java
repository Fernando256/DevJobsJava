package br.edu.utfpr.devjobs.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "candidates")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Candidate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;
    @NonNull
    private String email;

}
