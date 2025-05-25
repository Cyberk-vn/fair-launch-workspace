# Product Requirements Document - Clanker

**Date:** [Ngày tạo/Cập nhật gần nhất]

**Version:** 1.0

**Prepared By:** [Tên cụ/Đội ngũ của cụ]

---

## 1. Introduction / Overview

*   **Project Summary:** Dự án Clanker nhằm mục đích tạo ra một nền tảng Tổ Chức Tự Trị Phi Tập Trung (DAO) trên mạng lưới Aptos, nơi người dùng có thể tạo, mua và bán token.
*   **Detailed Overview:** Tài liệu này mô tả các yêu cầu cho Clanker, một nền tảng DAO được phát triển cho mạng Aptos. Mục tiêu cốt lõi của dự án là cho phép người dùng tạo token tùy chỉnh với các thông tin thiết yếu như hình ảnh, tên, ký hiệu, mô tả, tổng cung, vốn hóa thị trường ban đầu, các liên kết mạng xã hội, và cấu hình các thông số phân bổ token ban đầu (ví dụ: cho dev, cho public trade, cho vault). Nền tảng sẽ cho phép người dùng mua và bán các token được tạo ra bằng APT (token gốc của Aptos), với mọi giao dịch đều có thông tin có thể kiểm chứng. Hợp đồng thông minh (smart contract) của Clanker sẽ được triển khai trên mạng Aptos. Giao diện người dùng chính sẽ là một trang web (Clanker site). Dự án Clanker cũng đóng vai trò là nền tảng ban đầu, tạo tiền đề cho việc phát triển giai đoạn AI tiếp theo (dự án Bankr).

---

## 2. Business Requirements (BR)

*   **BR-001 - Phát triển nền tảng DAO trên Aptos:** Xây dựng một nền tảng Tổ Chức Tự Trị Phi Tập Trung (DAO) hoạt động trên mạng lưới Aptos, cho phép người dùng thực hiện các chức năng cốt lõi liên quan đến token.
*   **BR-002 - Cho phép người dùng tạo token:** Cung cấp khả năng cho người dùng tạo (mint) các token mới trên nền tảng Clanker. Người dùng có thể định nghĩa các thuộc tính cơ bản cho token của họ như hình ảnh, tên, ký hiệu, mô tả, tổng cung, vốn hóa thị trường ban đầu, các liên kết mạng xã hội, và cấu hình các thông số phân bổ token ban đầu (ví dụ: cho dev, cho public trade, cho vault).
*   **BR-003 - Hỗ trợ giao dịch token (Mua/Bán bằng APT):** Cho phép người dùng thực hiện giao dịch mua và bán các token được tạo trên nền tảng bằng APT. Các giao dịch phải được ghi nhận và có thể kiểm chứng trên blockchain.
*   **BR-004 - Triển khai hợp đồng thông minh Clanker:** Triển khai thành công và ổn định hợp đồng thông minh (smart contract) cốt lõi của Clanker lên mạng lưới Aptos để quản lý các chức năng chính của nền tảng.
*   **BR-005 - Kết nối ví và quản lý người dùng (Đăng nhập X/Farcaster):** Cho phép người dùng kết nối ví tiền điện tử Aptos và đăng nhập vào nền tảng bằng tài khoản X (Twitter) hoặc Farcaster để thực hiện giao dịch và quản lý các token/tính năng liên quan đến tài khoản của họ.
*   **BR-006 - Quản lý Thông tin Token Niêm yết:** Cho phép người tạo token quản lý và chỉnh sửa thông tin hiển thị (metadata) của token mà họ đã tạo (ví dụ: mô tả, logo, các đường dẫn liên kết mạng xã hội).
*   **BR-007 - Đảm bảo tuân thủ pháp lý cơ bản:** Chuẩn bị và tích hợp các tài liệu pháp lý cần thiết như Điều khoản Sử dụng (Terms of Use) và Chính sách Quyền riêng tư (Privacy Policy) cho nền tảng.
*   **BR-008 - Tạo nền tảng cho giai đoạn phát triển AI (Bankr):** Xây dựng Clanker với kiến trúc và nền tảng vững chắc, có khả năng mở rộng và tích hợp, phục vụ cho việc phát triển các tính năng AI trong giai đoạn tiếp theo (dự án Bankr).
*   **BR-009 - Cơ chế Phần thưởng cho Người tạo Token:** Thiết lập một cơ chế cho phép người tạo token nhận phần thưởng (rewards) dựa trên hiệu suất hoặc các thông số định trước của token do họ tạo ra (ví dụ: dựa trên khối lượng giao dịch của token đó). Người tạo token phải có khả năng xem thông tin về phần thưởng ước tính và thực hiện thao tác nhận (claim) phần thưởng về ví của mình.
*   **BR-010 - Kích hoạt Cơ chế Token Vault (Khóa Token):** Cung cấp chức năng cho phép người tạo token tùy chọn cấu hình một phần token của họ vào một "khoá" (vault) trong quá trình tạo token. Token trong vault sẽ bị khóa trong một khoảng thời gian nhất định hoặc cho đến khi một điều kiện cụ thể được đáp ứng trước khi có thể được claim.
*   **BR-011 - Cho phép Claim Token từ Vault:** Người dùng đủ điều kiện (ví dụ: người tạo token hoặc địa chỉ ví được chỉ định) PHẢI có khả năng claim (nhận) số token đã được mở khóa từ vault sau khi các điều kiện khóa được thỏa mãn.
*   **BR-012 - Hiển thị Thông tin Tham khảo về Bot Tương lai (Bankr):** Hiển thị các thông tin công khai cơ bản liên quan đến bot AI (ví dụ: @bankrbot từ hình ảnh) như một phần giới thiệu cho dự án Bankr trong tương lai, bao gồm tên, mô tả ngắn, số liệu tương tác (ví dụ: followers), và các liên kết mạng xã hội của bot.

