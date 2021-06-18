package ch.zhaw.springboot.controllers;

import ch.zhaw.springboot.entities.Puzzle;
import ch.zhaw.springboot.repositories.PuzzleRepository;
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
public class PuzzleRestController {

    @Autowired
    private PuzzleRepository repository;

    //puzzles endpoint
    @RequestMapping( value = "infections/puzzles", method = RequestMethod.GET)
    public ResponseEntity<List<Puzzle>> getPuzzles() {
        List<Puzzle> result = this.repository.findAll();

        if (!result.isEmpty()) {
            return new ResponseEntity<List<Puzzle>>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<List<Puzzle>>(HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "infections/puzzles/{id}", method = RequestMethod.GET)
    public ResponseEntity<Puzzle> getPuzzleById(@PathVariable("id") Long id) {
        Optional<Puzzle> result = this.repository.findById(id);

        if(result.isPresent()) {
            return ResponseEntity.ok(result.get());
        } else {
            return new ResponseEntity<Puzzle>(HttpStatus.NOT_FOUND);
        }
    }
}
