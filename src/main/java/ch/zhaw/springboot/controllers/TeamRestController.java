package ch.zhaw.springboot.controllers;

import ch.zhaw.springboot.entities.Team;
import ch.zhaw.springboot.repositories.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

//rest application controller
@RestController
public class TeamRestController {

    //this will make us able to communicate with the repository
    //and receive the data from it
    @Autowired
    private TeamRepository repository;

    //this method will be responsible for listing all the teams
    //from the team repository
    //with postman we can check it with a GET request
    //on the infections/teams endpoint
    @RequestMapping(value = "infections/teams", method = RequestMethod.GET)
    public ResponseEntity<List<Team>> getTeams() {
        List<Team> result = this.repository.findAll();

        if (!result.isEmpty()) {
            //http status should be ok if we find any results
            return new ResponseEntity<List<Team>>(result, HttpStatus.OK);
        } else {
            //if we can't find any results
            return new ResponseEntity<List<Team>>(HttpStatus.NOT_FOUND);
        }
    }

    //teams endpoint, which is waiting for an id parameter
    //will give back the team which has the requested id
    @RequestMapping(value = "infections/teams/{id}", method = RequestMethod.GET)
    public ResponseEntity<Team> getTeamById(@PathVariable("id") Long id) {
        Optional<Team> result = this.repository.findById(id);

        if(result.isPresent()) {
            return ResponseEntity.ok(result.get());
        } else {
            return new ResponseEntity<Team>(HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "infections/teams/name", method = RequestMethod.GET)
    public ResponseEntity<List<Team>> getTeamByName(@RequestParam(name = "name") String name) {
        List<Team> result = this.repository.findAllByName(name);

        return ResponseEntity.ok(result);
    }

    //given the parameter location
    //the restcontroller will call the teamrepository
    //where the query is implemented
    @RequestMapping(value = "infections/teams/location", method = RequestMethod.GET)
    public ResponseEntity<List<String>> getTeamsByPerformanceLocation(@RequestParam(name = "location") String location) {
        List<String> result = this.repository.findTeamsByPerformanceLocation(location);

        return ResponseEntity.ok(result);
    }
}