---

## 3. Functional Requirements (FR)

**FR-001 - Kết nối Ví Aptos**
*   **FR-001 - Kết nối Ví Aptos:** Hệ thống PHẢI cho phép người dùng kết nối ví Aptos tương thích của họ.
    *   **Mô tả:** Người dùng cần có khả năng kết nối ví Aptos hiện có của họ với nền tảng Clanker. Nút "Connect" (hoặc tương tự, có thể hiển thị địa chỉ ví sau khi kết nối) sẽ được đặt ở vị trí dễ thấy trên header của trang web. Khi nhấp vào, một modal hoặc danh sách thả xuống sẽ hiển thị các tùy chọn ví được hỗ trợ (ví dụ: Petra, Martian, Pontem) để người dùng lựa chọn và phê duyệt kết nối. Quá trình kết nối phải an toàn.
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào nút "Connect" trên header hoặc cố gắng thực hiện một hành động yêu cầu ví đã kết nối.
    *   **Điều kiện tiên quyết:** Người dùng đã cài đặt/có sẵn ví tương thích với Aptos.
    *   **Điều kiện sau khi hoàn thành:** Ví của người dùng được kết nối an toàn với nền tảng; địa chỉ ví của người dùng được hiển thị trên header; người dùng có thể tiếp tục các hành động yêu cầu ví. HOẶC Kết nối ví không thành công và người dùng được thông báo.
    *   **Mức độ ưu tiên:** Cao

