# Tài liệu Yêu cầu Sản phẩm - Thẻ Cào Amaterasu

**Phiên bản Tiếng Việt**

**Ngày:** 2025-06-16 (dựa trên phiên bản tài liệu gốc)  
**Phiên bản:** 1.0-dev  
**Chuẩn bị bởi:** Brian

---

## 1. Giới thiệu / Tổng quan

### Tóm tắt Dự án

Dự án Thẻ Cào Amaterasu nhằm mục đích tạo ra một **trò chơi thẻ cào công bằng, tiết lộ ngay lập tức** trên mạng chính Aptos (Move v2). Nó bao gồm các tính năng như:

- Jackpot
- Xổ số hàng tháng
- Hệ thống điểm
- Tiền thưởng giới thiệu
- Giảm giá theo gói

### Tổng quan Chi tiết

Tài liệu này mô tả các yêu cầu cho trò chơi Thẻ Cào Amaterasu. Mục tiêu cốt lõi là cung cấp trải nghiệm người dùng mượt mà cho việc mua và tiết lộ thẻ cào kỹ thuật số, với sự nhấn mạnh mạnh mẽ về tính công bằng và khả năng thanh toán tài chính.

**Tính năng Chính:**

- Nhiều cấp độ thẻ với các quỹ giải thưởng động (Quỹ Thưởng Thẻ, Quỹ Xổ số Lớn, Quỹ Jackpot)
- Cơ chế phân chia doanh số minh bạch
- Sở hữu thẻ dựa trên NFT (có thể tặng hoặc đốt để tiết lộ kết quả)
- Tính ngẫu nhiên trên chuỗi cho việc tiết lộ
- Khuyến khích giới thiệu và biện pháp chống lạm dụng

**Mục tiêu Hiệu suất:**

- ≥10 giao dịch mỗi giây (Tx/s) duy trì
- 99.999% khả năng thanh toán của Quỹ Thưởng Thẻ
- Độ bao phủ kiểm thử cao và không có vấn đề nghiêm trọng trong Move Prover

---

## 2. Yêu cầu Kinh doanh (BR)

