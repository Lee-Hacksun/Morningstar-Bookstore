package model;

import java.util.Vector;

public class test {

	public static void main(String[] args) {
		Vector<String> cats = new Vector<String>();
		cats.add(CategoryFlag.FLAG_VALUES[0]);
		cats.add(CategoryFlag.FLAG_VALUES[1]);
		
		CategoryFlag cat = new CategoryFlag(cats);
		
		System.out.println(cat.toString());
	}

}
