package ch.zhaw.springboot.entities;

import javax.persistence.*;

@Entity
//challenge is a quest, which means inheritance
//challenge is a child of quest
public class Challenge extends Quest{

    //id will be generated automatically
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private int rounds;

    //constructor should match super class's attributes
    public Challenge(long id, int rounds) {
        this.id = id;
        this.rounds = rounds;
    }

    public Challenge(long id, String name, Challenge challenge, long id1, int roundst) {
        super(id, name, challenge);
        this.id = id1;
        this.rounds = rounds;
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

    public int getRounds() {
        return rounds;
    }

    public void setRounds(int rounds) {
        this.rounds = rounds;
    }
}
