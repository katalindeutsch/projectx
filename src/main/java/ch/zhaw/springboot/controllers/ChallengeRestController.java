package ch.zhaw.springboot.controllers;

import ch.zhaw.springboot.entities.Challenge;
import ch.zhaw.springboot.entities.Team;
import ch.zhaw.springboot.repositories.ChallengeRepository;
import ch.zhaw.springboot.repositories.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

//rest application controller
@RestController
public class ChallengeRestController {

    //this will make us able to communicate with the repository
    //and receive the data from it
    @Autowired
    private ChallengeRepository repository;

    //this method will be responsible for listing all the teams
    //from the team repository
    //with postman we can check it with a GET request
    //on the infections/teams endpoint
    @RequestMapping(value = "infections/challenges", method = RequestMethod.GET)
    public ResponseEntity<List<Challenge>> getChallenges() {
        List<Challenge> result = this.repository.findAll();

        if (!result.isEmpty()) {
            //http status should be ok if we find any results
            return new ResponseEntity<List<Challenge>>(result, HttpStatus.OK);
        } else {
            //if we can't find any results
            return new ResponseEntity<List<Challenge>>(HttpStatus.NOT_FOUND);
        }
    }

    //teams endpoint, which is waiting for an id parameter
    //will give back the team which has the requested id
    @RequestMapping(value = "infections/challenges/{id}", method = RequestMethod.GET)
    public ResponseEntity<Challenge> getChallengeById(@PathVariable("id") Long id) {
        Optional<Challenge> result = this.repository.findById(id);

        if(result.isPresent()) {
            return ResponseEntity.ok(result.get());
        } else {
            return new ResponseEntity<Challenge>(HttpStatus.NOT_FOUND);
        }
    }
}
