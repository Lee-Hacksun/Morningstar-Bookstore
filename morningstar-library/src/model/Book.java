package model;

import java.util.StringJoiner;
import java.util.Vector;

public class Book {
	
	private String isbn;
	private String bookName;
	private String author;
	private String publisher;
	private String releaseDate;
	private String description;
	private String bookImageURL;
	private int page;
	private CategoryFlags category;
	
	public Book(String isbn, String bookName, String author, String publisher, String releaseDate, String description, String bookImageURL, int page, Vector<String> categories) {
		this.isbn = isbn;
		this.bookName = bookName;
		this.author = author;
		this.publisher = publisher;
		this.releaseDate = releaseDate;
		this.description = description;
		this.bookImageURL = bookImageURL;
		this.page  = page;
		this.category = new CategoryFlags(categories);
	}
	
	public Book(String isbn, String bookName, String author, String publisher, String releaseDate, String description, String bookImageURL, int page, int code) {
		this.isbn = isbn;
		this.bookName = bookName;
		this.author = author;
		this.publisher = publisher;
		this.releaseDate = releaseDate;
		this.description = description;
		this.bookImageURL = bookImageURL;
		this.page  = page;
		this.category = new CategoryFlags(code);
	}
	
	public Book(Book other) {
		this.isbn = other.isbn;
		this.bookName = other.bookName;
		this.author = other.author;
		this.publisher = other.publisher;
		this.releaseDate = other.releaseDate;
		this.description = other.description;
		this.bookImageURL = other.bookImageURL;
		this.page  = other.page;
		this.category = new CategoryFlags(other.category);
	}
	
	public String toString() {
		return new StringJoiner(", ", "BookName: ", "")
				.add(bookName)
				.add("Author: " + author)
				.add("Publisher: " + publisher)
				.add("ReleaseDate: " + releaseDate)
				.add("Description: " + description)
				.add("BookImageURL: " + bookImageURL)
				.add("Page: " + page)
				.add("Category: " + category.toString())
				.toString();
	}
	
	public String getIsbn() {
		return isbn;
	}
	
	public String getBookName() {
		return bookName;
	}
	
	public String getAuthor() {
		return author;
	}
	
	public String getPublisher() {
		return publisher;
	}
	
	public String getReleaseDate() {
		return releaseDate;
	}
	
	public String getDescription() {
		return description;
	}
	
	public String getBookImageURL() {
		return bookImageURL;
	}
	
	public int getPage() {
		return page;
	}
	
	public Vector<String> getCategory() {
		return category.getCategories();
	}
}