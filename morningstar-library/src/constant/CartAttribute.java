 // Book테이블의 에트리뷰트에 접근하기 위한 이름 목록
 // 회원ID
 // 총 권수
 // 총 금액
 // 보유 도서 내역

package constant;

public class CartAttribute {
    public static final String TABLE_NAME = "cart";
    public static final String USER_ID = "customerID";
    public static final String TOTAL_BOOK_COUNT = "totalBookCount";
    public static final String TOTAL_AMOUNT = "totalAmount";


    public static final String BOOK_OF_CART_TABLE_NAME = "bookOfCart";
    public static final String BOOK_OF_CART_USER_ID = "customerID";
    public static final String BOOK_OF_CART_ISBN = "ISBN";
}