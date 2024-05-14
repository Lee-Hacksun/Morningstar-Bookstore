package model;

import java.util.StringJoiner;

public class BookOfCart {

    private String userID;
    private String isbn;

    public BookOfCart(String userID, String isbn) {
        this.userID = userID;
        this.isbn = isbn;
    }

    public String toString() {
        return new StringJoiner(", ", "userID: ", "")
                .add(userID)
                .add("ISBN: " + isbn)
                .toString();
    }

    public String getUserID() {
        return userID;
    }

    public String getIsbn() {
        return isbn;
    }
}