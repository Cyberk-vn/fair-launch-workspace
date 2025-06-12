# Báo Cáo Phát Triển Cá Nhân
> Hướng dẫn: Đây là template báo cáo cá nhân. Hãy thay thế các giá trị trong [square brackets] bằng thông tin của bạn.
> Các biểu đồ sẽ tự động được cập nhật khi bạn thay đổi dữ liệu trong các bảng.

## 1. Tổng Quan Tiến Độ
> Hướng dẫn: Cập nhật % tiến độ dựa trên số task đã hoàn thành / tổng số task

Tổng tiến độ dự án: [X]%

```mermaid
pie title Task Status Distribution
    "Completed" : [X]
    "In Progress" : [Y]
    "Not Started" : [Z]
```

## 2. Báo Cáo Hoạt Động Gần Nhất

### ✨ Thành tựu
- [Liệt kê thành tựu chính đã hoàn thành]
- [Các milestone đã đạt được]
- [Các bug đã được fix - nếu có]

### 🚧 Đang thực hiện
- [Công việc đang làm]
- [Dự kiến hoàn thành: DD/MM/YYYY] (Bắt buộc có ngày dự kiến)

### ⚠️ Vấn đề và Giải pháp
- [Vấn đề]: [Giải pháp dự kiến]
- [Khó khăn gặp phải]: [Cách giải quyết]

## 3. Tasks

| Feature | Todo | Committed | Merged | Tested | Demo | Delivered | Mainnet | Dự kiến hoàn thành |
|---------|:----:|:---------:|:------:|:------:|:----:|:---------:|:-------:|-------------------|
| **[FR-XXX] - [Tên Feature]** |  |  |  |  |  |  |  | DD/MM/YYYY |
| - UI Development |  |  |  |  |  |  |  | DD/MM/YYYY |
| - Mobile Responsive |  |  |  |  |  |  |  | DD/MM/YYYY |
| - Backend APIs |  |  |  |  |  |  |  | DD/MM/YYYY |
| - Database Design (Review) |  |  |  |  |  |  |  | DD/MM/YYYY |
| - Error Handling |  |  |  |  |  |  |  | DD/MM/YYYY |
| - Unit Tests (>90%) |  |  |  |  |  |  |  | DD/MM/YYYY |

Chú thích:
- ✓: Đã hoàn thành
- Các cột trống: Đã vượt qua trạng thái này

## 4. Giải thích Trạng thái Features

1. **Todo** 📋
   - Chưa bắt đầu làm
   - Tính năng đang trong giai đoạn lên kế hoạch
   - Chưa có người được assign

2. **Committed** 💻
   - Đã hoàn thành việc code
   - Đã commit code nhưng chưa được merge vào nhánh dev
   - Các tính năng không có lỗi
   - Các user-flow đã được self-test cẩn thận và hoạt động tốt

3. **Merged** 🔄
   - Code đã được merge vào nhánh chính
   - Đã được triển khai CI/CD thành công
   - Sẵn sàng cho việc testing

4. **Tested** ✅
   - Đã test thành công và không có lỗi nghiêm trọng
   - Đã sẵn sàng cho người dùng sử dụng
   - Có thể tiến hành demo

5. **Demo** 🎯
   - Đã thực hiện demo nội bộ trong team
   - Hoạt động tốt không có lỗi đáng kể
   - Không có vấn đề ảnh hưởng tới trải nghiệm người dùng

6. **Delivered** 🚀
   - Đã thực hiện demo cho khách hàng
   - Tính năng hoạt động tốt và không có lỗi
   - Sẵn sàng cho việc deploy mainnet

7. **Mainnet** ⭐️
   - Tính năng đã được mainnet thành công
   - Đã hoàn tất việc kiểm tra lần cuối
   - Không phát hiện lỗi trong môi trường production
