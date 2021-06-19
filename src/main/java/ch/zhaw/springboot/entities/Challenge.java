package ch.zhaw.springboot.entities;

import javax.persistence.*;

@Entity(name = "challenge")
//challenge is a quest, which means inheritance
//challenge is a child of quest
public class Challenge extends Quest{

    //id will be generated automatically
    @Id
    private long id;

    private int rounds;

    //many to one relationship between  Quest and Challenge entities
    //each challenge has one and only one quest
    //all the challenges has a quest
  //  @OneToMany(mappedBy = "challenge")
   // private Quest quest;

    //constructor should match super class's attributes
    public Challenge(long id, int rounds) {
        this.id = id;
        this.rounds = rounds;
    }

    public Challenge(long id, String name, long id1, int rounds) {
        super(id, name);
        this.id = id1;
        this.rounds = rounds;
    }

    public Challenge(){}

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
