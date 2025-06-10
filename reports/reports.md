- 29th May 2025:
1. Đổi lại header title clanker -> Aiptos
2. Thêm animation (báo designer) 
3. Detail: Sửa icon bị sai (etherscan -> aptosscan) (Thái)
4. General: Kiểm tra lại kích cỡ phông (Mọi người)
5. Detail: Check lại set pageSize bị đơ màn hình (Thái)

- 30th May 2025:
Yesterday:
- Chưa request animation (chưa done)

Mai:
1. Chưa hoàn thiện validate (not done)
2. Thêm hiệu ứng thông báo đang ở trang create-token vào header (not done)
3. chưa lắp hook lấy balance để thống báo nhập creator buy (not done)
4. lắp nốt các hook upload ảnh, tạo project lúc create token (done)
5. lắp api list project ở home (done)
Thái:
1. Lắp contract slippage (not done)
2. Fix inifite loop do useEffect (done)
3. lắp hook api update social và description (done)
4. tạo endpoint để lấy project theo contract address (1/2) (thiếu trang detail)
Đức:
1. Fix lỗi refresh X (not done)
2. Tạo Hooks ghép contract, api (done)
3. Indexer API: data cho trading detail (bug, chưa done)
4. DB cho nhiều ví: sửa lại createProject cho truyền lên creatorAddress, không phải update Profile wallet address lúc tạo (done)

- 2/6/2025:
Mai:
1. Validate creator đang lỗi (done)
2. Sửa UI trang home (not done)
3. Lắp api cho search input header (done)
Thái:
1. API vào detail (done)
2. Slippage dialog + thêm slippage lúc mua (done)
3. Fix routing slug (1/2)
https://www.aiptos.fun/project/0x1b2115b5006d66f889ccddd3bd19b3ea4c8fd206dec1e94d9bd09b8c25580fee?page=1&pageSize=10
4. Lấy giá để hiển thị marketcap (done)
Đức:
1. Fix lỗi refresh access token X (not done)
2. 
3. Indexer phải xong hôm nay (trading, project)

Mai:
1. Sửa ETH -> APT (done)
2. Check balance trước khi tạo project (done)
3. Giá Marketcap ở project list (done)
4. Upload được gif và svg (done)
5. UI/UX home: project avatar chưa scale (not done)
6. Thêm thanh bonding curve cho project card (not finished)

Thái:
1. ghép Trading history 
2. Ghép bonding curve (done - useProgressBondingCurveToken)
3. Check slippage (max bao nhiêu) (done)
4. Thêm slug routing (theo symbol) (not finished)
5. Chỉnh marketcap APT theo real, ban đầu virtual (not finished)
6. Thay icon url trong khu trading (cho input apt và receive amount)

Đức:
1. Hook Bonding curve (done - useProgressBondingCurveToken)
2. Trả về count traders (done - useGetProjectTotalTraders)
3. Đẩy code refersher token (not done)
4. Trả thông tin volume cho project filter được (chưa done) => cache volume cho project
5. Trả thông tin phần trăm creator, public trade cho detail (done - useProjectVolume) 
6. Đổi icon clanker trên x lại thành icon clanker mới (done)

- 3/6/2025:
Mai:
1. Sửa lại scaling ảnh thẻ project ở home (done)
2. Lắp bonding curve cho thẻ project (done)
3. Hiện thông báo lỗi isufficinent ở create buy trang create token (done)
4. Lắp API cho transaction list tại trang header (1/2)
5. Responsive cho màn create token (not done)
6. Xóa filter volume và pair  (done)
7. Chỉnh lại skeleton ở home (done)

Thái:
1. Hoàn thành nốt trading history (done)
3. Hiện data ở dev trade, public trade (not done)
4. Lắp project social url vào trang detail (done)
5. Hiển thị giá balance của coin đang cầm trong ví (not done)

Đức:
1. Xin social link, privacy policy, term of service, legal document
2. Làm cache lại volume cho project (không ưu tiên)
3. fix refresh token x (done)
4. fix indexer (done)
5. Lắp hook get useAmountIn, getAmountOut tại cho swap_exact_out (done)

- 5/6/2025
Mai:
- Sửa trader home (done)
- Tính lại giá token khi tạo project 
- Show token icon + tên trên slider (done)
- Vẽ trang welcome (done)
- Responsive header

Thái:
- Làm nút switch trạng thái buy/sell (done)
- Sửa logic để phục vụ cho sell (done)
- Sửa focus của input ở admin (done)
- Lấy balance của coin đang cầm trong ví (done)

Đức:
- check lại bonding curve trong màn detail (done)
- Trả về api hiển thị icon + token token cho transaction list (done)
- Làm việc với anh Huy list thông tin cần cho project thống nhất lại vụ số (done)
- Ghép pulic trade (done)
- Sửa lại thông số market cap ở detail và ở home (done)

- 6/6/2025
Mai:
- Responsive cho header (done)
- Ghép lại giá token khi tạo cho project
- Sort và search cho project list
Thái:
- Vẽ lắp logic cho chart (1/2)
- Design sau khi graduated 
  + disabled phần trading (done)
  + gọi link sang phần hyperion dex
Đức:
- làm lại project list sort theo indexer db của anh Huy (done)
- migrate hết api sang indexer db mới (done)
- tạo môi trường prodcution cho fe, s3, be đã có
- xin anh Huy địa chỉ mainnet contract
- xin tiền khách hàng deploy mainnet
- xin link legal document và social urls

- 8/6/25:
Mai:
- Ghép dữ liệu api mới cho home (done)
  + Search input + hiển thị volume (done)
  + Project list + sort volume/created_at
- Check bug chị Hương liên quan đến màn home 
- Ghép lại giá token khi tạo cho project (done)
Thái:
- Lắp api mới cho trang detail chart
- Sửa swap đang bị bug âm số (done)
- Check bug chị Hương liên quan đến màn hình detail
- Check bug chị Hương liên quan đến màn hình admin (done)
- Chỉnh sửa phần detail social link (done)
Đức:
- Báo thông tin claim fee
- Push khách hàng để lấy thông tin quan trọng (done)
- Làm hook tính giá ảo token cho Mai (done)
- Tạo môi trường indexer cho production
- Nhờ anh Huy đẩy contract mainnet
- Xử lý thông số dev buy, public trade (done)

Nice too have:
- Chỉ dẫn chọn ảnh cho token icon url: highlight, màu,...

- 9/6/25: cho đến 10h demo mai
Mai:
- Check bug chị Hương màn home
- Free test trang Home
Thái:
- Check logic chart
- Sửa lại social về ban đầu
- Check bug tại màn detail
- Free test trang detail
Đức:
- Sửa public available -> public trade
- Free test các thông số: bonding curve, volume, marketcap, price...
- Tạo thêm môi trường đề phòng lỗi
- Viết kịch bản demo cho
Chị Hương:
- Tạo thêm token và project lấy thêm data

10/6/25:
Mai:
- Sửa thông số trader (done)
- Làm animation chạy chữ cho project graduate thành công (done)
Thái
- Thêm claim cho admin detail (done)
- Không lấy được balance của token
- Check bug chị Hương ở detail
Đức:
- Fix admin bị kick ra khỏi trang (done)
- Hỏi anh Huy cách lấy thông số claim fee (balance) (done)
- Làm hook claim rewards (done)
- Làm hook lấy số phí được claim (done)
- Lắp hook lấy số phí claim được (done)
- Check bug chị Hương
- Xin schedule ngày lên mainnet của khách

nice to have: