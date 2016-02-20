package Classes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Liz
 */
public class Uni {

    private int id;
    private String name;
    private String state;
    private int alumno;
    private Double gpa;
    private int act;
    private int sat;
    private String focus;
    private int cat;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getAlumno() {
        return alumno;
    }

    public void setAlumno(int alumno) {
        this.alumno = alumno;
    }

    public Double getGpa() {
        return gpa;
    }

    public void setGpa(Double gpa) {
        this.gpa = gpa;
    }

    public int getAct() {
        return act;
    }

    public void setAct(int act) {
        this.act = act;
    }

    public int getSat() {
        return sat;
    }

    public void setSat(int sat) {
        this.sat = sat;
    }

    public String getFocus() {
        return focus;
    }

    public void setFocus(String focus) {
        this.focus = focus;
    }
    
    public int getCat() {
        return cat;
    }

    public void setCat(int cat) {
        this.cat = cat;
    }

    public Uni(int id, String name, String state, int alumno, Double gpa, int act, int sat, String focus, int cat) {
        super();
        this.name = name;
        this.state = state;
        this.alumno = alumno;
        this.gpa = gpa;
        this.act = act;
        this.sat = sat;
        this.focus = focus;
        this.cat = cat;
    }

    public Uni() {
        super();
    }
}
//*
