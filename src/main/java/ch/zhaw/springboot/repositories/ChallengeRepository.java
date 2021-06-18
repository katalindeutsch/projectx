package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Challenge;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChallengeRepository extends JpaRepository<Challenge, Long> {
}