| ID         | Yêu cầu                                    | Mô tả                                                                                                                                                                                                                                                               |
| ---------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **BR-001** | Cung cấp Gameplay Thẻ Cào Công bằng        | Hệ thống phải cung cấp trò chơi thẻ cào nơi kết quả được chứng minh công bằng và tiết lộ ngay lập tức                                                                                                                                                               |
| **BR-002** | Hỗ trợ Nhiều Cấp độ Thẻ và Giá cả          | Người dùng phải có thể mua thẻ cào ở các mức giá khác nhau (ví dụ: 0.5 APT, 1.0 APT, 5.0 APT). Mỗi cấp độ được liên kết với một Quỹ Thưởng Thẻ cụ thể                                                                                                               |
| **BR-003** | Triển khai Giảm giá Theo gói               | Nền tảng phải cung cấp khuyến khích giảm giá cho việc mua nhiều thẻ theo gói (ví dụ: 10 thẻ được 11, 50 thẻ được 56, 100 thẻ được 115). Thẻ thưởng phải cấp đầy đủ tỷ lệ, điểm và trọng lượng giới thiệu                                                            |
| **BR-004** | Quản lý Phân bổ Vốn qua Phân chia Bán hàng | Tất cả doanh thu từ việc bán thẻ phải được phân chia nguyên tử và phân bổ cho các quỹ định sẵn: Quỹ Thưởng Thẻ (70%), Phí giao thức (15%), Quỹ Xổ số Lớn (5%), Hoa hồng giới thiệu (5%), và Quỹ Jackpot (5%). Hỗ trợ cho chế độ token kép APT/AMA cũng được yêu cầu |
| **BR-005** | Tạo điều kiện cho Cơ chế Jackpot           | Một phần (5%) của mỗi giá thẻ phải được phân bổ cho quỹ jackpot. Biểu tượng jackpot chỉ có thể xuất hiện khi quỹ jackpot ≥1,000 APT, với người dùng đầu tiên tiết lộ biểu tượng nhận được thanh toán ngay lập tức (Vàng 80%, Bạc 15%, Đồng 5% của quỹ)              |
| **BR-006** | Tiến hành Xổ số Hàng tháng                 | Hệ thống phải tiến hành xổ số mỗi 30 ngày cho người chơi có được Vé Xổ số Lớn. Giải thưởng có thể là tài sản vật lý hoặc tương đương USD ổn định (90% giá trị, yêu cầu KYC)                                                                                         |
| **BR-007** | Triển khai Hệ thống Điểm                   | Điểm phải được trao như biểu tượng trên thẻ, bị ảnh hưởng bởi hệ số nhân, với cơ hội kiếm thêm điểm tăng theo cấp độ thẻ cao hơn                                                                                                                                    |
| **BR-008** | Tích hợp Chương trình Giới thiệu           | Nền tảng phải hỗ trợ hệ thống giới thiệu nơi người giới thiệu kiếm hoa hồng (5% cho chủ sở hữu NFT Amaterasu/√10,000 $AMA, 2.5% cho những người khác). Hoa hồng phải có thể rút khi đạt ngưỡng tối thiểu (0.1 APT)                                                  |
| **BR-009** | Đảm bảo Khả năng Thanh toán Tài chính      | Hệ thống phải duy trì khả năng thanh toán cao (99.999%) cho Quỹ Thưởng Thẻ. Nếu giải thưởng vượt quá số dư quỹ, vốn nên được vay từ treasury_reserve và tự động hoàn trả bởi các lần bán tiếp theo                                                                  |
| **BR-010** | Duy trì Hiệu suất Cao và UX Mượt mà        | Hệ thống nên duy trì ≥10 giao dịch mỗi giây (Tx/s) và nhắm đến 85% lượt chơi sử dụng khóa phiên "Chơi Lại" được ủy quyền trước cho trải nghiệm người dùng không ma sát                                                                                              |
| **BR-011** | Hỗ trợ Khung Nâng cấp và Vận hành Tuân thủ | Khung hợp đồng thông minh phải cho phép nâng cấp và vận hành tuân thủ, nhắm đến ≥95% độ bao phủ kiểm thử và 0 vấn đề nghiêm trọng trong Move Prover                                                                                                                 |

---

## 3. Yêu cầu Chức năng (FR)

### FR-001: Mua Thẻ Cào

**Mức độ ưu tiên:** Cao  
**Mô tả:** Hệ thống PHẢI cho phép người dùng mua thẻ cào đơn lẻ hoặc theo gói với một chữ ký ví duy nhất.

- **Quy trình:** Người dùng có thể chọn cấp độ thẻ và số lượng. Khi mua, một NFT đại diện cho thẻ được đúc vào ví của họ
- **Điều kiện tiên quyết:** Người dùng có ví Aptos đã kết nối với đủ APT
- **Điều kiện sau khi hoàn thành:** NFT thẻ được đúc, vốn được phân chia cho các quỹ, xác nhận thành công

### FR-002: Tiết lộ Thẻ Cào

**Mức độ ưu tiên:** Cao  
**Mô tả:** Hệ thống PHẢI cho phép người dùng tiết lộ thẻ cào, hoặc ngay lập tức khi mua (qua cờ auto_reveal) hoặc sau đó bằng cách đốt NFT thẻ.

- **Quy trình:** Tiết lộ sử dụng tính ngẫu nhiên trên chuỗi (`aptos_framework::randomness::u64_range`) để chọn 25 biểu tượng. Một `RevealEvent` được phát ra
- **Điều kiện tiên quyết:** Người dùng sở hữu NFT thẻ cào chưa tiết lộ
- **Điều kiện sau khi hoàn thành:** Thẻ được tiết lộ, biểu tượng hiển thị, giải thưởng (nếu có) được thanh toán, NFT bị đốt (nếu tiết lộ bằng cách đốt), `RevealEvent` được phát ra

