 // ManagerOrder테이블의 에트리뷰트에 접근하기 위한 이름 목록
 // 발주ID
 // 발주일
 // 발주 도서목록

package constant;

public class ManagerOrderAttribute {
    // `managerOrder` 테이블 속성
    public static final String MANAGER_ORDER_TABLE_NAME = "managerOrder";
    public static final String CUSTOMER_ID = "customerID";
    public static final String MANAGER_ORDER_ID = "managerOrderID";
    public static final String ORDER_DATE = "orderDate";

    // `bookOfManagerOrder` 테이블 속성
    public static final String BOOK_OF_MANAGER_ORDER_TABLE_NAME = "bookOfManagerOrder";
    public static final String BOOK_OF_MANAGER_ORDER_ID = "managerOrderID";
    public static final String ISBN = "ISBN";
}