**FR-002 - Tạo Token Mới**
*   **FR-002 - Tạo Token Mới:** Hệ thống PHẢI cho phép người dùng (đã đăng nhập và kết nối ví) tạo token mới trên mạng lưới Aptos thông qua một quy trình gồm nhiều bước trên nền tảng Clanker.
    *   **Mô tả:** Quá trình tạo token sẽ được chia thành các bước rõ ràng ("Set General Information", "Set Token Parameter").
        *   **Bước 1: Thông tin Chung (General Information):** Tải lên Hình ảnh Token, Tên Token, Ký hiệu Token, Mô tả Token, Liên kết Mạng xã hội [Tùy chọn] (X, Website, Farcaster, Telegram).
        *   **Bước 2: Tham số Token (Token Parameter):** Tổng Cung, Vốn hóa Thị trường Khởi điểm [Tùy chọn] (giá trị bằng APT, tham khảo ETH/USD), Creator Buy [Tùy chọn], Cấu hình Token Vault [Tùy chọn] (FR-012).
    *   **Kích hoạt/Sự kiện:** Người dùng đã đăng nhập, kết nối ví, điều hướng đến mục "Create" và hoàn thành các bước, sau đó nhấp nút "Create".
    *   **Điều kiện tiên quyết:** Đã đăng nhập (FR-004), Ví Aptos đã kết nối (FR-001), Đủ APT cho phí gas.
    *   **Điều kiện sau khi hoàn thành:** Hợp đồng token mới được triển khai trên Aptos; Token liên kết với người tạo; Token niêm yết trên Clanker; Người dùng nhận xác nhận thành công hoặc lỗi.
    *   **Mức độ ưu tiên:** Cao

**FR-003 - Hiển thị Thông tin Chi tiết Token**
*   **FR-003 - Hiển thị Thông tin Chi tiết Token:** Hệ thống PHẢI hiển thị thông tin chi tiết và các chức năng tương tác cho mỗi token.
    *   **Mô tả:** Bao gồm: Thông tin Cơ bản Token (hình ảnh, tên, ký hiệu, mô tả, vốn hóa bằng APT (tham khảo USD/ETH), CA, Owner, Tokenomics, Unlock Date, followers, nút "Add to wallet", link social); Biểu đồ Giá Token; Khu vực Giao dịch (Mua/Bán bằng APT, nhập số lượng, số dư APT, nút nhanh, tỷ giá, trượt giá, nút Mua/Bán, thông báo kết nối ví); Khu vực Phần thưởng cho Người tạo (nếu là người tạo và đăng nhập: Volume, Reward %, Est Reward, nút "Claim Reward"); Khu vực Thông tin Bot (FR-014); Liên kết Trang Admin Token (nếu là người tạo và đăng nhập).
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào token từ danh sách (FR-009) hoặc truy cập trực tiếp.
    *   **Điều kiện tiên quyết:** Token tồn tại, metadata có sẵn.
    *   **Điều kiện sau khi hoàn thành:** Người dùng xem được thông tin toàn diện và tương tác (mua, bán).
    *   **Mức độ ưu tiên:** Cao

**FR-004 - Đăng nhập Người dùng (X/Twitter, Farcaster)**
*   **FR-004 - Đăng nhập Người dùng (X/Twitter, Farcaster):** Hệ thống PHẢI cho phép người dùng đăng nhập bằng tài khoản X (Twitter) hoặc Farcaster.
    *   **Mô tả:** Tích hợp API xác thực X và Farcaster. Sau khi đăng nhập, liên kết phiên với hoạt động quản lý.
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp "Đăng nhập" và chọn "Đăng nhập bằng X" hoặc "Đăng nhập bằng Farcaster".
    *   **Điều kiện tiên quyết:** Người dùng có tài khoản X/Farcaster; Clanker đã cấu hình tích hợp.
    *   **Điều kiện sau khi hoàn thành:** Người dùng được xác thực, đăng nhập; Hệ thống tạo phiên làm việc. HOẶC Đăng nhập thất bại, nhận thông báo lỗi.
    *   **Mức độ ưu tiên:** Cao

