package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TeamRepository extends JpaRepository<Team, Long> {

    //Select all the names of the teams
    //from performance table
    //if the location of their performance matches the parameter given
    @Query("SELECT t.name FROM Performance p JOIN p.team t WHERE p.location = :location")
    public List<String> findTeamsByPerformanceLocation(@Param("location") String location);

    List<Team> findAllByName(String name);

    List<Team> findAllByCountry(String country);
}
