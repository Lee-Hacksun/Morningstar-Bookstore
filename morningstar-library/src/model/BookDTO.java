package model;

import java.util.StringJoiner;
import java.util.Vector;

public class BookDTO {
	
	private String isbn;
	private String bookName;
	private String author;
	private String publisher;
	private String releaseDate;
	private String description;
	private String bookImageURL;
	private int page;
	private int category;
	//private CategoryFlags category;
	
	public BookDTO(String isbn, String bookName, String author, String publisher, String releaseDate, String description, String bookImageURL, int page, int category) {
		this.isbn = isbn;
		this.bookName = bookName;
		this.author = author;
		this.publisher = publisher;
		this.releaseDate = releaseDate;
		this.description = description;
		this.bookImageURL = bookImageURL;
		this.page  = page;
		this.category = category;
		//this.category = new CategoryFlags(categories);
	}
	
//	public Book(Book other) {
//		this.isbn = other.isbn;
//		this.bookName = other.bookName;
//		this.author = other.author;
//		this.publisher = other.publisher;
//		this.releaseDate = other.releaseDate;
//		this.description = other.description;
//		this.bookImageURL = other.bookImageURL;
//		this.page  = other.page;
//		this.category  = other.category;
//		this.category = new CategoryFlags(other.category);
//	}
	
	
	public String toString() {
		return new StringJoiner(", ", "BookName: ", "")
				.add(bookName)
				.add("Author: " + author)
				.add("Publisher: " + publisher)
				.add("ReleaseDate: " + releaseDate)
				.add("Description: " + description)
				.add("BookImageURL: " + bookImageURL)
				.add("Page: " + page)
				.add("Category: " + category)
				//.add("Category: " + category.toString())
				.toString();
	}
	
	
//	public Vector<String> getCategory() {
//		return category.getCategories();
//	}
	
	/*getter, setter 메소드*/
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
	    this.isbn = isbn;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
	    this.bookName = bookName;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
	    this.author = author;
	}
	
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
	    this.publisher = publisher;
	}
	
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
	    this.releaseDate = releaseDate;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
	    this.description = description;
	}
	
	public String getBookImageURL() {
		return bookImageURL;
	}
	public void setBookImageURL(String bookImageURL) {
	    this.bookImageURL = bookImageURL;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
	    this.page = page;
	}
	
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
	    this.category = category;
	}
}