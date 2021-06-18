package ch.zhaw.springboot.controllers;

import ch.zhaw.springboot.entities.Quest;
import ch.zhaw.springboot.repositories.QuestRepository;
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
public class QuestRestController {

    @Autowired
    private QuestRepository repository;

    //quests endpoint
    @RequestMapping(value = "infections/quests", method = RequestMethod.GET)
    public ResponseEntity<List<Quest>>  getQuests() {
        List<Quest> result = this.repository.findAll();

        if (!result.isEmpty()) {
            return new ResponseEntity<List<Quest>>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<List<Quest>>(HttpStatus.NOT_FOUND);
        }
    }

    @RequestMapping(value = "infections/quests/{id}", method = RequestMethod.GET)
    public ResponseEntity<Quest> getQuestById(@PathVariable("id") Long id) {
        Optional<Quest> result = this.repository.findById(id);

        if(result.isPresent()) {
            return ResponseEntity.ok(result.get());
        } else {
            return new ResponseEntity<Quest>(HttpStatus.NOT_FOUND);
        }
    }
}
