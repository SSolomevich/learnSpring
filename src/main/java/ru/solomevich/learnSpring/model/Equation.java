package ru.solomevich.learnSpring.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * Created by 15 on 24.06.2017.
 */

@Entity
@Table(name = "equation")
public class Equation {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "equation")
    private String equation;


//    public Equation(Integer id, String equation) {
//        this.id = id;
//        this.equation = equation;
//    }

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
