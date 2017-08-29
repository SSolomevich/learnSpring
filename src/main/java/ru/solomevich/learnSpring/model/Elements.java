package ru.solomevich.learnSpring.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.*;
/**
 * Created by 15 on 29.08.2017.
 */

@Entity
@Table(name = "elements")
public class Elements {

    @Id
    @Column(name = "ATOMICNUMBER")
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer atomicNumber;

    @Column(name = "ELEMENT")
    private String element;

    @Column(name = "NAME")
    private String name;

    @Column(name = "CLASS")
    private String clas;

    @Column(name = "ELECTRONICCONFIGURATION")
    private String electronicConfiguration;

    @Column(name = "ELECTRONEGATIVITY")
    private Double electronegativity;

    @Column(name = "COLOR")
    private String color;

    @Column(name = "VALENCE")
    private String valence;

    @Column(name = "OXIDATIONDEGREE")
    private String oxidationDegree;

    @Column(name = "BOILINGT")
    private Double boilingT;

    @Column(name = "MELTINGT")
    private Double meltingT;

    @Column(name = "OTHERPROPERTIES")
    private String otherProperties;

    @Column(name = "WEIGHT")
    private Double weight;

    public Integer getAtomicNumber() {
        return atomicNumber;
    }

    public void setAtomicNumber(Integer atomicNumber) {
        this.atomicNumber = atomicNumber;
    }

    public String getElement() {
        return element;
    }

    public void setElement(String element) {
        this.element = element;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClas() {
        return clas;
    }

    public void setClas(String clas) {
        this.clas = clas;
    }

    public String getElectronicConfiguration() {
        return electronicConfiguration;
    }

    public void setElectronicConfiguration(String electronicConfiguration) {
        this.electronicConfiguration = electronicConfiguration;
    }

    public Double getElectronegativity() {
        return electronegativity;
    }

    public void setElectronegativity(Double electronegativity) {
        this.electronegativity = electronegativity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getValence() {
        return valence;
    }

    public void setValence(String valence) {
        this.valence = valence;
    }

    public String getOxidationDegree() {
        return oxidationDegree;
    }

    public void setOxidationDegree(String oxidationDegree) {
        this.oxidationDegree = oxidationDegree;
    }

    public Double getBoilingT() {
        return boilingT;
    }

    public void setBoilingT(Double boilingT) {
        this.boilingT = boilingT;
    }

    public Double getMeltingT() {
        return meltingT;
    }

    public void setMeltingT(Double meltingT) {
        this.meltingT = meltingT;
    }

    public String getOtherProperties() {
        return otherProperties;
    }

    public void setOtherProperties(String otherProperties) {
        this.otherProperties = otherProperties;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }
}