**FR-005 - Truy cập Trang Quản trị Token (Admin Page)**
*   **FR-005 - Truy cập Trang Quản trị Token (Admin Page):** Hệ thống PHẢI cho phép người tạo token (đã đăng nhập) truy cập một trang quản trị riêng cho token của họ.
    *   **Mô tả:** Từ trang chi tiết token, nếu là người tạo và đã đăng nhập, nhấp nút "Admin page" để đến trang quản lý (chỉnh sửa metadata, claim reward, claim vaulted token).
    *   **Kích hoạt/Sự kiện:** Người tạo token đã đăng nhập, ở trang chi tiết token, nhấp "Admin page".
    *   **Điều kiện tiên quyết:** Đã đăng nhập (FR-004); Là người tạo/chủ sở hữu token đang xem.
    *   **Điều kiện sau khi hoàn thành:** Chuyển hướng đến trang quản trị của token.
    *   **Mức độ ưu tiên:** Cao

**FR-006 - Claim Phần thưởng Token từ Trang Admin**
*   **FR-006 - Claim Phần thưởng Token từ Trang Admin:** Hệ thống PHẢI cho phép người tạo token (trên trang Admin, đã kết nối ví) xem và claim phần thưởng.
    *   **Mô tả:** Trang Admin, khu vực "Creator Reward" hiển thị: Creator Wallet, Trading Volume, Reward Percentage, Est Reward (bằng APT, tham khảo USD). Nút "Claim Reward" khởi tạo giao dịch chuyển token thưởng về ví người tạo.
    *   **Kích hoạt/Sự kiện:** Người tạo token nhấp "Claim Reward" trên trang Admin.
    *   **Điều kiện tiên quyết:** Ở trang Admin (FR-005); Ví Aptos đã kết nối (FR-001); Có phần thưởng khả dụng; Đủ APT cho phí gas.
    *   **Điều kiện sau khi hoàn thành:** Phần thưởng chuyển thành công vào ví; Số dư phần thưởng cập nhật; Nhận xác nhận giao dịch.
    *   **Mức độ ưu tiên:** Cao

**FR-007 - Mua Token bằng APT**
*   **FR-007 - Mua Token bằng APT:** Hệ thống PHẢI cho phép người dùng mua token bằng APT.
    *   **Mô tả:** Trên trang chi tiết token, nhập số lượng token muốn mua hoặc số APT muốn chi. Hiển thị tỷ giá, trượt giá, phí (nếu có). Yêu cầu xác nhận từ ví.
    *   **Kích hoạt/Sự kiện:** Người dùng chọn mua và xác nhận giao dịch.
    *   **Điều kiện tiên quyết:** Đã kết nối ví Aptos; Đủ APT để thanh toán và phí gas; Token có thanh khoản.
    *   **Điều kiện sau khi hoàn thành:** Token mua được chuyển vào ví; Số dư APT giảm; Giao dịch ghi lại trên blockchain; Nhận thông báo xác nhận.
    *   **Mức độ ưu tiên:** Cao

**FR-008 - Bán Token để nhận APT**
*   **FR-008 - Bán Token để nhận APT:** Hệ thống PHẢI cho phép người dùng bán token để đổi lấy APT.
    *   **Mô tả:** Chọn token muốn bán, nhập số lượng. Hiển thị số APT dự kiến nhận được, trượt giá, phí (nếu có). Yêu cầu approve (nếu cần) và xác nhận giao dịch từ ví.
    *   **Kích hoạt/Sự kiện:** Người dùng chọn bán và xác nhận giao dịch.
    *   **Điều kiện tiên quyết:** Đã kết nối ví Aptos; Đủ token bán và APT cho phí gas; Token đã được approve (nếu cần); Token có thanh khoản.
    *   **Điều kiện sau khi hoàn thành:** Token bán bị trừ khỏi ví; APT nhận được chuyển vào ví; Giao dịch ghi lại trên blockchain; Nhận thông báo xác nhận.
    *   **Mức độ ưu tiên:** Cao

