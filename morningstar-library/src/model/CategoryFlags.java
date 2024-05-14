package model;

import java.util.Vector;

public class CategoryFlags {
	public static final int DOMESTIC_VALUE = 1 << 0;
	public static final int EASTERN_VALUE = 1 << 1;
	public static final int WESTERN_VALUE = 1 << 2;
	
	public static final String[] FLAG_VALUES = {"domestic", "eastern", "western"};
	
	private int code;
	
	public CategoryFlags(Vector<String> categories) {
		setCategory(categories);
	}
	
	public CategoryFlags(int code) {
		this.code = code;
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
				
			} else {
				assert (false) : "유효하지 않은 카테고리";
			}
		}
	}
}
