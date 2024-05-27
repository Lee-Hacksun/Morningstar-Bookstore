package model;

import java.util.Vector;

public class CategoryFlags {
	public static final int DOMESTIC_VALUE = 1 << 0;
	public static final int EASTERN_VALUE = 1 << 1;
	public static final int WESTERN_VALUE = 1 << 2;
	public static final int ARTS_VALUE = 1 << 3;
	public static final int SCIENCE_VALUE = 1 << 4;
	public static final int PILSOPHY_VALUE = 1 << 5;
	public static final int SELF_DEVELOPEMENT_VALUE = 1 << 6;
	public static final int LITERATURE_VALUE = 1 << 7; 
	
	public static final String[] FLAG_VALUES = {"국내", "동양", "서양", "인문", "과학", "철힉", "자기개발", "문학"}; // 2 + 64 = 66
	
	private int code;
	
	public CategoryFlags(Vector<String> categories) {
		setCategory(categories);
	}
	
	public CategoryFlags(int code) {
		this.code = code;
	}
	
	public CategoryFlags(CategoryFlags other) {
		code = other.getCategoryCode();
	}
	
	public Vector<String> getCategories() {
		Vector<String> categories = new Vector<String>();
		int flags = code;
		
		for (int i = 0; i < FLAG_VALUES.length; i++) {
			
			if ((flags & DOMESTIC_VALUE) != 0) {
				flags -= DOMESTIC_VALUE;
				categories.add(FLAG_VALUES[0]);
				
			} else if ((flags & EASTERN_VALUE) != 0) {
				flags -= EASTERN_VALUE;
				categories.add(FLAG_VALUES[1]);
				
			} else if ((flags & WESTERN_VALUE) != 0) {
				flags -= WESTERN_VALUE;
				categories.add(FLAG_VALUES[2]);
				
			} else if ((flags & ARTS_VALUE) != 0) {
				flags -= ARTS_VALUE;
				categories.add(FLAG_VALUES[3]);
				
			} else if ((flags & SCIENCE_VALUE) != 0) {
				flags -= SCIENCE_VALUE;
				categories.add(FLAG_VALUES[4]);
				
			} else if ((flags & PILSOPHY_VALUE) != 0) {
				flags -= PILSOPHY_VALUE;
				categories.add(FLAG_VALUES[5]);
				
			} else if ((flags & SELF_DEVELOPEMENT_VALUE) != 0) {
				flags -= SELF_DEVELOPEMENT_VALUE;
				categories.add(FLAG_VALUES[6]);
				
			} else if ((flags & LITERATURE_VALUE) != 0) {
				flags -= LITERATURE_VALUE;
				categories.add(FLAG_VALUES[7]);
				
			} else {
				assert (flags == 0) : "범위를 넘은 설정값이 존재합니다.";
				assert (false) : "유효하지 않은 카테고리";
			}
		}		
		return categories;
	}
	
	public int getCategoryCode() {
		return code;
	}
	
	public String toString() {
		return String.join(", ", getCategories());
	}
	
	private void setCategory(Vector<String> categories) {
		code = 0;
		
		for(String category : categories) {
			if (category.equals(FLAG_VALUES[0])) {
				code |= DOMESTIC_VALUE;
				
			} else if (category.equals(FLAG_VALUES[1])) {
				code |= EASTERN_VALUE;
				
			} else if (category.equals(FLAG_VALUES[2])) {
				code |= WESTERN_VALUE;
				
			} else if (category.equals(FLAG_VALUES[3])) {
				code |= ARTS_VALUE;
				
			} else if (category.equals(FLAG_VALUES[4])) {
				code |= SCIENCE_VALUE;
				
			} else if (category.equals(FLAG_VALUES[5])) {
				code |= PILSOPHY_VALUE;
				
			} else if (category.equals(FLAG_VALUES[6])) {
				code |= SELF_DEVELOPEMENT_VALUE;
				
			} else if (category.equals(FLAG_VALUES[7])) {
				code |= LITERATURE_VALUE;
				
			} else {
				assert (false) : "유효하지 않은 카테고리";
			}
		}
	}
}
