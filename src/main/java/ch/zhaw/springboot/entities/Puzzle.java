package ch.zhaw.springboot.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "puzzle")
public class Puzzle extends Quest {

    //id will be generated automatically
    @Id
    private long id;

    private int amount;

    //constructor should match super class's attributes
    public Puzzle(long id, String name, long id1, int amount) {
        super(id, name);
        this.id = id1;
        this.amount = amount;
    }

    public Puzzle(){}

    //getters and setters
    @Override
    public long getId() {
        return id;
    }

    @Override
    public void setId(long id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
