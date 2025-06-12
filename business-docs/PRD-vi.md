# Product Requirements Document - Aiptos

**Date:** [Ngày tạo/Cập nhật gần nhất]

**Version:** 1.0

**Prepared By:** [Tên cụ/Đội ngũ của cụ]

---

## 1. Introduction / Overview

*   **Project Summary:** Dự án Aiptos nhằm mục đích tạo ra một nền tảng trên mạng lưới Aptos, cho phép bất kỳ ai cũng có thể khởi chạy token một cách công bằng thông qua **cơ chế bonding curve (đường cong liên kết)**. Người dùng có thể mua và bán token trực tiếp với hợp đồng thông minh của Aiptos.
*   **Detailed Overview:** Tài liệu này mô tả các yêu cầu cho Aiptos, một nền tảng được phát triển cho mạng Aptos. Mục tiêu cốt lõi của dự án là cho phép người dùng tạo token tùy chỉnh với các thông tin tối giản như hình ảnh, tên, ký hiệu, và mô tả. Nền tảng sẽ cho phép người dùng mua và bán các token được tạo ra bằng APT (token gốc của Aptos) **thông qua hợp đồng bonding curve của Aiptos**. Khi một token đạt đến một mốc vốn hóa thị trường nhất định, nền tảng sẽ **tự động chuyển giao thanh khoản và niêm yết token đó lên sàn giao dịch phi tập trung (DEX) Hyperion Aptos**. Tại thời điểm này, mọi giao dịch tiếp theo sẽ được thực hiện trực tiếp trên giao diện của Hyperion, và **Aiptos sẽ hướng người dùng đến đó**. Hợp đồng thông minh (smart contract) của Aiptos sẽ được triển khai trên mạng Aptos. Giao diện người dùng chính sẽ là một trang web (Aiptos site). Dự án Aiptos cũng đóng vai trò là nền tảng ban đầu, tạo tiền đề cho việc phát triển giai đoạn AI tiếp theo (dự án Bankr).

---

## 2. Business Requirements (BR)

*   **BR-001 - Home-page functionality:** hiển thị danh sách các dự án, cho phép ngươi dùng lọc và truy cập vào chi tiết các dự án.
*   **BR-002 - Cho phép người dùng tạo token và mua trước:** Cung cấp khả năng cho người dùng tạo (mint) token mới với các thuộc tính tối giản (**hình ảnh, tên, ký hiệu, mô tả**) và **cho phép người tạo mua trước một lượng token ở mức giá khởi điểm trong quá trình tạo.**
*   **BR-003 - Hỗ trợ giao dịch token (Mua/Bán bằng APT):** Cho phép người dùng mua/bán token bằng APT **trực tiếp với hợp đồng bonding curve của Aiptos**. Khi token đạt mốc vốn hóa thị trường định trước, nền tảng sẽ **tự động tạo cặp thanh khoản trên Hyperion Aptos và chuyển hướng người dùng đến trang swap của Hyperion để tiếp tục giao dịch.**
*   **BR-004 - Triển khai hợp đồng thông minh Aiptos:** Triển khai thành công và ổn định hợp đồng thông minh (smart contract) cốt lõi của Aiptos lên mạng lưới Aptos để quản lý **cơ chế bonding curve và quá trình chuyển giao thanh khoản.**
*   **BR-005 - Kết nối ví và quản lý người dùng (Đăng nhập X):** Cho phép người dùng kết nối ví tiền điện tử Aptos và đăng nhập vào nền tảng bằng tài khoản X (Twitter) để thực hiện giao dịch và quản lý các token/tính năng liên quan đến tài khoản của họ.
*   **BR-006 - Quản lý Thông tin Token Niêm yết:** Cho phép người tạo token quản lý và chỉnh sửa thông tin hiển thị (metadata) của token mà họ đã tạo (ví dụ: mô tả, logo, các đường dẫn liên kết mạng xã hội).
*   **BR-007 - Đảm bảo tuân thủ pháp lý cơ bản:** Chuẩn bị và tích hợp các tài liệu pháp lý cần thiết như Điều khoản Sử dụng (Terms of Use) và Chính sách Quyền riêng tư (Privacy Policy) cho nền tảng.
*   **BR-008 - Tạo nền tảng cho giai đoạn phát triển AI (Bankr):** Xây dựng Aiptos với kiến trúc và nền tảng vững chắc, có khả năng mở rộng và tích hợp, phục vụ cho việc phát triển các tính năng AI trong giai đoạn tiếp theo (dự án Bankr).
*   **BR-009 - Hiển thị Thông tin Tham khảo về Bot Tương lai (Bankr):** Hiển thị các thông tin công khai cơ bản liên quan đến bot AI (ví dụ: @bankrbot từ hình ảnh) như một phần giới thiệu cho dự án Bankr trong tương lai, bao gồm tên, mô tả ngắn, số liệu tương tác (ví dụ: followers), và các liên kết mạng xã hội của bot.
*   **BR-010 - Cơ chế Chia sẻ Doanh thu cho Người tạo Token:** Cung cấp cho người tạo token một cơ chế để nhận một phần phí giao dịch (40%) được tạo ra khi token của họ được giao dịch trên Hyperion, tạo động lực cho việc tạo ra các token chất lượng.

