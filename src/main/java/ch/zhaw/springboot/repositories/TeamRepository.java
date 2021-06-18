package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface TeamRepository extends JpaRepository<Team, Long> {

    //this query will list from the Team table
    //by matching name
    //rest controller will use this method

   // @Query("select t from team t")
   // public List<Team> findAll();

   // @Query("SELECT t.name FROM team t, performance p WHERE t.id = p.from AND p.* = X")
   // public List<Team> findByName(String name);
}
