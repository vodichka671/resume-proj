package com.mag.resume.repository.storage;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.mag.resume.entity.Practic;
import com.mag.resume.entity.Skill;

public interface PracticRepository extends PagingAndSortingRepository<Practic, Long> {
 @Override
Iterable<Practic> findAll();
}
