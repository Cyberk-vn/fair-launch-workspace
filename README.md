# Không gian làm việc AIptos

Chào mừng đến với Không gian làm việc AIptos! Kho lưu trữ này đóng vai trò là một trung tâm cho các phương pháp luận, quy trình và luồng công việc hướng dẫn dự án AIptos. Mục tiêu của chúng tôi là duy trì một môi trường làm việc rõ ràng, có tổ chức và hiệu quả.

## 🎯 Mục Tiêu Dự Án

Phát triển và hoàn thiện dự án AIptos bằng cách thiết lập và tuân thủ các thông lệ tốt nhất trong phát triển AI, quản lý dự án và hợp tác.

## 🎯 Tiến Độ

### Business Requirements Reports 

| Tên Features / Task | Mô tả | Trạng thái | Người thực hiện | Ngày hoàn thành dự kiến (EDD) |
|---|---|---|---|---|
| BR-001 - Home-page functionality: | hiển thị danh sách các dự án, cho phép ngươi dùng lọc và truy cập vào chi tiết các dự án. | Todo | Kanz, Team | 11/06/2025 |
| BR-002 - Allow users to create tokens | Cung cấp cho người dùng khả năng tạo (mint) token mới trên nền tảng Clanker. Người dùng có thể xác định các thuộc tính cơ bản cho token của họ như hình ảnh, tên, ký hiệu, mô tả, tổng cung, vốn hóa thị trường ban đầu, liên kết mạng xã hội và cấu hình các tham số phân bổ token ban đầu (ví dụ: cho dev, cho giao dịch công khai, cho vault). | Todo | Mai, Kanz | 11/06/2025 |
| BR-003 - Support token trading (Buy/Sell with APT) | Cho phép người dùng thực hiện các giao dịch mua và bán token được tạo trên nền tảng Clanker bằng APT **thông qua giao diện của Clanker, giao diện này sẽ gọi các hàm tương ứng từ hợp đồng thông minh của sàn giao dịch phi tập trung Hyperion Aptos để xử lý giao dịch.** Clanker sẽ không phát triển hợp đồng thông minh riêng cho việc khớp lệnh hoặc quản lý thanh khoản. Các giao dịch phải được ghi lại và có thể xác minh trên blockchain thông qua hợp đồng của Hyperion. | Todo | Thai, Kanz | 11/06/2025 |
| BR-004 - Deploy Clanker smart contract | Triển khai thành công và ổn định hợp đồng thông minh cốt lõi của Clanker (cho các chức năng không phải DEX) lên mạng Aptos để quản lý các chức năng chính của nền tảng. | Todo | Kanz | 11/06/2025 |
| BR-005 - Wallet connection and user management (X/Farcaster Login) | Cho phép người dùng kết nối ví tiền điện tử Aptos của họ và đăng nhập vào nền tảng bằng tài khoản X (Twitter) hoặc Farcaster để thực hiện giao dịch và quản lý token/tính năng liên quan đến tài khoản của họ. | Todo | Duc | 11/06/2025 |
| BR-006 - Manage Listed Token Information | Cho phép người tạo token quản lý và chỉnh sửa thông tin hiển thị (metadata) của các token mà họ đã tạo (ví dụ: mô tả, logo, liên kết mạng xã hội). | Todo | Thai | 11/06/2025 |
| BR-007 - Ensure basic legal compliance | Chuẩn bị và tích hợp các tài liệu pháp lý cần thiết như Điều khoản Sử dụng và Chính sách Quyền riêng tư cho nền tảng. | Todo | Truong | 11/06/2025 |
| BR-008 - Create a foundation for the AI development phase (Bankr) | Xây dựng Clanker với kiến trúc và nền tảng vững chắc, có khả năng mở rộng và tích hợp, phục vụ cho việc phát triển các tính năng AI trong giai đoạn tiếp theo (dự án Bankr). | Todo | Team | 11/06/2025 |
| BR-009 - Reward Mechanism for Token Creators | Thiết lập một cơ chế cho phép người tạo token nhận phần thưởng dựa trên hiệu suất hoặc các tham số được xác định trước của token mà họ tạo (ví dụ: dựa trên khối lượng giao dịch của token). Người tạo token phải có thể xem thông tin về phần thưởng ước tính và thực hiện các hành động để nhận phần thưởng về ví của họ. | Todo | Kanz, Thai | 11/06/2025 |
| BR-010 - Activate Token Vault Mechanism (Token Locking) | Cung cấp một tính năng cho phép người tạo token tùy chọn cấu hình một phần token của họ vào "kho bạc" (vault) trong quá trình tạo token. Token trong kho bạc sẽ bị khóa trong một khoảng thời gian nhất định hoặc cho đến khi một điều kiện cụ thể được đáp ứng trước khi chúng có thể được nhận. | Todo | Kanz, Mai | 11/06/2025 |
| BR-011 - Allow Claiming Tokens from Vault | Người dùng đủ điều kiện (ví dụ: người tạo token hoặc địa chỉ ví được chỉ định) PHẢI có thể nhận token đã mở khóa từ kho bạc sau khi các điều kiện khóa được đáp ứng. | Todo | Kanz, Thai | 11/06/2025 |
| BR-012 - Display Reference Information about Future Bot (Bankr) | Hiển thị thông tin công khai cơ bản liên quan đến bot AI (ví dụ: @bankrbot từ hình ảnh) như một phần giới thiệu về dự án Bankr trong tương lai, bao gồm tên, mô tả ngắn, các chỉ số tương tác (ví dụ: số người theo dõi) và liên kết mạng xã hội của bot. | Todo | Thai, Mai | 11/06/2025 |

