package model;

import java.util.StringJoiner;

public class Book {
	
	private String isbn;
	private String bookName;
	private String author;
	private String publisher;
	private String releaseDate;
	private String description;
	private String bookImageURL;
	private int page;
	private int category;
	
	public Book(String isbn, String bookName, String author, String publisher, String releaseDate, String description, String bookImageURL, int page, int category) {
		this.isbn = isbn;
		this.bookName = bookName;
		this.author = author;
		this.publisher = publisher;
		this.releaseDate = releaseDate;
		this.description = description;
		this.bookImageURL = bookImageURL;
		this.page  = page;
		this.category = category;
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
	
	public int getCategory() {
		return category;
	}
}