package ch.zhaw.springboot.entities;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Quest {

    //id will be generated automatically
    @Id
    private long id;

    private String name;

    //constructor with no parameters
    public Quest() {}

    //constructor with parameters
    public Quest(long id, String name) {
        this.id = id;
        this.name = name;
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
}
