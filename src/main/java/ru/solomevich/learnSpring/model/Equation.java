package ru.solomevich.learnSpring.model;

/**
 * Created by 15 on 24.06.2017.
 */
public class Equation {


    private Integer id;


    private String equation;


    public Equation(Integer id, String equation) {
        this.id = id;
        this.equation = equation;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEquation() {
        return equation;
    }

    public void setEquation(String equation) {
        this.equation = equation;
    }
}
