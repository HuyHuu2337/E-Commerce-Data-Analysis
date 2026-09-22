-- DỰ ÁN: E-COMMERCE DATA ANALYSIS
-- MỤC ĐÍCH: Làm sạch dữ liệu thô (raw_orders) và tính toán các chỉ số kinh doanh

CREATE TABLE IF NOT EXISTS clean_orders AS
SELECT
    Order_ID,
    DATE(Order_Date) as Order_Date,
    STRFTIME('%Y-%m', Order_Date) as Order_Month,
    Category,
    Region,

    -- Xử lý tiền: Nếu rỗng (Null) hoặc âm thì gán bằng 0
    CASE
        WHEN Gross_Amount IS NULL OR Gross_Amount < 0 THEN 0
        ELSE Gross_Amount
    END as Gross_Amount,

    -- Sửa lỗi chính tả trạng thái đơn hàng
    CASE
        WHEN Status = 'Deliverd' THEN 'Delivered'
        ELSE Status
    END as Final_Status,

    Delivery_Days,

    -- Xử lý Rating: Nếu rỗng thì để là 0 (hoặc có thể bỏ qua khi tính trung bình)
    COALESCE(Customer_Rating, 0) as Customer_Rating,

    -- Cột tính Doanh thu thực tế (Chỉ lấy tiền của đơn Giao thành công)
    CASE
        WHEN Status = 'Delivered' THEN Gross_Amount
        ELSE 0
    END as Net_Revenue

FROM raw_orders;
"""