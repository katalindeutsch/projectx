package ch.zhaw.springboot.entities;

import javax.persistence.Entity;

@Entity(name = "puzzle")
public class Puzzle extends Quest {

    private int amount;

    //constructor should match super class's attributes
    public Puzzle(long id, String name, int amount) {
        super(id, name);
        this.amount = amount;
    }

    public Puzzle(){}

    //getters and setters
    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}