---

## 3. Functional Requirements (FR)

**FR-001 - Kết nối Ví Aptos**
*   **FR-001 - Kết nối Ví Aptos:** Hệ thống PHẢI cho phép người dùng kết nối ví Aptos tương thích của họ.
    *   **Mô tả:** Người dùng cần có khả năng kết nối ví Aptos hiện có của họ với nền tảng Aiptos. Nút "Connect" trên header. Thông báo trạng thái.
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào nút "Connect" trên header hoặc cố gắng thực hiện một hành động yêu cầu ví đã kết nối.
    *   **Điều kiện tiên quyết:** Người dùng đã cài đặt/có sẵn ví tương thích với Aptos.
    *   **Điều kiện sau khi hoàn thành:** Ví của người dùng được kết nối an toàn với nền tảng; địa chỉ ví của người dùng được hiển thị trên header; người dùng có thể tiếp tục các hành động yêu cầu ví. HOẶC Kết nối ví không thành công và người dùng được thông báo.
    *   **Mức độ ưu tiên:** Cao

**FR-002 - Tạo Token Mới**
*   **FR-002 - Tạo Token Mới:** Hệ thống PHẢI cho phép người dùng (đã đăng nhập và kết nối ví) tạo token mới trên mạng lưới Aptos thông qua một quy trình đơn giản trên nền tảng Aiptos.
    *   **Mô tả:** Quá trình tạo token sẽ diễn ra trong một bước. Ngoài việc cung cấp các thông tin cơ bản (**Hình ảnh, Tên, Ký hiệu, Mô tả**), hệ thống PHẢI cho phép người tạo **nhập một số lượng APT để mua trước token ở mức giá khởi điểm của bonding curve.** Lượng mua trước này là tùy chọn.
    *   **Kích hoạt/Sự kiện:** Người dùng đã đăng nhập, kết nối ví, điều hướng đến mục "Create" và hoàn thành biểu mẫu, sau đó nhấp nút "Create".
    *   **Điều kiện tiên quyết:** Đã đăng nhập (FR-004), Ví Aptos đã kết nối (FR-001), Đủ APT cho phí gas (và cho lượng mua trước nếu có).
    *   **Điều kiện sau khi hoàn thành:** Hợp đồng token mới được triển khai; Token liên kết với người tạo; **Nếu người tạo mua trước, lượng token tương ứng được chuyển vào ví của họ;** Token niêm yết trên Aiptos và bắt đầu giao dịch trên bonding curve cho những người dùng khác; Người dùng nhận xác nhận.
    *   **Mức độ ưu tiên:** Cao

