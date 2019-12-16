package com.mag.resume.repository.storage;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.mag.resume.entity.Skill;


public interface SkillRepository extends PagingAndSortingRepository<Skill, Long> {
	@Override
	List<Skill> findAll();
	//List<Skill> findByIdProfile(Long idProfile);
	//List<Skill> findByCategoryAndIdProfile(SkillCategory category,Long idProfile);
}
