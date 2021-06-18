package ch.zhaw.springboot.controllers;

import ch.zhaw.springboot.entities.Performance;
import ch.zhaw.springboot.repositories.PerformanceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class PerformanceRestController {

    @Autowired
    PerformanceRepository repository;

    //performances endpoint
    @RequestMapping(value = "infections/performances", method = RequestMethod.GET)
    public ResponseEntity<List<Performance>> getPerformances() {
        List<Performance> result = this.repository.findAll();

        if (!result.isEmpty()) {
            return new ResponseEntity<List<Performance>>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<List<Performance>>(HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "infections/performance/{id}", method = RequestMethod.GET)
    public ResponseEntity<Performance> getPerformanceById(@PathVariable("id") Long id) {
        Optional<Performance> result = this.repository.findById(id);

        if(result.isPresent()) {
            return ResponseEntity.ok(result.get());
        } else {
            return new ResponseEntity<Performance>(HttpStatus.NOT_FOUND);
        }
    }
}