### FR-003: Tiết lộ Thẻ Theo Lô

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Hệ thống PHẢI hỗ trợ tiết lộ nhiều thẻ trong một giao dịch duy nhất (`batch_reveal()`) hoặc tự động tiết lộ tất cả thẻ còn lại (`Batch_reveal()`).

- **Quy trình:** Cho phép tiết lộ hiệu quả nhiều thẻ đã mua
- **Điều kiện tiên quyết:** Người dùng sở hữu nhiều NFT thẻ cào chưa tiết lộ
- **Điều kiện sau khi hoàn thành:** Tất cả thẻ được chọn được tiết lộ, giải thưởng được thanh toán

### FR-004: Chức năng Chơi Lại

**Mức độ ưu tiên:** Cao  
**Mô tả:** Hệ thống PHẢI cho phép người dùng nhanh chóng mua và tiết lộ thẻ khác bằng cách sử dụng khóa phiên "Chơi Lại" được ủy quyền trước với một chữ ký ví duy nhất.

- **Quy trình:** Tối ưu hóa UX cho các phiên chơi liên tục
- **Điều kiện tiên quyết:** Người dùng có khóa phiên hoạt động và đủ APT
- **Điều kiện sau khi hoàn thành:** Thẻ mới được mua và tiết lộ

### FR-005: Hiển thị Bản đồ Biểu tượng và Thanh toán

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Hệ thống PHẢI hiển thị rõ ràng xác suất và giải thưởng liên quan đến các biểu tượng khác nhau trên thẻ cào.

- **Quy trình:** Bao gồm phần trăm cho trống, các số tiền giải thưởng khác nhau (như % của Quỹ Thưởng Thẻ), và biểu tượng hệ số nhân
- **Điều kiện tiên quyết:** Người dùng xem chi tiết thẻ hoặc quy tắc trò chơi
- **Điều kiện sau khi hoàn thành:** Người dùng hiểu tỷ lệ và thanh toán tiềm năng

### FR-006: Tính toán và Trao Điểm

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Hệ thống PHẢI tính toán và trao điểm dựa trên biểu tượng được tiết lộ, áp dụng hệ số nhân, và tăng cơ hội dựa trên cấp độ thẻ.

- **Quy trình:** Điểm là một hình thức thưởng cho sự tham gia
- **Điều kiện tiên quyết:** Thẻ được tiết lộ
- **Điều kiện sau khi hoàn thành:** Điểm được trao cho số dư người dùng, có thể ảnh hưởng đến hệ số nhân TitleBadge

### FR-007: Xử lý Thanh toán Jackpot

**Mức độ ưu tiên:** Cao  
**Mô tả:** Hệ thống PHẢI tự động thanh toán giải thưởng jackpot khi biểu tượng jackpot được tiết lộ, với điều kiện quỹ jackpot đạt ngưỡng (≥1,000 APT).

- **Quy trình:** Giao dịch thành công đầu tiên tiết lộ biểu tượng jackpot nhận được phần trăm của quỹ (80% Vàng, 15% Bạc, 5% Đồng)
- **Điều kiện tiên quyết:** Quỹ jackpot ≥1,000 APT, biểu tượng jackpot được tiết lộ
- **Điều kiện sau khi hoàn thành:** Số tiền jackpot được chuyển cho người thắng, số dư jackpot_pool giảm, cờ cycle_active bị lật

### FR-008: Quản lý Vé Xổ số Lớn

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Hệ thống PHẢI trao vé xổ số dựa trên cấp độ thẻ (cấp cao nhất 50% cơ hội, các cấp thấp hơn tỷ lệ tuyến tính).

- **Quy trình:** Vé giới hạn 1 mỗi thẻ và không bị ảnh hưởng bởi hệ số nhân
- **Điều kiện tiên quyết:** Thẻ được tiết lộ
- **Điều kiện sau khi hoàn thành:** Vé xổ số được trao và ghi lại

