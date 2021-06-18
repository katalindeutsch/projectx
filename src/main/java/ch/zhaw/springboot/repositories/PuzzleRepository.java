package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Puzzle;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PuzzleRepository extends JpaRepository<Puzzle, Long> {
}