**FR-003 - Hiển thị Thông tin Chi tiết Token**
*   **FR-003 - Hiển thị Thông tin Chi tiết Token:** Hệ thống PHẢI hiển thị thông tin chi tiết và các chức năng tương tác cho mỗi token.
    *   **Mô tả:** Bao gồm: Thông tin Cơ bản Token (hình ảnh, tên, ký hiệu, mô tả, **vốn hóa thị trường (market cap)**, CA, Owner, followers, nút "Add to wallet", link social); **Thông tin Cung cấp (Supply Info):** hiển thị rõ **lượng token người tạo đã mua trước**, **lượng đã bán ra công chúng**, và **tổng cung hiện tại trên bonding curve**; **Trạng thái Token** ("Đang giao dịch trên Bonding Curve" hoặc "Đã niêm yết trên Hyperion"); Biểu đồ Giá Token (dữ liệu giá được truy vấn từ hợp đồng bonding curve của Aiptos, thể hiện giá theo từng giao dịch); **Khu vực Giao dịch (có hai trạng thái):**
        *   **Khi token đang trên bonding curve:** Hiển thị giao diện Mua/Bán. Bên dưới đó, PHẢI hiển thị:
            *   **Thanh tiến độ Bonding Curve:** Một thanh tiến trình trực quan cho thấy mức vốn hóa thị trường hiện tại so với mốc yêu cầu để niêm yết trên Hyperion.
            *   **Bảng Giao dịch Gần đây:** Một bảng liệt kê các giao dịch mua/bán gần nhất của token này (loại giao dịch, số lượng, giá, thời gian).
        *   **Khi token đã đạt mốc và chuyển sang Hyperion:** Toàn bộ giao diện Mua/Bán, thanh tiến độ, và bảng giao dịch của token sẽ bị ẩn hoặc vô hiệu hóa. Thay vào đó, một khu vực thông báo nổi bật sẽ hiển thị, cùng với một nút bấm lớn: **"Giao dịch trên Hyperion"**. Nút này sẽ mở một tab mới hoặc chuyển hướng người dùng đến đúng trang swap cho token đó trên website của Hyperion.
        *   Khu vực Thông tin Bot (tên, mô tả, followers, link, lệnh mẫu). Nút "Admin page".
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào token từ danh sách (FR-008) hoặc truy cập trực tiếp.
    *   **Điều kiện tiên quyết:** Token tồn tại, metadata có sẵn.
    *   **Điều kiện sau khi hoàn thành:** Người dùng xem được thông tin toàn diện và có thể thực hiện giao dịch mua/bán token trên bonding curve của Aiptos hoặc được chuyển hướng sang Hyperion.
    *   **Mức độ ưu tiên:** Cao

**FR-004 - Đăng nhập Người dùng (X/Twitter)**
*   **FR-004 - Đăng nhập Người dùng (X/Twitter):** Hệ thống PHẢI cho phép người dùng đăng nhập bằng tài khoản X (Twitter).
    *   **Mô tả:** Tích hợp API xác thực X. Sau khi đăng nhập, liên kết phiên với hoạt động quản lý.
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp "Đăng nhập" và chọn "Đăng nhập bằng X".
    *   **Điều kiện tiên quyết:** Người dùng có tài khoản X; Aiptos đã cấu hình tích hợp.
    *   **Điều kiện sau khi hoàn thành:** Người dùng được xác thực, đăng nhập; Hệ thống tạo phiên làm việc. HOẶC Đăng nhập thất bại, nhận thông báo lỗi.
    *   **Mức độ ưu tiên:** Cao

**FR-005 - Truy cập Trang Quản trị Token (Admin Page)**
*   **FR-005 - Truy cập Trang Quản trị Token (Admin Page):** Hệ thống PHẢI cho phép người tạo token (đã đăng nhập) truy cập một trang quản trị riêng cho token của họ.
    *   **Mô tả:** Từ trang chi tiết token, nếu là người tạo và đã đăng nhập, nhấp nút "Admin page" để đến trang quản lý (chỉnh sửa metadata).
    *   **Kích hoạt/Sự kiện:** Người tạo token đã đăng nhập, ở trang chi tiết token, nhấp "Admin page".
    *   **Điều kiện tiên quyết:** Đã đăng nhập (FR-004); Là người tạo/chủ sở hữu token đang xem.
    *   **Điều kiện sau khi hoàn thành:** Chuyển hướng đến trang quản trị của token.
    *   **Mức độ ưu tiên:** Cao

**FR-006 - Mua Token bằng APT trên Bonding Curve**
*   **FR-006 - Mua Token bằng APT trên Bonding Curve:** Hệ thống PHẢI cho phép người dùng mua token bằng APT **khi token đang trong giai đoạn bonding curve.**
    *   **Mô tả:** Trên trang chi tiết token, trong Khu vực Giao dịch, người dùng PHẢI có thể nhập số lượng token muốn mua hoặc số lượng APT muốn chi. Hệ thống PHẢI hiển thị tỷ giá giao dịch dự kiến từ bonding curve. Khi người dùng nhấp nút 'Mua', hệ thống PHẢI khởi tạo một giao dịch với hợp đồng bonding curve của **Aiptos**, yêu cầu người dùng xác nhận giao dịch này từ ví Aptos đã kết nối. Chức năng này sẽ bị vô hiệu hóa sau khi token được niêm yết trên Hyperion.
    *   **Kích hoạt/Sự kiện:** Người dùng chọn mua và xác nhận giao dịch trên giao diện Aiptos, tương tác với hợp đồng Aiptos.
    *   **Điều kiện tiên quyết:** Đã kết nối ví Aptos; Đủ APT để thanh toán và phí gas; Token đang trong giai đoạn bonding curve.
    *   **Điều kiện sau khi hoàn thành:** Token mua được chuyển vào ví người dùng; Số dư APT của người dùng giảm tương ứng; Giao dịch được ghi lại trên blockchain thông qua hợp đồng của Aiptos; Người dùng nhận được thông báo xác nhận.
    *   **Mức độ ưu tiên:** Cao