**FR-009 - Hiển thị Danh sách Token/Dự án và Tìm kiếm**
*   **FR-009 - Hiển thị Danh sách Token/Dự án và Tìm kiếm:** Hệ thống PHẢI hiển thị danh sách token/dự án và cung cấp chức năng tìm kiếm.
    *   **Mô tả:** Hiển thị dạng Lưới: thẻ token (hình ảnh, tên, ký hiệu, Market Cap bằng APT (tham khảo USD), thời gian tạo, CA rút gọn, Traders, Owner rút gọn, nút tương tác nhanh). Thanh tìm kiếm ("Search by token name or symbol..."). Sắp xếp ("Newest") và lọc ("All Pairs").
    *   **Kích hoạt/Sự kiện:** Người dùng truy cập trang danh sách token hoặc sử dụng tìm kiếm/bộ lọc.
    *   **Điều kiện tiên quyết:** Có ít nhất một token/dự án niêm yết.
    *   **Điều kiện sau khi hoàn thành:** Danh sách token hiển thị đúng định dạng và tiêu chí; Kết quả tìm kiếm hiển thị.
    *   **Mức độ ưu tiên:** Cao

**FR-010 - Hiển thị Dòng Chảy Giao dịch Gần Đây trên Nền tảng (Marquee/Ticker)**
*   **FR-010 - Hiển thị Dòng Chảy Giao dịch Gần Đây trên Nền tảng (Marquee/Ticker):** Hệ thống PHẢI hiển thị dòng chảy các giao dịch mua/bán token vừa thực hiện thành công trên toàn nền tảng.
    *   **Mô tả:** Dòng chảy hiển thị thông tin tóm tắt: [Tên Token] | [Mua/Bán] | [Giá trị bằng APT/USD] | [Địa chỉ người dùng rút gọn]. Tự động cập nhật.
    *   **Kích hoạt/Sự kiện:** Tự động cập nhật khi có giao dịch mới.
    *   **Điều kiện tiên quyết:** Hệ thống có khả năng theo dõi giao dịch (gần) thời gian thực.
    *   **Điều kiện sau khi hoàn thành:** Dòng chảy giao dịch hiển thị liên tục, chính xác.
    *   **Mức độ ưu tiên:** Cao

**FR-011 - Hiển thị Điều khoản Sử dụng và Chính sách Quyền riêng tư**
*   **FR-011 - Hiển thị Điều khoản Sử dụng và Chính sách Quyền riêng tư:** Hệ thống PHẢI cung cấp quyền truy cập dễ dàng đến các tài liệu này.
    *   **Mô tả:** Liên kết ở vị trí dễ thấy (ví dụ: footer).
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp vào liên kết.
    *   **Điều kiện tiên quyết:** Nội dung tài liệu đã soạn thảo.
    *   **Điều kiện sau khi hoàn thành:** Người dùng xem được nội dung.
    *   **Mức độ ưu tiên:** Cao

**FR-012 - Cấu hình Token Vault khi Tạo Token**
*   **FR-012 - Cấu hình Token Vault khi Tạo Token:** Hệ thống PHẢI cho phép người tạo token, tùy chọn trong quá trình tạo token (FR-002), cấu hình tham số Vault.
    *   **Mô tả:** Nếu chọn "Create Vault Settings", cung cấp: Tỷ lệ Phần trăm Token vào Vault hoặc Số lượng Token vào Vault; Thời gian Mở khóa hoặc Ngày Mở khóa.
    *   **Kích hoạt/Sự kiện:** Người dùng chọn cấu hình Vault khi tạo token và điền thông tin.
    *   **Điều kiện tiên quyết:** Đang trong quá trình tạo token (FR-002).
    *   **Điều kiện sau khi hoàn thành:** Tham số Vault được ghi nhận; Một phần token sẽ được khóa.
    *   **Mức độ ưu tiên:** Cao

