 // Customer테이블의 에트리뷰트에 접근하기 위한 이름 목록
 // 주문ID
 // 주문날짜
 // 총금액
 // 회원ID
 // 배송지

package constant;

public class HistoryAttribute {
    // `orderHistory` 테이블 속성
    public static final String ORDER_HISTORY_TABLE_NAME = "orderHistory";
    public static final String ORDER_HISTORY_ORDER_ID = "orderID";
    public static final String ORDER_HISTORY_ORDER_DATE = "orderDate";

    // `sale` 테이블 속성
    public static final String SALE_TABLE_NAME = "sale";
    public static final String SALE_ORDER_ID = "orderID";
    public static final String SALE_CUSTOMER_ID = "customerID";
    public static final String SALE_ORDER_DATE = "orderDate";
    public static final String SALE_DELIVERY_ADDRESS = "deliveryAddress";
    public static final String SALE_TOTAL_AMOUNT = "totalAmount";
}
