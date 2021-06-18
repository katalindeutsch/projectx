package ch.zhaw.springboot.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

//entity association in the example
@Entity
public class Performance {

    //id will be generated automatically
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    //attributes
    private String location;

    private long distance;

    private long duration;

    private Date date;

    private Timestamp time;

    //many to one relationship between Performance and Quest entities
    //all the quests has 1 performance
    //each quest has only and only 1 performance
    @ManyToOne
    private Quest quest;

    //one to many relationship between Team and Performance entity
    //this means that each team has 1 performance
    //all the teams has 1 performance
    @ManyToOne
    private Team team;

    //constructor with parameters
    public Performance(long id, String location, long distance, long duration, Date date, Timestamp time, Quest quest, Team team) {
        this.id = id;
        this.location = location;
        this.distance = distance;
        this.duration = duration;
        this.date = date;
        this.time = time;
        this.quest = quest;
        this.team = team;
    }

    public Performance() {}

    //getters and setters
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public long getDistance() {
        return distance;
    }

    public void setDistance(long distance) {
        this.distance = distance;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Quest getQuest() {
        return quest;
    }

    public void setQuest(Quest quest) {
        this.quest = quest;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }
}