### FR-009: Tiến hành Xổ số Hàng tháng

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Một dịch vụ cron ngoài chuỗi PHẢI kích hoạt hàm `draw_grand_giveaway()` mỗi 30 ngày để chọn người thắng.

- **Quy trình:** Giải thưởng là tài sản vật lý hoặc tương đương USD ổn định (90%). KYC được yêu cầu cho việc yêu cầu giải thưởng
- **Điều kiện tiên quyết:** 30 ngày đã trôi qua kể từ lần xổ số cuối
- **Điều kiện sau khi hoàn thành:** Người thắng xổ số được chọn, giải thưởng được trao (hoặc xổ số lại nếu không được yêu cầu sau 30 ngày)

### FR-010: Quản lý Hoa hồng Giới thiệu

**Mức độ ưu tiên:** Trung bình  
**Mô tả:** Hệ thống PHẢI theo dõi và cho phép rút hoa hồng giới thiệu.

- **Quy trình:** Người giới thiệu đủ điều kiện cho 2.5% hoặc 5% dựa trên tiêu chí, có thể rút sau ngưỡng 0.1 APT. Tự giới thiệu bị vô hiệu hóa
- **Điều kiện tiên quyết:** Người dùng đã tích lũy đủ hoa hồng
- **Điều kiện sau khi hoàn thành:** Hoa hồng được chuyển vào ví người giới thiệu

### FR-011: Quản trị Tham số Hệ thống

**Mức độ ưu tiên:** Thấp  
**Mô tả:** Hệ thống PHẢI cho phép quản trị viên được ủy quyền cấu hình các tham số trò chơi khác nhau.

- **Quy trình:** Bao gồm `CARD_PRICE`, `JACKPOT_THRESHOLD`, `ICON_PAYOUT_SPLIT`, `REFERRAL_PCT`, `POINTS_PER_CARD`, `MAX_PER_TX`
- **Điều kiện tiên quyết:** Người ký quản trị với khả năng thích hợp
- **Điều kiện sau khi hoàn thành:** Tham số trò chơi được cập nhật

### FR-012: Cung cấp Rút Khẩn cấp

**Mức độ ưu tiên:** Quan trọng  
**Mô tả:** Hệ thống PHẢI cho phép quản trị viên được ủy quyền thực hiện rút khẩn cấp vốn.

- **Quy trình:** Một hàm quan trọng để phục hồi vốn trong trường hợp khẩn cấp
- **Điều kiện tiên quyết:** Người ký quản trị với khả năng thích hợp
- **Điều kiện sau khi hoàn thành:** Vốn được rút an toàn

### FR-013: Giám sát Số dư Quỹ và Khả năng Thanh toán

**Mức độ ưu tiên:** Cao  
**Mô tả:** Một Bảng điều khiển Kho bạc ngoài chuỗi PHẢI giám sát số dư quỹ và phát ra cảnh báo nếu tỷ lệ bao phủ giảm xuống dưới 120%.

- **Quy trình:** Đảm bảo sức khỏe tài chính và cảnh báo về các vấn đề khả năng thanh toán tiềm ẩn
- **Điều kiện tiên quyết:** Hệ thống indexer và giám sát hoạt động
- **Điều kiện sau khi hoàn thành:** Cảnh báo chủ động về khả năng thanh toán quỹ

---

## 4. Giả định & Ràng buộc

### Giả định

