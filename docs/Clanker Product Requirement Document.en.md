# Product Requirements Document - Clanker

**Date:** [Last Creation/Update Date]

**Version:** 2.0

**Prepared By:** [Your Name/Team]

---

## 1. Introduction / Overview

*   **Project Summary:** The Clanker project aims to create a Decentralized Autonomous Organization (DAO) platform on the Aptos network, where users can create tokens and perform token trading **through Clanker's interaction with the smart contracts of the Hyperion Aptos decentralized exchange (DEX).**
*   **Detailed Overview:** This document describes the requirements for Clanker, a DAO platform developed for the Aptos network. The core goal of the project is to allow users to create custom tokens with essential information such as image, name, symbol, description, total supply, initial market capitalization, social media links, and configure initial token allocation parameters (e.g., for dev, for public trade, for vault). The platform will allow users to buy and sell created tokens using APT (Aptos' native token) **via Clanker's user interface, which will directly interact with the smart contracts of the Hyperion Aptos decentralized exchange to execute orders.** All transactions performed through Hyperion's contracts will have verifiable information on the blockchain. Clanker's core smart contract (for non-DEX functionalities) will be deployed on the Aptos network. The primary user interface will be a website (Clanker site). The Clanker project also serves as an initial platform, laying the groundwork for the development of the next AI phase (Bankr project).

---

## 2. Business Requirements (BR)

*   **BR-001 - Develop DAO platform on Aptos:** Build a Decentralized Autonomous Organization (DAO) platform operating on the Aptos network, allowing users to perform core token-related functions.
*   **BR-002 - Allow users to create tokens:** Provide users with the ability to create (mint) new tokens on the Clanker platform. Users can define basic attributes for their tokens such as image, name, symbol, description, total supply, initial market capitalization, social media links, and configure initial token allocation parameters (e.g., for dev, for public trade, for vault).
*   **BR-003 - Support token trading (Buy/Sell with APT):** Allow users to perform buy and sell transactions for tokens created on the Clanker platform using APT **via Clanker's interface, which will call corresponding functions from the smart contracts of the Hyperion Aptos decentralized exchange to process transactions.** Clanker will not develop its own smart contracts for order matching or liquidity management. Transactions must be recorded and verifiable on the blockchain through Hyperion's contracts.
*   **BR-004 - Deploy Clanker smart contract:** Successfully and stably deploy Clanker's core smart contract (for non-DEX functionalities) to the Aptos network to manage the platform's main functions.
*   **BR-005 - Wallet connection and user management (X/Farcaster Login):** Allow users to connect their Aptos crypto wallets and log in to the platform using their X (Twitter) or Farcaster accounts to perform transactions and manage tokens/features related to their accounts.
*   **BR-006 - Manage Listed Token Information:** Allow token creators to manage and edit the display information (metadata) of the tokens they have created (e.g., description, logo, social media links).
*   **BR-007 - Ensure basic legal compliance:** Prepare and integrate necessary legal documents such as Terms of Use and Privacy Policy for the platform.
*   **BR-008 - Create a foundation for the AI development phase (Bankr):** Build Clanker with a solid, scalable, and integrable architecture and foundation, serving the development of AI features in the next phase (Bankr project).
*   **BR-009 - Reward Mechanism for Token Creators:** Establish a mechanism allowing token creators to receive rewards based on the performance or predefined parameters of the tokens they create (e.g., based on the token's trading volume). Token creators must be able to view information about estimated rewards and perform actions to claim rewards to their wallets.
*   **BR-010 - Activate Token Vault Mechanism (Token Locking):** Provide a feature allowing token creators to optionally configure a portion of their tokens into a "vault" during token creation. Tokens in the vault will be locked for a certain period or until a specific condition is met before they can be claimed.
*   **BR-011 - Allow Claiming Tokens from Vault:** Eligible users (e.g., token creators or designated wallet addresses) MUST be able to claim unlocked tokens from the vault after the locking conditions are met.
*   **BR-012 - Display Reference Information about Future Bot (Bankr):** Display basic public information related to the AI bot (e.g., @bankrbot from the image) as an introduction to the future Bankr project, including name, short description, interaction metrics (e.g., followers), and the bot's social media links.

---

## 3. Functional Requirements (FR)

**FR-001 - Connect Aptos Wallet**
*   **FR-001 - Connect Aptos Wallet:** The system MUST allow users to connect their compatible Aptos wallets.
    *   **Description:** Users need to be able to connect their existing Aptos wallets to the Clanker platform. A "Connect" button (or similar, possibly displaying the wallet address after connection) will be prominently placed in the website header. Clicking it will display a modal or dropdown list of supported wallet options (e.g., Petra, Martian, Pontem) for users to choose and approve the connection. The connection process must be secure.
    *   **Trigger/Event:** User clicks the "Connect" button in the header or attempts an action requiring a connected wallet.
    *   **Prerequisites:** User has an Aptos-compatible wallet installed/available.
    *   **Postconditions:** User's wallet is securely connected to the platform; user's wallet address is displayed in the header; user can proceed with actions requiring a wallet. OR Wallet connection fails, and the user is notified.
    *   **Priority:** High

**FR-002 - Create New Token**
*   **FR-002 - Create New Token:** The system MUST allow users (logged in and wallet connected) to create new tokens on the Aptos network through a multi-step process on the Clanker platform.
    *   **Description:** The token creation process will be divided into clear steps ("Set General Information", "Set Token Parameter").
        *   **Step 1: General Information:** Upload Token Image, Token Name, Token Symbol, Token Description, Social Media Links [Optional] (X, Website, Farcaster, Telegram).
        *   **Step 2: Token Parameter:** Total Supply, Starting Market Cap [Optional] (value in APT, reference ETH/USD), Creator Buy [Optional], Configure Token Vault [Optional] (FR-012).
    *   **Trigger/Event:** User is logged in, wallet connected, navigates to "Create", completes the steps, and clicks the "Create" button.
    *   **Prerequisites:** Logged in (FR-004), Aptos Wallet connected (FR-001), Sufficient APT for gas fees.
    *   **Postconditions:** New token contract is deployed on Aptos; Token is associated with the creator; Token is listed on Clanker; User receives success confirmation or error.
    *   **Priority:** High

**FR-003 - Display Token Detail Information**
*   **FR-003 - Display Token Detail Information:** The system MUST display detailed information and interactive functions for each token.
    *   **Description:** Includes: Basic Token Information (image, name, symbol, description, market cap in APT (USD/ETH reference), CA, Owner, Tokenomics, Unlock Date, followers, "Add to wallet" button, social links); Token Price Chart **(price and liquidity data queried from Hyperion Aptos smart contracts or Hyperion-provided API)**; **Trading Area Interacting with Hyperion Contract** (including fields for users to input the amount of tokens to buy/sell or the amount of APT to spend/receive; display exchange rate information, estimated slippage (if calculable beforehand or obtained from Hyperion), and fees related to trading on Hyperion; 'Buy [Token Name]' and 'Sell [Token Name]' buttons will initiate transactions by calling corresponding functions on Hyperion Aptos smart contracts; display user's APT balance and relevant token balance; require wallet connection and transaction confirmation from the user's wallet for each order); Creator Reward Area (if creator and logged in: Volume, Reward %, Est Reward, "Claim Reward" button); Bot Information Area (FR-014); Link to Token Admin Page (if creator and logged in).
    *   **Trigger/Event:** User clicks on a token from the list (FR-009) or accesses directly.
    *   **Prerequisites:** Token exists, metadata available.
    *   **Postconditions:** User can view comprehensive information and **can execute buy/sell token transactions directly on the Clanker interface through interaction with Hyperion Aptos smart contracts.**
    *   **Priority:** High

**FR-004 - User Login (X/Twitter)**
*   **FR-004 - User Login (X/Twitter):** The system MUST allow users to log in using their X (Twitter) accounts.
    *   **Description:** Integrate X authentication API. After login, link the session with management activities.
    *   **Trigger/Event:** User clicks "Login" and selects "Login with X".
    *   **Prerequisites:** User has an X account; Clanker has configured integration.
    *   **Postconditions:** User is authenticated, logged in; System creates a working session. OR Login fails, user receives an error message.
    *   **Priority:** High

**FR-005 - Access Token Admin Page**
*   **FR-005 - Access Token Admin Page:** The system MUST allow token creators (logged in) to access a private admin page for their tokens.
    *   **Description:** From the token detail page, if the user is the creator and logged in, clicking the "Admin page" button leads to the management page (edit metadata, claim reward, claim vaulted token).
    *   **Trigger/Event:** Token creator, logged in, on the token detail page, clicks "Admin page".
    *   **Prerequisites:** Logged in (FR-004); Is the creator/owner of the token being viewed.
    *   **Postconditions:** Redirected to the token's admin page.
    *   **Priority:** High

**FR-006 - Claim Token Rewards from Admin Page**
*   **FR-006 - Claim Token Rewards from Admin Page:** The system MUST allow token creators (on the Admin page, wallet connected) to view and claim rewards.
    *   **Description:** Admin Page, "Creator Reward" area displays: Creator Wallet, Trading Volume, Reward Percentage, Est Reward (in APT, USD reference). "Claim Reward" button initiates a transaction to transfer reward tokens to the creator's wallet.
    *   **Trigger/Event:** Token creator clicks "Claim Reward" on the Admin page.
    *   **Prerequisites:** On Admin page (FR-005); Aptos Wallet connected (FR-001); Available rewards; Sufficient APT for gas fees.
    *   **Postconditions:** Rewards successfully transferred to wallet; Reward balance updated; Transaction confirmation received.
    *   **Priority:** High

**FR-007 - Buy Token with APT via Hyperion Contract Interaction**
*   **FR-007 - Buy Token with APT via Hyperion Contract Interaction:** The system MUST allow users to buy tokens with APT.
    *   **Description:** On the token detail page, in the Trading Area, users MUST be able to input the amount of tokens they want to buy or the amount of APT they want to spend. The system MUST display the expected exchange rate, information about slippage (if estimable from the Hyperion contract), and Hyperion's transaction fees. When the user clicks the 'Buy' button, the system MUST initiate a transaction with the Hyperion Aptos smart contract, requiring the user to confirm this transaction from their connected Aptos wallet.
    *   **Trigger/Event:** User selects to buy and confirms the transaction on the Clanker interface, interacting with the Hyperion contract.
    *   **Prerequisites:** Aptos Wallet connected; Sufficient APT for payment and gas fees; Token has liquidity **and is listed on the Hyperion Aptos contract.**
    *   **Postconditions:** Purchased tokens (according to Hyperion contract logic) are transferred to the user's wallet; User's APT balance decreases accordingly; Transaction is recorded on the blockchain via Hyperion's contract; User receives a success or error confirmation message from Clanker (reflecting the transaction status on the Hyperion contract).
    *   **Priority:** High

**FR-008 - Sell Token for APT via Hyperion Contract Interaction**
*   **FR-008 - Sell Token for APT via Hyperion Contract Interaction:** The system MUST allow users to sell tokens for APT.
    *   **Description:** On the token detail page, in the Trading Area, users MUST be able to select the token they want to sell and input the amount. The system MUST display the expected amount of APT to be received, information about slippage (if estimable from the Hyperion contract), and Hyperion's transaction fees. Before selling, if required by Hyperion's contract (per token standard), the system MUST assist the user in performing an 'approve' action for Hyperion's contract to withdraw tokens from the user's wallet. When the user clicks the 'Sell' button, the system MUST initiate a transaction with the Hyperion Aptos smart contract, requiring the user to confirm this transaction from their connected Aptos wallet.
    *   **Trigger/Event:** User selects to sell and confirms the transaction on the Clanker interface, interacting with the Hyperion contract.
    *   **Prerequisites:** Aptos Wallet connected; Sufficient tokens to sell and APT for gas fees; Token has been 'approved' for the Hyperion contract (if necessary); Token has liquidity **and is listed on the Hyperion Aptos contract; Token has been 'approved' for the Hyperion contract (if necessary).**
    *   **Postconditions:** The amount of tokens sold is debited from the user's wallet; User's APT balance increases accordingly (according to Hyperion contract logic); Transaction is recorded on the blockchain via Hyperion's contract; User receives a success or error confirmation message from Clanker (reflecting the transaction status on the Hyperion contract).
    *   **Priority:** High

**FR-009 - Display Token/Project List and Search**
*   **FR-009 - Display Token/Project List and Search:** The system MUST display a list of tokens/projects and provide search functionality.
    *   **Description:** Grid display: token card (image, name, symbol, Market Cap in APT (USD reference), creation time, shortened CA, Traders, shortened Owner, quick interaction button). Search bar ("Search by token name or symbol..."). Sorting ("Newest") and filtering ("All Pairs").
    *   **Trigger/Event:** User accesses the token list page or uses search/filters.
    *   **Prerequisites:** At least one token/project is listed.
    *   **Postconditions:** Token list displays in the correct format and criteria; Search results are displayed.
    *   **Priority:** High

**FR-010 - Display Recent Platform Transaction Flow (Marquee/Ticker)**
*   **FR-010 - Display Recent Platform Transaction Flow (Marquee/Ticker):** The system MUST display a flow of recently successful buy/sell token transactions **for tokens created on Clanker executed via Hyperion contracts** (e.g., token name, Buy/Sell transaction type, value in APT/USD, shortened user address if obtainable from contract events). **Clearly note that these transactions are executed via Hyperion's contracts.**
    *   **Description:** The flow displays summary information: [Token Name] | [Buy/Sell via Hyperion Contract] | [Value in APT/USD] | [Shortened user address (if obtainable)]. Updates automatically.
    *   **Trigger/Event:** Automatically updates when new transactions related to Clanker tokens occur on the Hyperion contract.
    *   **Prerequisites:** **Clanker can listen to events from Hyperion Aptos smart contracts or query transaction data efficiently to update the flow in (near) real-time.**
    *   **Postconditions:** The transaction flow (if implemented) displays continuously and accurately **Clanker token transactions executed via the Hyperion contract.**
    *   **Priority:** High

**FR-011 - Display Terms of Use and Privacy Policy**
*   **FR-011 - Display Terms of Use and Privacy Policy:** The system MUST provide easy access to these documents.
    *   **Description:** Links in a visible location (e.g., footer).
    *   **Trigger/Event:** User clicks the link.
    *   **Prerequisites:** Document content has been drafted.
    *   **Postconditions:** User can view the content.
    *   **Priority:** High

**FR-012 - Configure Token Vault during Token Creation**
*   **FR-012 - Configure Token Vault during Token Creation:** The system MUST allow token creators, optionally during token creation (FR-002), to configure Vault parameters.
    *   **Description:** If "Create Vault Settings" is selected, provide: Percentage of Tokens into Vault or Amount of Tokens into Vault; Unlock Time or Unlock Date.
    *   **Trigger/Event:** User selects Vault configuration during token creation and fills in the information.
    *   **Prerequisites:** Currently in the token creation process (FR-002).
    *   **Postconditions:** Vault parameters are recorded; A portion of tokens will be locked.
    *   **Priority:** High

**FR-013 - Edit Token Information (Metadata) from Admin Page**
*   **FR-013 - Edit Token Information (Metadata) from Admin Page:** The system MUST allow token creators (on the Admin page) to edit metadata.
    *   **Description:** On the Admin page, update: Token Description, Website Link, Farcaster, X, Telegram. Changes are saved and updated on the token detail page.
    *   **Trigger/Event:** Token creator changes information and clicks "Save changes".
    *   **Prerequisites:** On the Admin page of the owned token (FR-005).
    *   **Postconditions:** Token metadata is updated; Confirmation received.
    *   **Priority:** Medium

**FR-014 - Display Bot Reference Information**
*   **FR-014 - Display Bot Reference Information:** The system MUST display a static information area about the AI bot (e.g., CryptoGenie/@bankrbot) on the token detail page (FR-003).
    *   **Description:** This area displays: Bot Name, Avatar, Short Description, Follower Count, Example Bot Commands, Social/additional Bot info links. This is static information, no live chat.
    *   **Trigger/Event:** User views the token detail page.
    *   **Prerequisites:** Bot information content prepared.
    *   **Postconditions:** Bot information is clearly displayed.
    *   **Priority:** Medium

**FR-015 - Claim Tokens from Vault**
*   **FR-015 - Claim Tokens from Vault:** The system MUST allow eligible users to claim tokens from the Vault after locking conditions are met, via the Admin page.
    *   **Description:** Admin Page, "Claim Vaulted Token" section displays: Vault Percentage, Vault Amount, Unlock in X days/Unlock Date. If unlocked, "Claim Vaulted Token" button is available, initiating a transaction to transfer tokens to the user's wallet.
    *   **Trigger/Event:** User clicks "Claim Vaulted Token" on the Admin page.
    *   **Prerequisites:** On Admin page (FR-005); Aptos Wallet connected (FR-001); Tokens in Vault eligible for claim; Sufficient APT for gas fees.
    *   **Postconditions:** Tokens from Vault successfully transferred to wallet; Vault status updated; Transaction confirmation received.
    *   **Priority:** High

---

## 4. Assumptions & Constraints

*   **Assumptions:**
    *   **A-001 - Stability and Capability of the Aptos Network:** The Aptos network will operate stably, securely, and be capable of supporting the transaction volume and types required by the Clanker platform.
    *   **A-002 - Users Have Compatible Aptos Wallets:** Potential Clanker users already have or can easily set up and use Aptos network-compatible crypto wallets.
    *   **A-003 - Users Have X/Farcaster Accounts:** Users wishing to use token management functions will have valid X (Twitter) or Farcaster accounts for login.
    *   **A-004 - Basic User Knowledge:** Users have a basic understanding of token trading, DAO concepts, and the risks associated with using decentralized applications and cryptocurrencies.
    *   **A-005 - Availability and Reliability of Third-Party Authentication APIs:** X (Twitter) and Farcaster authentication APIs will be stable and allow integration for user authentication.
    *   **A-006 - Users Have APT for Gas Fees:** Users will have sufficient APT tokens to cover transaction fees (gas fees) for activities on the Aptos network.
    *   **A-007 - Stability, Security, and Interactability of Hyperion Smart Contracts:** Hyperion Aptos smart contracts will be stable, secure, well-documented (including ABI and contract addresses), and allow Clanker (both frontend and backend if needed) to interact effectively to perform trading functions. Hyperion will maintain backward compatibility or provide a clear upgrade path for contracts Clanker depends on.

*   **Constraints:**
    *   **C-001 - Project Deadline:** The Clanker project aims to complete and launch core functionalities by June 11, 2025.
    *   **C-002 - Initial Functional Scope:** The first version of Clanker will focus on the core functions of a DAO platform: token creation, **executing token buy/sell transactions (using APT) via the Clanker interface interacting with Hyperion Aptos smart contracts**, Aptos wallet connection, project/token listing and search, basic token metadata management, reward claiming for creators, and Vault functionality.
    *   **C-003 - No AI in Initial Phase:** Artificial intelligence (AI) will not be used to execute trades or deploy tokens on behalf of users in this version of Clanker.
    *   **C-004 - Limited Token Management Rights:** Token creators' management rights in the initial phase will be limited to editing metadata, claiming rewards, and claiming tokens from the vault.
    *   **C-005 - Dependency on Aptos Network and Hyperion Contracts:** The Clanker platform's operation depends on the performance, security, and policies of the Aptos network, **as well as the stability, security, performance, transaction fees, and terms of use of the Hyperion Aptos smart contracts with which Clanker will interact.**
    *   **C-006 - Primary User Interface:** The primary user interface for interactions will be the Clanker website.
    *   **C-007 - Main Transaction Currency:** APT is the main currency used for buy/sell transactions (via Hyperion contracts) and fee calculations on the Clanker platform. Other currencies (e.g., USD, ETH) if displayed are for reference only.

---

## 5. Risks

*   **R-001 - Misunderstanding Requirements due to Limited Client Communication**
    *   **Description:** Lack of daily direct communication with the client may lead to misinformation and misunderstanding of requirements.
    *   **Likelihood:** Medium
    *   **Impact:** High
    *   **Mitigation Plan / Action:** Detailed daily reports, proactive requirement suggestions, video progress reports, maintain updated PRD.

*   **R-002 - Impact of Epidemics on Productivity**
    *   **Description:** Disease outbreaks can affect productivity and timelines.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Medium to High
    *   **Mitigation Plan / Action:** Preventive measures, health checks, remote work guidelines.

*   **R-003 - Large UX Workload**
    *   **Description:** A large volume of UX deliverables in a short time can create pressure.
    *   **Likelihood:** Medium
    *   **Impact:** Medium
    *   **Mitigation Plan / Action:** Use sample DAO project, allocate dedicated resources, use UI component libraries.

*   **R-004 - Scope Creep / Unclear Definition of Done (DoD)**
    *   **Description:** Requirements may expand, or DoD may be unclear.
    *   **Likelihood:** Medium
    *   **Impact:** High
    *   **Mitigation Plan / Action:** Clearly define DoD, break down tasks, deliver incrementally, strict change management process, PRD review.

*   **R-005 - Security Vulnerabilities in Clanker's Smart Contracts**
    *   **Description:** **Clanker's own smart contracts (e.g., for token creation, vault, rewards management)** may contain vulnerabilities, leading to asset loss or incorrect operation.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Very High
    *   **Mitigation Plan / Action:** Adhere to secure development best practices (Move), internal testing, consider third-party audits, use verified libraries.

*   **R-006 - Performance and Scalability Issues of Clanker Platform and Hyperion Interaction**
    *   **Description:** As users and tokens increase, the Clanker platform may experience performance issues **in querying information from Hyperion contracts, displaying data, and managing transaction states. Core transaction execution performance will entirely depend on Hyperion Aptos smart contracts and the Aptos network.**
    *   **Likelihood:** Medium
    *   **Impact:** Medium to High
    *   **Mitigation Plan / Action:** Design scalable architecture for Clanker components, effective caching, optimize blockchain/indexer queries and calls to Hyperion contracts, load testing.

*   **R-007 - Changes or Discontinuation of Third-Party APIs (X, Farcaster)**
    *   **Description:** Depends on X and Farcaster APIs for login. API changes/discontinuation can affect login.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Medium
    *   **Mitigation Plan / Action:** Design flexible authentication module, monitor API announcements, consider backup authentication methods.

*   **R-008 - Dependency on Hyperion Aptos Smart Contracts and Contract Interaction Risks**
    *   **Description:** Clanker will depend on Hyperion Aptos smart contracts for trading functionality. Potential bugs in Hyperion's contracts, Hyperion upgrading contracts causing breaking changes, unannounced changes in contract logic, unfavorable transaction fees, or unforeseen security issues related to those contracts could severely impact Clanker's trading functionality and cause user losses. Direct interaction with external contracts requires thorough security reviews, and correctness checks of passed parameters and handling of return values.
    *   **Likelihood:** Medium to High
    *   **Impact:** High to Very High
    *   **Mitigation Plan / Action:** Select specific Hyperion contracts after thorough review (if possible). Perform rigorous interaction testing with Hyperion contracts on a testnet. Build an abstraction layer in Clanker to interact with Hyperion contracts, helping to manage ABIs, contract addresses, and function call logic centrally, making it easier to adapt to changes or fix bugs. Closely monitor announcements, community channels, and documentation from Hyperion regarding contract changes. Clearly inform users that transactions are processed by Hyperion's contracts and the associated risks.

---

## 6. Screens / User Interface

*   **Connect Wallet Modal/Section:**
    *   **Description:** Modal/interface section displaying Aptos wallet options (Petra, Martian, Pontem). "Connect" button in the header. Status messages.

*   **Login Modal/Page:**
    *   **Description:** Interface to select "Login with X" or "Login with Farcaster". Redirect/popup for authentication.

*   **Homepage / Token List Page:**
    *   **Description:** Grid display of tokens (token card: logo, name, symbol, market cap (APT, USD reference - data from Hyperion contract if available), creation time, CA, traders (metrics from Hyperion contract if available), owner, quick interaction button). Search bar. Sorting ("Newest"), filtering ("All Pairs"). "Create New Token" button (if logged in/wallet connected).

*   **Token Detail Page:**
    *   **Description:** Basic information (logo, name, symbol, description, market cap (APT, USD/ETH reference - data from Hyperion contract or Hyperion API), CA, owner, tokenomics, unlock date, followers, "Add to wallet" button, social links). Price chart **(data from Hyperion contract or Hyperion API)**. **Trading Area Interacting with Hyperion Contract:**
        *   Display current APT and token balances of the user.
        *   **Buy Tab:** Input field for the amount of tokens to buy OR amount of APT to spend. Display estimated amount to receive, current exchange rate from Hyperion contract, projected Hyperion transaction fees, and slippage warning (if applicable). "Buy [Token Name]" button.
        *   **Sell Tab:** Input field for the amount of tokens to sell. Display estimated APT to receive, current exchange rate from Hyperion contract, projected Hyperion transaction fees, and slippage warning (if applicable). "Approve [Token Name]" button (if needed and not yet approved). "Sell [Token Name]" button.
        *   Transaction status messages (processing, success, failure) based on results from the Hyperion contract.
        *   Request wallet connection if not connected when the user attempts to interact with action buttons.
        Creator Reward Area (Volume, Reward %, Est Reward, "Claim Reward" button). Bot Information Area (name, description, followers, links, sample commands). "Admin page" button.

*   **Create New Token Page (2 Steps):**
    *   **Step 1 (General Information):** Input form: Token Image (upload), Token Name, Token Symbol, Description, Social links (X, Website, Farcaster, Telegram).
    *   **Step 2 (Token Parameter):** Input form: Total Supply, Starting Market Cap (APT, reference ETH/USD), Creator Buy, Create Vault Settings (optional: Vault Percentage/Amount, Unlock in X days/Unlock Date). "Create" button.

*   **Token Admin Page:**
    *   **Description:** Accessed from the token detail page (if creator). Includes sections:
        *   **Creator Reward:** Reward information and "Claim Reward" button.
        *   **Claim Vaulted Token:** Information about vaulted tokens and "Claim Vaulted Token" button (if eligible).
        *   **Update Token Info:** Form to edit metadata (Description, Website, Farcaster, X, Telegram) and "Save changes" button.

*   **Live Transactions Ticker/Marquee Component:**
    *   **Description:** Dynamic component (top/bottom of page) continuously displaying the latest transactions **for tokens created on Clanker executed via Hyperion contracts** (e.g., token name, Buy/Sell transaction type, value in APT/USD, shortened user address if obtainable from contract events). **Clearly note that these transactions are executed via Hyperion's contracts.**

*   **Footer:**
    *   **Description:** Links to "Terms of Use", "Privacy Policy", Clanker's social media links.

--- 