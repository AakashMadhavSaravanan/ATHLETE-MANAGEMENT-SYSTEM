package com.athlete.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "athlete")
public class Athlete {
    @Id
    private String id;

    private String name;
    private int age;
    private String sport;

    public Athlete() {}

    public Athlete(String id, String name, int age, String sport) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sport = sport;
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }
}
