package ch.zhaw.springboot.entities;

import javax.persistence.*;

@Entity
public class Quest {

    //id will be generated automatically
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;

    //many to one relationship between  Quest and Challenge entities
    //each challenge has one and only one quest
    //all the challenges has a quest
    @ManyToOne
    private Challenge challenge;

    //constructor with no parameters
    public Quest() {}

    //constructor with parameters
    public Quest(long id, String name, Challenge challenge) {
        this.id = id;
        this.name = name;
        this.challenge = challenge;
    }

    //getters and setters
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public Challenge getChallenge() {
        return challenge;
    }

    public void setChallenge(Challenge challenge) {
        this.challenge = challenge;
    }
}
