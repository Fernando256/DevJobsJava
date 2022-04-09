package br.edu.utfpr.devjobs.model.domain;

import lombok.*;

import javax.persistence.*;
import java.time.ZonedDateTime;
import java.util.Date;

@Entity
@Table(name = "vacancy")
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
    private String salary;
    @NonNull
    private String description;
    @NonNull
    private ZonedDateTime date = ZonedDateTime.now();
}