| ID        | Giả định                                           | Mô tả                                                                                                                             |
| --------- | -------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| **A-001** | Ổn định và Khả năng của Mạng Aptos                 | Mạng chính Aptos sẽ hoạt động ổn định, an toàn và hỗ trợ khối lượng giao dịch yêu cầu (≥10 Tx/s)                                  |
| **A-002** | Người dùng có Ví Aptos Tương thích                 | Người dùng tiềm năng có hoặc có thể dễ dàng thiết lập ví tiền điện tử tương thích với Aptos (ví dụ: Petra, Pontem, Aptos Connect) |
| **A-003** | Độ tin cậy của Tính ngẫu nhiên Trên chuỗi          | Nguồn `aptos_framework::randomness::*` sẽ cung cấp số ngẫu nhiên đủ đồng đều và an toàn cho việc chọn biểu tượng                  |
| **A-004** | Hiểu biết Cơ bản của Người dùng về Cơ chế Trò chơi | Người dùng có hiểu biết cơ bản về trò chơi thẻ cào và các khái niệm blockchain liên quan (ví dụ: chữ ký ví, phí gas)              |

### Ràng buộc

| ID        | Ràng buộc                                           | Mô tả                                                                                                                                                           |
| --------- | --------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **C-001** | Chuỗi Mục tiêu                                      | Trò chơi sẽ hoạt động độc quyền trên mạng chính Aptos sử dụng Move v2                                                                                           |
| **C-002** | Thẻ Tối đa Mỗi Giao dịch                            | Tối đa 500 thẻ có thể được mua trong một giao dịch duy nhất (`MAX_PER_TX`)                                                                                      |
| **C-003** | Hạn chế Tốc độ Chơi Lại                             | Có độ trễ tối thiểu 2 giây giữa các lần gọi `play_again()` liên tiếp từ cùng một khóa phiên                                                                     |
| **C-004** | Ngưỡng Jackpot                                      | Biểu tượng jackpot chỉ xuất hiện khi số dư `jackpot_pool` ít nhất 1,000 APT                                                                                     |
| **C-005** | Khoảng thời gian Xổ số Lớn                          | Xổ số Lớn được rút chính xác mỗi 30 ngày                                                                                                                        |
| **C-006** | Phụ thuộc Thanh toán Giải thưởng vào Kho bạc Dự trữ | Trong trường hợp giải thưởng vượt quá số dư `card_reward_pool`, hệ thống dựa vào việc vay từ `treasury_reserve`                                                 |
| **C-007** | Giao diện Người dùng Chính                          | Giao diện người dùng chính cho các tương tác sẽ là trang web React/NextJS                                                                                       |
| **C-008** | Hàm Quản trị Có Cổng                                | Các hàm quản trị quan trọng như `set_param` và `emergency_withdraw` được bảo vệ bởi các khả năng cụ thể và yêu cầu khóa đa chữ ký cho các kích hoạt ngoài chuỗi |

---

## 5. Rủi ro

