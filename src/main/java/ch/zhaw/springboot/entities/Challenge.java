package ch.zhaw.springboot.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "challenge")
//challenge is a quest, which means inheritance
//challenge is a child of quest
public class Challenge extends Quest{

    private int rounds;

    //many to one relationship between  Quest and Challenge entities
    //each challenge has one and only one quest
    //all the challenges has a quest
    @OneToMany(targetEntity = Quest.class)
    private List<Quest> quests = new ArrayList<>();

    //constructor should match super class's attributes
    public Challenge(int rounds, List<Quest> quests) {
        this.rounds = rounds;
        this.quests = quests;
    }

    public Challenge(long id, String name, int rounds, List<Quest> quests) {
        super(id, name);
        this.rounds = rounds;
        this.quests = quests;
    }

    public Challenge(){}

    //getters and setters
    public int getRounds() {
        return rounds;
    }

    public void setRounds(int rounds) {
        this.rounds = rounds;
    }

    public List<Quest> getQuests() {
        return quests;
    }

    public void setQuests(List<Quest> quests) {
        this.quests = quests;
    }
}