**FR-013 - Chỉnh sửa Thông tin (Metadata) Token từ Trang Admin**
*   **FR-013 - Chỉnh sửa Thông tin (Metadata) Token từ Trang Admin:** Hệ thống PHẢI cho phép người tạo token (trên trang Admin) chỉnh sửa metadata.
    *   **Mô tả:** Trên trang Admin, cập nhật: Mô tả Token, Link Website, Farcaster, X, Telegram. Thay đổi được lưu và cập nhật trên trang chi tiết token.
    *   **Kích hoạt/Sự kiện:** Người tạo token thay đổi thông tin và nhấp "Save changes".
    *   **Điều kiện tiên quyết:** Ở trang Admin của token sở hữu (FR-005).
    *   **Điều kiện sau khi hoàn thành:** Metadata token được cập nhật; Nhận xác nhận.
    *   **Mức độ ưu tiên:** Trung bình

**FR-014 - Hiển thị Thông tin Tham khảo về Bot**
*   **FR-014 - Hiển thị Thông tin Tham khảo về Bot:** Hệ thống PHẢI hiển thị khu vực thông tin tĩnh về bot AI (ví dụ: CryptoGenie/@bankrbot) trên trang chi tiết token (FR-003).
    *   **Mô tả:** Khu vực này hiển thị: Tên Bot, Avatar, Mô tả ngắn, Số người theo dõi, Ví dụ lệnh Bot hiểu, Liên kết social/thông tin thêm về Bot. Đây là thông tin tĩnh, không có chat trực tiếp.
    *   **Kích hoạt/Sự kiện:** Người dùng xem trang chi tiết token.
    *   **Điều kiện tiên quyết:** Nội dung thông tin Bot đã chuẩn bị.
    *   **Điều kiện sau khi hoàn thành:** Thông tin Bot hiển thị rõ ràng.
    *   **Mức độ ưu tiên:** Trung bình

**FR-015 - Claim Token từ Vault**
*   **FR-015 - Claim Token từ Vault:** Hệ thống PHẢI cho phép người dùng đủ điều kiện claim token từ Vault sau khi điều kiện khóa thỏa mãn, thông qua trang Admin.
    *   **Mô tả:** Trang Admin, mục "Claim Vaulted Token" hiển thị: Vault Percentage, Vault Amount, Unlock in X days/Unlock Date. Nếu đã mở khóa, nút "Claim Vaulted Token" khả dụng, khởi tạo giao dịch chuyển token về ví người dùng.
    *   **Kích hoạt/Sự kiện:** Người dùng nhấp "Claim Vaulted Token" trên trang Admin.
    *   **Điều kiện tiên quyết:** Ở trang Admin (FR-005); Ví Aptos đã kết nối (FR-001); Token trong Vault đủ điều kiện claim; Đủ APT cho phí gas.
    *   **Điều kiện sau khi hoàn thành:** Token từ Vault chuyển thành công vào ví; Trạng thái Vault cập nhật; Nhận xác nhận giao dịch.
    *   **Mức độ ưu tiên:** Cao

---

## 4. Assumptions & Constraints

*   **Assumptions:**
    *   **A-001 - Ổn định và Năng lực của Mạng Aptos:** Mạng lưới Aptos sẽ hoạt động ổn định, an toàn và có khả năng hỗ trợ khối lượng giao dịch cũng như các loại giao dịch mà nền tảng Clanker yêu cầu.
    *   **A-002 - Người dùng có Ví Aptos Tương thích:** Người dùng tiềm năng của Clanker đã có hoặc có thể dễ dàng thiết lập và sử dụng các ví tiền điện tử tương thích với mạng lưới Aptos.
    *   **A-003 - Người dùng có Tài khoản X/Farcaster:** Người dùng muốn sử dụng các chức năng quản lý token sẽ có tài khoản X (Twitter) hoặc Farcaster hợp lệ để đăng nhập.
    *   **A-004 - Kiến thức Cơ bản của Người dùng:** Người dùng có hiểu biết cơ bản về giao dịch token, khái niệm DAO, và các rủi ro liên quan đến việc sử dụng các ứng dụng phi tập trung và tiền điện tử.
    *   **A-005 - Tính sẵn có và Độ tin cậy của API Xác thực Bên Thứ Ba:** API xác thực của X (Twitter) và Farcaster sẽ hoạt động ổn định và cho phép tích hợp để xác thực người dùng.
    *   **A-006 - Người dùng có APT cho Phí Gas:** Người dùng sẽ có đủ lượng token APT để chi trả phí giao dịch (gas fees) cho các hoạt động trên mạng lưới Aptos.

