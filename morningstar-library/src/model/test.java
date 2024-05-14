package model;

import java.util.Vector;

public class test {

	public static void main(String[] args) {
		Vector<String> cats = new Vector<String>();
		cats.add(CategoryFlags.FLAG_VALUES[0]);
		cats.add(CategoryFlags.FLAG_VALUES[1]);
		
		CategoryFlags cat = new CategoryFlags(cats);
		
		System.out.println(cat.toString());
	}

}
