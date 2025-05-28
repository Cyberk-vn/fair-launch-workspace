### Hướng dẫn sử_dụng tài_liệu

Tài liệu này nhằm mục đích theo dõi tiến độ và quản lý các Yêu cầu Nghiệp vụ (Business Requirements - BR) cho dự án Clanker. Mỗi mục trong bảng dưới đây mô tả một yêu cầu cụ thể, kèm theo mô tả chi tiết, người chịu trách nhiệm chính, trạng thái thực hiện hiện tại và ngày dự kiến hoàn thành. Việc này giúp đảm bảo tất cả các bên liên quan đều nắm rõ phạm vi công việc và tiến độ chung của dự án.

---

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