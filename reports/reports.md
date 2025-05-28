### Hướng dẫn sử_dụng tài_liệu

Tài liệu này nhằm mục đích theo dõi tiến độ và quản lý các Yêu cầu Nghiệp vụ (Business Requirements - BR) cho dự án Clanker. Mỗi mục trong bảng dưới đây mô tả một yêu cầu cụ thể, kèm theo mô tả chi tiết, người chịu trách nhiệm chính, trạng thái thực hiện hiện tại và ngày dự kiến hoàn thành. Việc này giúp đảm bảo tất cả các bên liên quan đều nắm rõ phạm vi công việc và tiến độ chung của dự án.

---

### Business Requirements Reports 

| Tên Features / Task | Mô tả | Trạng thái | Người thực hiện | Ngày hoàn thành dự kiến (EDD) |
|---|---|---|---|---|
| BR-001 - Develop DAO platform on Aptos | Build a Decentralized Autonomous Organization (DAO) platform operating on the Aptos network, allowing users to perform core token-related functions. | Todo | Kanz, Team | 11/06/2025 |
| BR-002 - Allow users to create tokens | Provide users with the ability to create (mint) new tokens on the Clanker platform. Users can define basic attributes for their tokens such as image, name, symbol, description, total supply, initial market capitalization, social media links, and configure initial token allocation parameters (e.g., for dev, for public trade, for vault). | Todo | Mai, Kanz | 11/06/2025 |
| BR-003 - Support token trading (Buy/Sell with APT) | Allow users to perform buy and sell transactions for tokens created on the Clanker platform using APT **via Clanker\'s interface, which will call corresponding functions from the smart contracts of the Hyperion Aptos decentralized exchange to process transactions.** Clanker will not develop its own smart contracts for order matching or liquidity management. Transactions must be recorded and verifiable on the blockchain through Hyperion\'s contracts. | Todo | Thai, Kanz | 11/06/2025 |
| BR-004 - Deploy Clanker smart contract | Successfully and stably deploy Clanker\'s core smart contract (for non-DEX functionalities) to the Aptos network to manage the platform\'s main functions. | Todo | Kanz | 11/06/2025 |
| BR-005 - Wallet connection and user management (X/Farcaster Login) | Allow users to connect their Aptos crypto wallets and log in to the platform using their X (Twitter) or Farcaster accounts to perform transactions and manage tokens/features related to their accounts. | Todo | Duc | 11/06/2025 |
| BR-006 - Manage Listed Token Information | Allow token creators to manage and edit the display information (metadata) of the tokens they have created (e.g., description, logo, social media links). | Todo | Thai | 11/06/2025 |
| BR-007 - Ensure basic legal compliance | Prepare and integrate necessary legal documents such as Terms of Use and Privacy Policy for the platform. | Todo | Truong | 11/06/2025 |
| BR-008 - Create a foundation for the AI development phase (Bankr) | Build Clanker with a solid, scalable, and integrable architecture and foundation, serving the development of AI features in the next phase (Bankr project). | Todo | Team | 11/06/2025 |
| BR-009 - Reward Mechanism for Token Creators | Establish a mechanism allowing token creators to receive rewards based on the performance or predefined parameters of the tokens they create (e.g., based on the token\'s trading volume). Token creators must be able to view information about estimated rewards and perform actions to claim rewards to their wallets. | Todo | Kanz, Thai | 11/06/2025 |
| BR-010 - Activate Token Vault Mechanism (Token Locking) | Provide a feature allowing token creators to optionally configure a portion of their tokens into a "vault" during token creation. Tokens in the vault will be locked for a certain period or until a specific condition is met before they can be claimed. | Todo | Kanz, Mai | 11/06/2025 |
| BR-011 - Allow Claiming Tokens from Vault | Eligible users (e.g., token creators or designated wallet addresses) MUST be able to claim unlocked tokens from the vault after the locking conditions are met. | Todo | Kanz, Thai | 11/06/2025 |
| BR-012 - Display Reference Information about Future Bot (Bankr) | Display basic public information related to the AI bot (e.g., @bankrbot from the image) as an introduction to the future Bankr project, including name, short description, interaction metrics (e.g., followers), and the bot\'s social media links. | Todo | Thai, Mai | 11/06/2025 |

---

### Giải thích Trạng thái

-   **Todo**: Chưa bắt đầu.
-   **Doing**: Đang làm. Thành viên đã hiểu về yêu cầu, đã có cách để thực hiện và sẽ đảm bảo hoàn thành đúng kế hoạch nếu không có vấn đề gì phát sinh.
-   **Done**: Đã xong. Code đã được merge vào nhánh chính, đã thực hiện self review và code review. User-story đã được kiểm thử và chạy được trên môi trường dev.
-   **Bugs**: Đang có bugs. Bugs này ảnh hưởng nghiêm trọng tới trải nghiệm người dùng, khiến user-story không thể thực thi được hoặc một vài luồng trong user-story đó không thực hiện được.
-   **Pending**: Đang gặp trục trặc. Có thể do thay đổi yêu cầu hoặc gặp vấn đề kỹ thuật (technical stuck).
-   **Canceled**: Đã bị huỷ bỏ. User-story này đã bị huỷ bỏ theo yêu cầu của khách hàng. 