**FR-007 - Bán Token để nhận APT trên Bonding Curve**
*   **FR-007 - Bán Token để nhận APT trên Bonding Curve:** Hệ thống PHẢI cho phép người dùng bán token để đổi lấy APT **khi token đang trong giai đoạn bonding curve.**
    *   **Mô tả:** Trên trang chi tiết token, trong Khu vực Giao dịch, người dùng PHẢI có thể chọn token muốn bán và nhập số lượng. Hệ thống PHẢI hiển thị số lượng APT dự kiến nhận được. Khi người dùng nhấp nút 'Bán', hệ thống PHẢI khởi tạo một giao dịch với hợp đồng bonding curve của **Aiptos**, yêu cầu người dùng xác nhận giao dịch này từ ví Aptos đã kết nối. Chức năng này sẽ bị vô hiệu hóa sau khi token được niêm yết trên Hyperion.
    *   **Kích hoạt/Sự kiện:** Người dùng chọn bán và xác nhận giao dịch trên giao diện Aiptos, tương tác với hợp đồng Aiptos.
    *   **Điều kiện tiên quyết:** Đã kết nối ví Aptos; Đủ token bán và APT cho phí gas; Token đang trong giai đoạn bonding curve.
    *   **Điều kiện sau khi hoàn thành:** Số lượng token bán bị trừ khỏi ví người dùng; Số dư APT của người dùng tăng tương ứng; Giao dịch được ghi lại trên blockchain thông qua hợp đồng của Aiptos; Người dùng nhận được thông báo xác nhận.
    *   **Mức độ ưu tiên:** Cao

**FR-008 - Hiển thị Danh sách Token/Dự án và Tìm kiếm**
*   **FR-008 - Hiển thị Danh sách Token/Dự án và Tìm kiếm:** Hệ thống PHẢI hiển thị danh sách token/dự án và cung cấp chức năng tìm kiếm.
    *   **Mô tả:** Hiển thị dạng Lưới: thẻ token (hình ảnh, tên, ký hiệu, Market Cap bằng APT (tham khảo USD), thời gian tạo, CA, traders, owner, nút tương tác nhanh). Thanh tìm kiếm ("Search by token name or symbol..."). Sắp xếp ("Newest"), lọc ("All Pairs").
    *   **Kích hoạt/Sự kiện:** Người dùng truy cập trang danh sách token hoặc sử dụng tìm kiếm/bộ lọc.
    *   **Điều kiện tiên quyết:** Có ít nhất một token/dự án niêm yết.
    *   **Điều kiện sau khi hoàn thành:** Danh sách token hiển thị đúng định dạng và tiêu chí; Kết quả tìm kiếm hiển thị.
    *   **Mức độ ưu tiên:** Cao

**FR-009 - Hiển thị Dòng Chảy Giao dịch Gần Đây trên Nền tảng (Marquee/Ticker)**
*   **FR-009 - Hiển thị Dòng Chảy Giao dịch Gần Đây trên Nền tảng (Marquee/Ticker):** Hệ thống PHẢI hiển thị dòng chảy các giao dịch mua/bán token vừa thực hiện thành công **trên hợp đồng bonding curve của Aiptos (ví dụ: bằng cách lắng nghe các sự kiện (events) phát ra từ contract của Aiptos).**
    *   **Mô tả:** Dòng chảy hiển thị thông tin tóm tắt: [Tên Token] | [Mua/Bán] | [Giá trị bằng APT/USD] | [Địa chỉ người dùng rút gọn (nếu có thể lấy được)]. Tự động cập nhật. Sau khi token chuyển sang Hyperion, dòng chảy này trên Aiptos có thể dừng lại đối với token đó.
    *   **Kích hoạt/Sự kiện:** Tự động cập nhật khi có giao dịch mới trên contract của Aiptos.
    *   **Điều kiện tiên quyết:** **Aiptos có khả năng lắng nghe sự kiện từ hợp đồng thông minh của chính mình một cách hiệu quả.**
    *   **Điều kiện sau khi hoàn thành:** Dòng chảy giao dịch hiển thị liên tục, chính xác các giao dịch trên bonding curve.
    *   **Mức độ ưu tiên:** Cao

