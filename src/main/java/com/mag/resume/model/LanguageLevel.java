package com.mag.resume.model;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

public enum LanguageLevel {
	
	BEGINNER,
	
	ELEMENTARY,
	
	PRE_INTERMEDIATE,
	
	INTERMEDIATE,
	
	UPPER_INTERMEDIATE,
	
	ADVANCED,
	
	PROFICIENCY;
	
	public String getDbValue(){
		return name().toLowerCase();
	}
	
	
	@Converter
	public static class PersistJPAConverter implements AttributeConverter<LanguageLevel, String>{

		@Override
		public String convertToDatabaseColumn(LanguageLevel attribute) {
			
			return attribute.getDbValue();
		}

		@Override
		public LanguageLevel convertToEntityAttribute(String dbData) {
			
			return LanguageLevel.valueOf(dbData.toUpperCase());
		}
		
	}
}
