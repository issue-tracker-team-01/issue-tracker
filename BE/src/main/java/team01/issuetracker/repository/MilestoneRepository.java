package team01.issuetracker.repository;

import org.springframework.data.repository.CrudRepository;
import team01.issuetracker.domain.Milestone;

import java.util.List;

public interface MilestoneRepository extends CrudRepository<Milestone, Long> {
    List<Milestone> findAll();

}