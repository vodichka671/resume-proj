package com.mag.resume.repository.storage;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.mag.resume.entity.Profile;

public interface ProfileRepository extends PagingAndSortingRepository<Profile, Long>{
	@Override
	Profile findOne(Long id);
	
	Profile findByUid(String uid);
}
