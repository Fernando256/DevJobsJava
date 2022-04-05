package br.edu.utfpr.devjobs.entities;

public class Company {
    private String name;
    private String type;
    private String description;

    public Company(String name, String type, String description) {
        this.name = name;
        this.type = type;
        this.description = description;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