**FR-010 - Hiển thị Điều khoản Sử dụng và Chính sách Quyền riêng tư**
*   **FR-010 - Hiển thị Điều khoản Sử dụng và Chính sách Quyền riêng tư:** Hệ thống PHẢI cung cấp quyền truy cập dễ dàng đến các tài liệu này.
    *   **Mô tả:** Liên kết ở vị trí dễ thấy (ví dụ: footer).
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào liên kết.
    *   **Điều kiện tiên quyết:** Nội dung tài liệu đã soạn thảo.
    *   **Điều kiện sau khi hoàn thành:** Người dùng xem được nội dung.
    *   **Mức độ ưu tiên:** Cao

**FR-011 - Chỉnh sửa Thông tin (Metadata) Token từ Trang Admin**
*   **FR-011 - Chỉnh sửa Thông tin (Metadata) Token từ Trang Admin:** Hệ thống PHẢI cho phép người tạo token (trên trang Admin) chỉnh sửa metadata.
    *   **Mô tả:** Trên trang Admin, cập nhật: Mô tả Token, Link Website, Farcaster, X, Telegram. Thay đổi được lưu và cập nhật trên trang chi tiết token.
    *   **Kích hoạt/Sự kiện:** Người tạo token thay đổi thông tin và nhấp "Save changes".
    *   **Điều kiện tiên quyết:** Ở trang Admin của token sở hữu (FR-005).
    *   **Điều kiện sau khi hoàn thành:** Metadata token được cập nhật; Nhận xác nhận.
    *   **Mức độ ưu tiên:** Trung bình

**FR-012 - Hiển thị Thông tin Tham khảo về Bot**
*   **FR-012 - Hiển thị Thông tin Tham khảo về Bot:** Hệ thống PHẢI hiển thị khu vực thông tin tĩnh về bot AI (ví dụ: CryptoGenie/@bankrbot) trên trang chi tiết token (FR-003).
    *   **Mô tả:** Khu vực này hiển thị: Tên Bot, Avatar, Mô tả ngắn, Số người theo dõi, Ví dụ lệnh Bot hiểu, Liên kết social/thông tin thêm về Bot. Đây là thông tin tĩnh, không có chat trực tiếp.
    *   **Kích hoạt/Sự kiện:** Người dùng xem trang chi tiết token.
    *   **Điều kiện tiên quyết:** Nội dung thông tin Bot đã chuẩn bị.
    *   **Điều kiện sau khi hoàn thành:** Thông tin Bot hiển thị rõ ràng.
    *   **Mức độ ưu tiên:** Trung bình

**FR-013 - Claim Phí Giao dịch từ Hyperion**
*   **FR-013 - Claim Phí Giao dịch từ Hyperion:** Hệ thống PHẢI cung cấp chức năng cho người tạo token claim (nhận) phần phí giao dịch (40%) của họ từ các giao dịch trên Hyperion.
    *   **Mô tả:** Trên trang Admin của token, PHẢI có một khu vực hiển thị số dư phí tích lũy từ Hyperion (ví dụ: "Phí có thể nhận: X APT"). Một nút "Claim Fees". Chức năng này chỉ hiển thị và hoạt động sau khi token đã được niêm yết trên Hyperion.
    *   **Kích hoạt/Sự kiện:** Người tạo token nhấp nút "Claim" trên trang Admin.
    *   **Điều kiện tiên quyết:** Người dùng là người tạo token, đã đăng nhập (FR-004), đang ở trang Admin (FR-005), có phí tích lũy để claim.
    *   **Điều kiện sau khi hoàn thành:** Số dư phí được chuyển vào ví của người tạo. Số dư phí chưa claim trên giao diện được cập nhật về 0. Người dùng nhận được xác nhận.
    *   **Mức độ ưu tiên:** Trung bình

---

## 4. Assumptions & Constraints