| ID Rủi ro | Rủi ro                                                                                                                                                                                                                      | Khả năng            | Tác động   | Kế hoạch Giảm thiểu                                                                                                                                                                                                                           |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **R-001** | **Lỗ hổng Bảo mật Hợp đồng Thông minh**<br><br>Hợp đồng thông minh Move có thể chứa lỗ hổng (ví dụ: rò rỉ coin, vấn đề re-entrancy), dẫn đến mất tài sản hoặc hoạt động trò chơi không chính xác                            | Trung bình          | Rất Cao    | • Kiểm thử đơn vị nghiêm ngặt (phân chia quỹ, giới thiệu, vay-hoàn trả)<br>• Kiểm thử thuộc tính (bất biến jackpot)<br>• Xác minh Move Prover (không rò rỉ coin, không re-entrancy)<br>• Kiểm thử fuzz với giới hạn gas độc hại (undergasing) |
| **R-002** | **Khả năng Thanh toán của Quỹ Thưởng**<br><br>Quỹ Thưởng Thẻ có thể không có đủ vốn để chi trả giải thưởng lớn, mặc dù cơ chế treasury_reserve                                                                              | Thấp đến Trung bình | Cao        | • Nhắm đến 99.999% khả năng thanh toán<br>• Triển khai vay treasury_reserve và hoàn trả tự động<br>• Giám sát Bảng điều khiển Kho bạc với cảnh báo <120% bao phủ                                                                              |
| **R-003** | **Khai thác/Thiên vị Tính ngẫu nhiên**<br><br>Vấn đề với nguồn tính ngẫu nhiên trên chuỗi có thể dẫn đến kết quả dự đoán được hoặc phân phối biểu tượng không công bằng, làm suy yếu mục tiêu "công bằng"                   | Thấp                | Rất Cao    | • Dựa chính vào `aptos_framework::randomness::*`<br>• Kiểm thử đơn vị cho phân phối RNG (χ² trong 1% sau 10k lần chạy)<br>• Dự phòng tùy chọn cho luồng ORAO-VRF bất đồng bộ                                                                  |
| **R-004** | **Suy giảm Hiệu suất / Vấn đề Khả năng Mở rộng**<br><br>Nền tảng có thể gặp khó khăn trong việc duy trì ≥10 Tx/s dưới tải cao, hoặc indexer/frontend có thể gặp vấn đề hiệu suất trong việc hiển thị dữ liệu thời gian thực | Trung bình          | Trung bình | • Thiết kế cho 10 Tx/s duy trì<br>• Sử dụng frontend React/NextJS hiệu quả<br>• Indexer tối ưu hóa cho GraphQL<br>• Giám sát thông lượng Tx và mã lỗi với Grafana                                                                             |
| **R-005** | **Undergasing của Giao dịch Tiết lộ**<br><br>Một giao dịch tiết lộ có thể hết gas, ngăn cản việc thanh toán giải thưởng                                                                                                     | Thấp                | Trung bình | • Bảo vệ undergasing nơi `reveal()` ghi lại biểu tượng/giải thưởng, và `settle_prize()` được thực thi vô điều kiện trong cùng giao dịch<br>• Nếu giao dịch bị hủy, thẻ vẫn chưa tiết lộ, người dùng có thể gọi lại `reveal()`                 |
| **R-006** | **Jackpot Double-Spend (Tiết lộ Đồng thời)**<br><br>Nhiều người dùng có thể tiết lộ biểu tượng jackpot đồng thời, dẫn đến tranh chấp tiềm ẩn hoặc thanh toán không chính xác                                                | Thấp                | Cao        | • Giao dịch thành công đầu tiên lật cờ `cycle_active` bên trong Tài nguyên Jackpot<br>• Những người khác sẽ thấy cơ hội bằng không cho đến khi đạt ngưỡng tiếp theo                                                                           |
| **R-007** | **Giải thưởng Xổ số Không được Yêu cầu**<br><br>Một giải thưởng Xổ số Lớn có thể không được yêu cầu, dẫn đến quỹ giải thưởng tĩnh                                                                                           | Thấp                | Thấp       | • `draw_grand_giveaway()` phát hiện timeout sau 30 ngày và kích hoạt xổ số lại<br>• Phát ra sự kiện `RaffleRedistributed`                                                                                                                     |
| **R-008** | **Tấn công Bot/Sybil**<br><br>Actor độc hại sử dụng bot hoặc tấn công Sybil để có lợi thế không công bằng hoặc phá vỡ trò chơi                                                                                              | Trung bình          | Trung bình | • Bảng đen quản trị cho phát hiện bot<br>• Tuổi tài khoản tối thiểu có thể cấu hình<br>• Kiểm tra lịch sử `account::sequence_number()` cho tấn công Sybil                                                                                     |

---

## 6. Màn hình / Giao diện Người dùng

### 6.1 Trang Chủ / Sảnh Trò chơi

**Mô tả:** Điểm vào cho người dùng xem các cấp độ thẻ cào có sẵn, giá cả của chúng, và có thể số tiền jackpot hiện tại. Nút "Mua Thẻ" cho mỗi cấp độ.

**Các Yếu tố Chính:**

- Tùy chọn cấp độ thẻ (Thẻ 1, Thẻ 2, Thẻ 3)
- Giá cả (0.5 APT, 1.0 APT, 5.0 APT)
- Nút "Mua"
- Trạng thái kết nối ví

