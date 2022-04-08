package br.edu.utfpr.devjobs.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "company")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Vacancy {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String name;
    @NonNull
    private String type;
    @NonNull
    private String description;
}