*   **Assumptions:**
    *   **A-001 - Ổn định và Năng lực của Mạng Aptos:** Mạng lưới Aptos sẽ hoạt động ổn định, an toàn và có khả năng hỗ trợ khối lượng giao dịch cũng như các loại giao dịch mà nền tảng Aiptos yêu cầu.
    *   **A-002 - Người dùng có Ví Aptos Tương thích:** Người dùng tiềm năng của Aiptos đã có hoặc có thể dễ dàng thiết lập và sử dụng các ví tiền điện tử tương thích với mạng lưới Aptos.
    *   **A-003 - Người dùng có Tài khoản X/Farcaster:** Người dùng muốn sử dụng các chức năng quản lý token sẽ có tài khoản X (Twitter) hoặc Farcaster hợp lệ để đăng nhập.
    *   **A-004 - Kiến thức Cơ bản của Người dùng:** Người dùng có hiểu biết cơ bản về giao dịch token, khái niệm DAO, và các rủi ro liên quan đến việc sử dụng các ứng dụng phi tập trung và tiền điện tử.
    *   **A-005 - Tính sẵn có và Độ tin cậy của API Xác thực Bên Thứ Ba:** API xác thực của X (Twitter) và Farcaster sẽ hoạt động ổn định và cho phép tích hợp để xác thực người dùng.
    *   **A-006 - Người dùng có APT cho Phí Gas:** Người dùng sẽ có đủ lượng token APT để chi trả phí giao dịch (gas fees) cho các hoạt động trên mạng lưới Aptos.
    *   **A-007 - Cấu trúc URL của Hyperion có thể dự đoán được:** Giả định rằng Hyperion có một cấu trúc URL ổn định và có thể dự đoán được cho các trang swap (ví dụ: `hyperion.xyz/swap?input=[token_A]&output=[token_B]`) để Aiptos có thể tạo liên kết chuyển hướng chính xác cho người dùng.
    *   **A-008 - Hyperion hỗ trợ và cung cấp API/Cơ chế cho việc Chia sẻ Phí:** Giả định rằng Hyperion có một cơ chế kỹ thuật (ví dụ: hợp đồng thông minh hoặc API) cho phép Aiptos và người tạo token truy vấn và rút phần phí giao dịch của họ (40% cho người tạo, 40% cho Aiptos) một cách đáng tin cậy.

*   **Constraints:**
    *   **C-001 - Thời hạn Dự án:** Dự án Aiptos có mục tiêu hoàn thành và ra mắt các chức năng cốt lõi vào ngày 11 tháng 6 năm 2025.
    *   **C-002 - Phạm vi Chức năng Ban đầu:** Phiên bản đầu tiên của Aiptos sẽ tập trung vào các chức năng cốt lõi của mô hình bonding curve: tạo token đơn giản, giao dịch trên bonding curve, và tự động chuyển giao thanh khoản sang Hyperion.
    *   **C-003 - Không có AI trong Giai đoạn Đầu:** Trí tuệ nhân tạo (AI) sẽ không được sử dụng để thực hiện giao dịch hoặc triển khai token thay mặt người dùng trong phiên bản này của Aiptos.
    *   **C-004 - Quyền Quản lý Token Hạn chế:** Quyền quản lý token của người tạo sẽ giới hạn ở việc chỉnh sửa metadata.
    *   **C-005 - Phụ thuộc vào Mạng lưới Aptos và Hợp đồng Hyperion:** Hoạt động của nền tảng Aiptos phụ thuộc vào hiệu suất, tính bảo mật và các chính sách của mạng lưới Aptos. Chức năng giao dịch **ban đầu** phụ thuộc vào **hợp đồng thông minh của chính Aiptos**, và **sau đó** phụ thuộc vào sự ổn định và an toàn của hợp đồng Hyperion.
    *   **C-006 - Giao diện Người dùng Chính:** Giao diện người dùng chính cho các tương tác sẽ là trang web Aiptos.
    *   **C-007 - Đơn vị tiền tệ giao dịch chính:** Đồng APT là đơn vị tiền tệ chính được sử dụng cho các giao dịch và tính toán phí trên nền tảng Aiptos. Các đơn vị tiền tệ khác (ví dụ: USD, ETH) nếu được hiển thị chỉ mang tính chất tham khảo.

---

## 5. Risks

*   **R-001 - Hiểu Lầm Yêu cầu do Hạn chế Giao tiếp với Khách hàng**
    *   **Mô tả:** Việc khách hàng không thể trao đổi trực tiếp hàng ngày có thể dẫn đến việc truyền đạt thông tin sai lệch, hiểu sai yêu cầu.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Báo cáo hàng ngày chi tiết, chủ động đề xuất yêu cầu, báo cáo tiến độ qua video, duy trì PRD cập nhật.