---

### Giải thích Trạng thái

-   **Todo**: Chưa bắt đầu.
-   **Doing**: Đang làm. Thành viên đã hiểu về yêu cầu, đã có cách để thực hiện và sẽ đảm bảo hoàn thành đúng kế hoạch nếu không có vấn đề gì phát sinh.
-   **Done**: Đã xong. Code đã được merge vào nhánh chính, đã thực hiện self review và code review. User-story đã được kiểm thử và chạy được trên môi trường dev.
-   **Bugs**: Đang có bugs. Bugs này ảnh hưởng nghiêm trọng tới trải nghiệm người dùng, khiến user-story không thể thực thi được hoặc một vài luồng trong user-story đó không thực hiện được.
-   **Pending**: Đang gặp trục trặc. Có thể do thay đổi yêu cầu hoặc gặp vấn đề kỹ thuật (technical stuck).
-   **Canceled**: Đã bị huỷ bỏ. User-story này đã bị huỷ bỏ theo yêu cầu của khách hàng. 

## 🛠️ Nguyên Tắc Chỉ Đạo & Phương Pháp

*(Phần này sẽ phác thảo các nguyên tắc và phương pháp luận cốt lõi được áp dụng cho dự án AIptos. Ví dụ: Agile, Lean, các phương pháp nghiên cứu AI cụ thể, tiêu chuẩn mã hóa, v.v.)*

- Nguyên tắc 1: [Mô tả]
- Nguyên tắc 2: [Mô tả]
- Phương pháp A: [Mô tả]

## 🌊 Quy Trình Phát Triển

*(Mô tả các quy trình phát triển chính tại đây. Ví dụ: quy trình CI/CD, chiến lược kiểm thử, quy trình xem xét mã, theo dõi lỗi, v.v.)*

1.  **Bước Quy trình 1:** [Chi tiết]
2.  **Bước Quy trình 2:** [Chi tiết]
3.  **Bước Quy trình 3:** [Chi tiết]

## 🔄 Luồng Công Việc Dự Án

*(Chi tiết các luồng công việc cụ thể cho các tác vụ phổ biến hoặc các giai đoạn dự án. Ví dụ: luồng công việc phát triển tính năng mới, luồng công việc sửa lỗi, luồng công việc cập nhật tài liệu, v.v.)*

- **Luồng công việc A (ví dụ: Tích hợp Tính năng Mới):**
    - Bước 1: [Chi tiết]
    - Bước 2: [Chi tiết]
- **Luồng công việc B (ví dụ: Huấn luyện & Đánh giá Mô hình):**
    - Bước 1: [Chi tiết]
    - Bước 2: [Chi tiết]

## 📚 Tài Liệu & Liên Kết Quan Trọng

Phần này cung cấp quyền truy cập nhanh vào các tài liệu dự án thiết yếu và môi trường phát triển.

| Tài liệu / Tài nguyên                     | Tác giả / Chủ sở hữu | Liên kết / Điểm cuối                                                                                                |
| --------------------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------- |
| PRD                                     | ?                  | [Link](https://drive.google.com/drive/folders/1rvcFmWbRhEMbvJAMwPKP0G9e4UvB-e_m?usp=drive_link)                 |
| Bankr Development Project Plan          | Anon               | *N/A*                                                                                                          |
| Bankr Kickoff Internal Meeting          | Team               | *N/A*                                                                                                          |
| Tài liệu nghiên cứu Elizaos AI Core     | Anon               | *N/A*                                                                                                          |
| Meeting Minute 19.05.2025               | Anon               | *N/A*                                                                                                          |
| Clanker Kickoff Internal Meeting        | Team               | *N/A*                                                                                                          |
| Clanker Development Project Plan        | Anon               | *N/A*                                                                                                          |
| Figjam Retro                            | Anon               | [Link](https://www.figma.com/board/o41FxYn6lSQ2Oj9rAW3Bbd/H%E1%BB%8Dp-Th%C3%A1ng--Copy-?node-id=0-1&t=486qWFczUaCE3mxH-1) |
| Môi trường DEV FE (Giao diện người dùng) | Anon               | [https://bankr-workspace-fe.vercel.app/](https://bankr-workspace-fe.vercel.app/)                               |
| Môi trường DEV BE (Hệ thống phụ trợ)    | Anon               | `erobos-dev.up.railway.app`                                                                                    |

---

*README này là một tài liệu sống. Vui lòng đóng góp để cải thiện nó khi dự án phát triển.*