*   **Constraints:**
    *   **C-001 - Thời hạn Dự án:** Dự án Clanker có mục tiêu hoàn thành và ra mắt các chức năng cốt lõi vào ngày 11 tháng 6 năm 2025.
    *   **C-002 - Phạm vi Chức năng Ban đầu:** Phiên bản đầu tiên của Clanker sẽ tập trung vào các chức năng cốt lõi của một nền tảng DAO: tạo token, mua/bán token (sử dụng APT), kết nối ví Aptos, niêm yết và tìm kiếm dự án/token, quản lý metadata token cơ bản, claim phần thưởng cho người tạo, và chức năng Vault.
    *   **C-003 - Không có AI trong Giai đoạn Đầu:** Trí tuệ nhân tạo (AI) sẽ không được sử dụng để thực hiện giao dịch hoặc triển khai token thay mặt người dùng trong phiên bản này của Clanker.
    *   **C-004 - Quyền Quản lý Token Hạn chế:** Quyền quản lý token của người tạo trong giai đoạn đầu sẽ giới hạn ở việc chỉnh sửa metadata, claim phần thưởng và claim token từ vault.
    *   **C-005 - Phụ thuộc vào Mạng lưới Aptos:** Hoạt động của nền tảng Clanker hoàn toàn phụ thuộc vào hiệu suất, tính bảo mật và các chính sách của mạng lưới Aptos.
    *   **C-006 - Giao diện Người dùng Chính:** Giao diện người dùng chính cho các tương tác sẽ là trang web Clanker.
    *   **C-007 - Đơn vị tiền tệ giao dịch chính:** Đồng APT là đơn vị tiền tệ chính được sử dụng cho các giao dịch mua/bán và tính toán phí trên nền tảng Clanker. Các đơn vị tiền tệ khác (ví dụ: USD, ETH) nếu được hiển thị chỉ mang tính chất tham khảo.

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

*   **R-005 - Lỗ hổng Bảo mật Hợp đồng Thông minh (Smart Contract)**
    *   **Mô tả:** Hợp đồng thông minh có thể chứa lỗ hổng, dẫn đến mất mát tài sản.
    *   **Khả năng xảy ra:** Thấp đến Trung bình
    *   **Tác động:** Rất Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Tuân thủ best practices phát triển an toàn (Move), kiểm thử nội bộ, xem xét audit bởi bên thứ ba, sử dụng thư viện đã kiểm chứng.

*   **R-006 - Vấn đề về Hiệu suất và Khả năng Mở rộng của Nền tảng**
    *   **Mô tả:** Khi người dùng và token tăng, nền tảng có thể gặp vấn đề hiệu suất.
    *   **Khả năng xảy ra:** Trung bình
    *   **Tác động:** Trung bình đến Cao
    *   **Kế hoạch Giảm thiểu / Hành động:** Thiết kế kiến trúc mở rộng, caching, tối ưu hóa truy vấn blockchain/indexer, kiểm thử tải, phụ thuộc vào Aptos.