*   **R-002 - Tác động của Dịch bệnh đến Năng suất**
    *   **Mô tả:** Sự bùng phát dịch bệnh có thể ảnh hưởng đến năng suất và tiến độ.
    *   **Khả năng xảy ra:** Thấp đến Trung bình
    *   **Tác động:** Trung bình đến Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Biện pháp phòng ngừa, kiểm tra sức khỏe, hướng dẫn làm việc từ xa.

*   **R-003 - Khối lượng Công việc UX Lớn**
    *   **Mô tả:** Khối lượng lớn deliverables UX trong thời gian ngắn có thể gây áp lực.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Trung bình
    *   **Kế hoạch Giảm thiểu / Hành động:** Sử dụng dự án DAO mẫu, phân bổ nguồn lực chuyên trách, sử dụng thư viện component UI.

*   **R-004 - Mở rộng Phạm vi / Định nghĩa Hoàn thành (DoD) Không rõ ràng**
    *   **Mô tả:** Yêu cầu có thể bị mở rộng hoặc DoD không rõ ràng.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Xác định DoD rõ ràng, chia nhỏ tác vụ, giao phần hoàn thành tăng dần, quy trình quản lý thay đổi nghiêm ngặt, rà soát PRD.

*   **R-005 - Lỗ hổng Bảo mật Hợp đồng Thông minh (Smart Contract) của Aiptos:**
    *   **Mô tả:** Hợp đồng thông minh **bonding curve cốt lõi của Aiptos** có thể chứa lỗ hổng, dẫn đến mất mát tài sản hoặc hoạt động sai lệch. Đây là rủi ro lớn nhất của dự án.
    *   **Khả năng xảy ra:** Trung bình đến Cao
    *   **Tác động:** Rất Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Tuân thủ best practices phát triển an toàn (Move), kiểm thử nội bộ, xem xét audit bởi bên thứ ba, sử dụng thư viện đã kiểm chứng.

*   **R-006 - Vấn đề về Hiệu suất và Khả năng Mở rộng của Nền tảng Aiptos:**
    *   **Mô tả:** Khi người dùng và token tăng, nền tảng Aiptos có thể gặp vấn đề hiệu suất trong việc truy vấn thông tin, hiển thị dữ liệu, và quản lý trạng thái giao dịch trên bonding curve.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Trung bình đến Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Thiết kế kiến trúc mở rộng, caching hiệu quả, tối ưu hóa truy vấn blockchain/indexer, kiểm thử tải.

*   **R-007 - Thay đổi hoặc Ngừng cung cấp API của Bên Thứ Ba (X, Farcaster):**
    *   **Mô tả:** Phụ thuộc API X và Farcaster cho đăng nhập. Thay đổi/ngừng API có thể ảnh hưởng đăng nhập.
    *   **Khả năng xảy ra:** Thấp đến Trung bình
    *   **Tác động:** Trung bình
    *   **Kế hoạch Giảm thiểu / Hành động:** Thiết kế module xác thực linh hoạt, theo dõi thông báo API, xem xét phương thức xác thực dự phòng.

*   **R-008 - Phụ thuộc vào Hợp đồng Thông minh của Hyperion Aptos (Giai đoạn sau)**
    *   **Mô tả:** Sau khi token được chuyển giao, Aiptos sẽ phụ thuộc vào các hợp đồng thông minh của Hyperion Aptos. Các lỗi tiềm ẩn trong contract của Hyperion, việc Hyperion nâng cấp contract gây mất tương thích (breaking changes), hoặc các vấn đề bảo mật không lường trước có thể ảnh hưởng đến các token đã "trưởng thành" và gây mất mát cho người dùng.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Theo dõi chặt chẽ các thông báo từ Hyperion. Thông báo rõ ràng cho người dùng về việc giao dịch giai đoạn sau được xử lý bởi hợp đồng của Hyperion và các rủi ro liên quan khi chuyển hướng.

*   **R-009 - Rủi ro về Cơ chế Thu và Phân phối Phí từ Hyperion:**
    *   **Mô tả:** Cơ chế kỹ thuật để thu và phân phối phí từ Hyperion có thể phức tạp, không đáng tin cậy, hoặc có thể thay đổi mà không báo trước. Lỗi trong cơ chế này có thể dẫn đến việc tính sai phí, không thể claim, hoặc mất mát doanh thu cho cả Aiptos và người tạo token.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Nghiên cứu kỹ lưỡng tài liệu kỹ thuật của Hyperion. Xây dựng một module riêng biệt, được kiểm thử kỹ lưỡng để xử lý việc tương tác với cơ chế phí của Hyperion. Có kế hoạch dự phòng và thông báo cho người dùng nếu cơ chế của Hyperion thay đổi.

