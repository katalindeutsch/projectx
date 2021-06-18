package ch.zhaw.springboot.repositories;

import ch.zhaw.springboot.entities.Performance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PerformanceRepository extends JpaRepository<Performance, Long> {
}
