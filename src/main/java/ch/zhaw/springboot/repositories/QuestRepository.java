package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Quest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestRepository extends JpaRepository<Quest, Long> {
}
