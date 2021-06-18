package ch.zhaw.springboot.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Puzzle extends Quest {

    //id will be generated automatically
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private int amount;

    //constructor should match super class's attributes
    public Puzzle(long id, int amount) {
        this.id = id;
        this.amount = amount;
    }

    public Puzzle(long id, String name, Challenge challenge, long id1, int amount) {
        super(id, name, challenge);
        this.id = id1;
        this.amount = amount;
    }

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