*   **R-007 - Thay đổi hoặc Ngừng cung cấp API của Bên Thứ Ba**
    *   **Mô tả:** Phụ thuộc API X và Farcaster. Thay đổi/ngừng API có thể ảnh hưởng đăng nhập.
    *   **Khả năng xảy ra:** Thấp đến Trung bình
    *   **Tác động:** Trung bình
    *   **Kế hoạch Giảm thiểu / Hành động:** Thiết kế module xác thực linh hoạt, theo dõi thông báo API, xem xét phương thức xác thực dự phòng.

---

## 6. Screens / User Interface

*   **Màn hình Kết nối Ví (Connect Wallet Modal/Section):**
    *   **Mô tả:** Modal/phần giao diện hiển thị tùy chọn ví Aptos (Petra, Martian, Pontem). Nút "Connect" trên header. Thông báo trạng thái.

*   **Màn hình Đăng nhập (Login Modal/Page):**
    *   **Mô tả:** Giao diện chọn "Đăng nhập bằng X" hoặc "Đăng nhập bằng Farcaster". Chuyển hướng/popup để xác thực.

*   **Trang Chủ / Danh sách Token (Homepage / Token List Page):**
    *   **Mô tả:** Hiển thị danh sách token dạng lưới (thẻ token: logo, tên, ký hiệu, market cap (APT, tham khảo USD), thời gian tạo, CA, traders, owner, nút tương tác nhanh). Thanh tìm kiếm. Sắp xếp ("Newest"), lọc ("All Pairs"). Nút "Create Token Mới" (nếu đã đăng nhập/kết nối ví).

*   **Trang Chi tiết Token (Token Detail Page):**
    *   **Mô tả:** Thông tin cơ bản (logo, tên, ký hiệu, mô tả, market cap (APT, tham khảo USD/ETH), CA, owner, tokenomics, unlock date, followers, nút "Add to wallet", link social). Biểu đồ giá. Khu vực Giao dịch (Mua/Bán bằng APT, nhập số lượng, số dư APT, nút nhanh, tỷ giá, trượt giá, nút Mua/Bán, thông báo kết nối ví). Khu vực Creator Reward (Volume, Reward %, Est Reward, nút Claim Reward). Khu vực Thông tin Bot (tên, mô tả, followers, link, lệnh mẫu). Nút "Admin page".

*   **Trang Tạo Token Mới (Create New Token Page - 2 Bước):**
    *   **Bước 1 (General Information):** Biểu mẫu nhập: Token Image (tải lên), Token Name, Token Symbol, Description, Social links (X, Website, Farcaster, Telegram).
    *   **Bước 2 (Token Parameter):** Biểu mẫu nhập: Total Supply, Starting Market Cap (APT, tham khảo ETH/USD), Creator Buy, Create Vault Settings (tùy chọn: Vault Percentage/Amount, Unlock in X days/Unlock Date). Nút "Create".

*   **Trang Quản trị Token (Admin Page):**
    *   **Mô tả:** Truy cập từ trang chi tiết token (nếu là người tạo). Bao gồm các khu vực:
        *   **Creator Reward:** Thông tin phần thưởng và nút "Claim Reward".
        *   **Claim Vaulted Token:** Thông tin token trong vault và nút "Claim Vaulted Token" (nếu đủ điều kiện).
        *   **Update Token Info:** Biểu mẫu chỉnh sửa metadata (Description, Website, Farcaster, X, Telegram) và nút "Save changes".

*   **Thành phần Dòng Chảy Giao dịch (Live Transactions Ticker/Marquee Component):**
    *   **Mô tả:** Thành phần động (đầu/cuối trang) hiển thị liên tục giao dịch mới nhất (tên token, mua/bán, giá trị bằng APT/USD, địa chỉ người dùng rút gọn).

*   **Chân Trang (Footer):**
    *   **Mô tả:** Liên kết "Điều khoản Sử dụng", "Chính sách Quyền riêng tư", link mạng xã hội của Clanker.

--- 