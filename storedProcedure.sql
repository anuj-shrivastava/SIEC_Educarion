DELIMITER //

CREATE PROCEDURE GetCustomerOrderSummary(
    IN customerId INT,
    OUT totalOrders INT,
    OUT totalAmount DECIMAL(10, 2)
)
BEGIN
    SELECT COUNT(*) INTO totalOrders
    FROM orders
    WHERE customer_id = customerId;

    SELECT COALESCE(SUM(order_amount), 0) INTO totalAmount
    FROM orders
    WHERE customer_id = customerId;
END //

DELIMITER ;