### 6.2 Giao diện Luồng Mua hàng

**Mô tả:** Giao diện để chọn số lượng thẻ, áp dụng giảm giá theo gói, và khởi tạo giao dịch mua hàng. Tùy chọn auto_reveal.

**Các Yếu tố Chính:**

- Đầu vào số lượng
- Hiển thị thưởng gói (ví dụ: 10 → 11 thẻ)
- Hộp kiểm Auto_reveal

### 6.3 Giao diện Tiết lộ Thẻ Cào

**Mô tả:** Lưới 5x5 tương tác nơi người dùng có thể "cào" để tiết lộ biểu tượng. Hoạt ảnh cho quá trình tiết lộ. Hiển thị biểu tượng được tiết lộ và số tiền giải thưởng.

**Các Yếu tố Chính:**

- Lưới 5x5 cho biểu tượng
- Lớp phủ cào (Canvas/WebGL)
- Hiển thị biểu tượng được tiết lộ
- Hiển thị giải thưởng
- Nút "Chơi Lại"

### 6.4 Modal/Khu vực Kết nối Ví

**Mô tả:** Khu vực nổi bật cho phép người dùng kết nối ví Aptos tương thích của họ.

**Các Yếu tố Chính:**

- Nút "Kết nối Ví"
- Danh sách ví được hỗ trợ (Petra, Pontem, Aptos Connect)
- Hiển thị địa chỉ ví đã kết nối

### 6.5 Bảng điều khiển Người dùng / Kho

**Mô tả:** Trang hiển thị NFT thẻ cào chưa tiết lộ đã sở hữu, lịch sử thẻ đã tiết lộ, điểm tích lũy, và trạng thái hoa hồng giới thiệu.

**Các Yếu tố Chính:**

- Danh sách NFT
- Nút "Tiết lộ"
- Số dư điểm
- Hoa hồng giới thiệu ước tính
- Nút "Yêu cầu Thưởng" cho giới thiệu

### 6.6 Hiển thị Thông tin Jackpot

**Mô tả:** Hiển thị thời gian thực số tiền quỹ jackpot hiện tại và chi tiết về người thắng jackpot gần đây (nếu có).

**Các Yếu tố Chính:**

- Quỹ jackpot hiện tại
- Chỉ báo ngưỡng ≥1,000 APT

### 6.7 Thông tin Xổ số Lớn

**Mô tả:** Hiển thị thông tin về ngày xổ số tiếp theo, quy tắc kiếm vé, và người thắng trong quá khứ.

**Các Yếu tố Chính:**

- Đếm ngược xổ số tiếp theo
- Số lượng vé xổ số
- Mô tả giải thưởng

### 6.8 Bảng điều khiển Quản trị (Có Cổng)

**Mô tả:** Giao diện cho quản trị viên được ủy quyền quản lý cấu hình trò chơi và thực hiện hoạt động khẩn cấp.

**Các Yếu tố Chính:**

- Biểu mẫu cho `set_param` (ví dụ: `CARD_PRICE`, `JACKPOT_THRESHOLD`)
- Nút cho `emergency_withdraw`
- Bảng điều khiển giám sát cho số dư quỹ và khả năng thanh toán

### 6.9 Xác nhận Giao dịch / Thông báo Trạng thái

**Mô tả:** Pop-up hoặc banner cung cấp phản hồi thời gian thực về trạng thái giao dịch (đang chờ, thành công, thất bại).

**Các Yếu tố Chính:**

- ID giao dịch
- Trạng thái
- Thông báo lỗi
- Liên kết đến blockchain explorer

### 6.10 Chân trang

**Mô tả:** Chân trang website tiêu chuẩn với liên kết pháp lý và thông tin dự án.

**Các Yếu tố Chính:**

- Liên kết đến Điều khoản Dịch vụ (không được đề cập rõ ràng nhưng được ngụ ý bởi "tuân thủ" và thực hành tiêu chuẩn cho trò chơi)