---

## 6. Screens / User Interface

*   **Màn hình Kết nối Ví (Connect Wallet Modal/Section):**
    *   **Mô tả:** Modal/phần giao diện hiển thị tùy chọn ví Aptos (Petra, Martian, Pontem). Nút "Connect" trên header. Thông báo trạng thái.

*   **Màn hình Đăng nhập (Login Modal/Page):**
    *   **Mô tả:** Giao diện chọn "Đăng nhập bằng X" hoặc "Đăng nhập bằng Farcaster". Chuyển hướng/popup để xác thực.

*   **Trang Chủ / Danh sách Token (Homepage / Token List Page):**
    *   **Mô tả:** Hiển thị danh sách token dạng lưới (thẻ token: logo, tên, ký hiệu, market cap (APT, tham khảo USD), thời gian tạo, CA, traders, owner, nút tương tác nhanh). Thanh tìm kiếm. Sắp xếp ("Newest"), lọc ("All Pairs"). Nút "Create Token Mới" (nếu đã đăng nhập/kết nối ví).

*   **Trang Chi tiết Token (Token Detail Page):**
    *   **Mô tả:** Thông tin cơ bản (logo, tên, ký hiệu, mô tả, market cap, CA, owner, followers, nút "Add to wallet", link social). **Bổ sung:** hiển thị rõ **lượng token người tạo đã mua trước**, **lượng đã bán cho công chúng**, và **tổng cung hiện tại trên bonding curve**. Biểu đồ giá (hiển thị giá theo từng giao dịch).
        *   **Khu vực Giao dịch (Giai đoạn Bonding Curve):** Hiển thị Tab Mua/Bán, ô nhập liệu, thông tin giá từ bonding curve, nút "Mua", nút "Bán". **Bên dưới khu vực này sẽ hiển thị:**
            *   **Thanh tiến độ Bonding Curve:** Cho thấy tiến trình đạt đến mốc vốn hóa thị trường để niêm yết trên Hyperion.
            *   **Bảng Giao dịch:** Liệt kê các giao dịch mua/bán gần nhất của token này.
        *   **Khu vực Giao dịch (Giai đoạn sau khi niêm yết Hyperion):** Khu vực này được thay thế bằng một thông báo (ví dụ: "Token này hiện đang giao dịch trên Hyperion!") và một nút bấm duy nhất **"Giao dịch trên Hyperion"** để điều hướng người dùng.
        *   Khu vực Thông tin Bot (tên, mô tả, followers, link, lệnh mẫu). Nút "Admin page".

*   **Trang Tạo Token Mới (Create New Token Page):**
    *   **Mô tả:** Biểu mẫu một bước: Token Image (tải lên), Token Name, Token Symbol, Description. **Sẽ có thêm một trường tùy chọn (ví dụ: "Creator Pre-buy Amount (APT)") để người tạo nhập số lượng APT muốn dùng để mua trước token.** Nút "Create".

*   **Trang Quản trị Token (Admin Page):**
    *   **Mô tả:** Truy cập từ trang chi tiết token (nếu là người tạo). Bao gồm các khu vực:
        *   **Update Token Info:** Biểu mẫu chỉnh sửa metadata (Description, Website, Farcaster, X, Telegram) và nút "Save changes".
        *   **Khu vực Claim Phí Giao dịch (Fee Claim Area):** Hiển thị số dư phí tích lũy từ Hyperion (ví dụ: "Phí có thể nhận: X APT"). Một nút "Claim Fees". Chức năng này chỉ hiển thị và hoạt động sau khi token đã được niêm yết trên Hyperion.

*   **Thành phần Dòng Chảy Giao dịch (Live Transactions Ticker/Marquee Component):**
    *   **Mô tả:** Thành phần động (đầu/cuối trang) hiển thị liên tục giao dịch mới nhất trên các hợp đồng bonding curve của Aiptos.

*   **Chân Trang (Footer):**
    *   **Mô tả:** Liên kết "Điều khoản Sử dụng", "Chính sách Quyền riêng tư", link mạng xã hội của Aiptos.

--- 