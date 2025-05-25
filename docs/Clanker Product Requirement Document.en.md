# Product Requirements Document - Clanker

**Date:** [Date of Creation/Last Update]

**Version:** 1.0

**Prepared By:** [Your Name/Team Name]

---

## 1. Introduction / Overview

*   **Project Summary:** The Clanker project aims to create a Decentralized Autonomous Organization (DAO) platform on the Aptos network, where users can create, buy, and sell tokens.
*   **Detailed Overview:** This document describes the requirements for Clanker, a DAO platform developed for the Aptos network. The core objective of the project is to enable users to create custom tokens with essential information such as image, name, symbol, description, total supply, initial market capitalization, social media links, and configure initial token allocation parameters (e.g., for dev, for public trade, for vault). The platform will allow users to buy and sell created tokens using APT (Aptos' native token), with all transactions being verifiable. Clanker's smart contract will be deployed on the Aptos network. The main user interface will be a website (Clanker site). The Clanker project also serves as an initial foundation, paving the way for the development of the subsequent AI phase (Bankr project).

---

## 2. Business Requirements (BR)

*   **BR-001 - Develop a DAO platform on Aptos:** Build a Decentralized Autonomous Organization (DAO) platform on the Aptos network, allowing users to perform core token-related functions.
*   **BR-002 - Allow users to create tokens:** Provide users the ability to mint new tokens on the Clanker platform. Users can define basic attributes for their tokens such as image, name, symbol, description, total supply, initial market capitalization, social media links, and configure initial token allocation parameters (e.g., for dev, for public trade, for vault).
*   **BR-003 - Support token trading (Buy/Sell with APT):** Enable users to buy and sell tokens created on the platform using APT. Transactions must be recorded and verifiable on the blockchain.
*   **BR-004 - Deploy Clanker smart contract:** Successfully and stably deploy Clanker's core smart contract onto the Aptos network to manage the platform's main functionalities.
*   **BR-005 - Wallet connection and user management (X/Farcaster Login):** Allow users to connect their Aptos crypto wallets and log into the platform using their X (Twitter) or Farcaster accounts to perform transactions and manage their account-related tokens/features.
*   **BR-006 - Manage Listed Token Information:** Allow token creators to manage and edit the display information (metadata) of the tokens they have created (e.g., description, logo, social media links).
*   **BR-007 - Ensure basic legal compliance:** Prepare and integrate necessary legal documents such as Terms of Use and Privacy Policy for the platform.
*   **BR-008 - Create a foundation for the AI development phase (Bankr):** Build Clanker with a solid architecture and foundation, capable of scaling and integration, to serve the development of AI features in the next phase (Bankr project).
*   **BR-009 - Reward Mechanism for Token Creators:** Establish a mechanism allowing token creators to receive rewards based on the performance or predefined parameters of their created tokens (e.g., based on the token's trading volume). Token creators must be able to view information about estimated rewards and claim rewards to their wallets.
*   **BR-010 - Enable Token Vault Mechanism (Token Locking):** Provide functionality for token creators to optionally configure a portion of their tokens into a "vault" during token creation. Tokens in the vault will be locked for a certain period or until a specific condition is met before they can be claimed.
*   **BR-011 - Allow Claiming Tokens from Vault:** Eligible users (e.g., token creators or designated wallet addresses) MUST be able to claim unlocked tokens from the vault after the locking conditions are met.
*   **BR-012 - Display Reference Information about Future Bot (Bankr):** Display basic public information related to the AI bot (e.g., @bankrbot from images) as an introduction to the future Bankr project, including name, short description, engagement metrics (e.g., followers), and bot's social media links.

---

## 3. Functional Requirements (FR)

**FR-001 - Connect Aptos Wallet**
*   **FR-001 - Connect Aptos Wallet:** The system MUST allow users to connect their compatible Aptos wallets.
    *   **Description:** Users need to be able to connect their existing Aptos wallets to the Clanker platform. A "Connect" button (or similar, possibly displaying the wallet address after connection) will be prominently placed on the website header. Clicking it will display a modal or dropdown list of supported wallets (e.g., Petra, Martian, Pontem) for users to select and approve the connection. The connection process must be secure.
    *   **Trigger/Event:** User clicks the "Connect" button on the header or attempts an action requiring a connected wallet.
    *   **Pre-conditions:** User has an installed/available Aptos-compatible wallet.
    *   **Post-conditions:** User's wallet is securely connected to the platform; user's wallet address is displayed on the header; user can proceed with wallet-required actions. OR Wallet connection fails, and the user is notified.
    *   **Priority:** High

**FR-002 - Create New Token**
*   **FR-002 - Create New Token:** The system MUST allow users (logged in and wallet connected) to create new tokens on the Aptos network through a multi-step process on the Clanker platform.
    *   **Description:** The token creation process will be divided into clear steps ("Set General Information", "Set Token Parameter").
        *   **Step 1: General Information:** Upload Token Image, Token Name, Token Symbol, Token Description, Social Media Links [Optional] (X, Website, Farcaster, Telegram).
        *   **Step 2: Token Parameters:** Total Supply, Initial Market Capitalization [Optional] (value in APT, ETH/USD for reference), Creator Buy [Optional], Configure Token Vault [Optional] (FR-012).
    *   **Trigger/Event:** User is logged in, wallet connected, navigates to "Create", completes the steps, and clicks "Create".
    *   **Pre-conditions:** Logged in (FR-004), Aptos Wallet connected (FR-001), Sufficient APT for gas fees.
    *   **Post-conditions:** New token contract deployed on Aptos; Token linked to creator; Token listed on Clanker; User receives success or error confirmation.
    *   **Priority:** High

**FR-003 - Display Token Detail Information**
*   **FR-003 - Display Token Detail Information:** The system MUST display detailed information and interactive functions for each token.
    *   **Description:** Includes: Basic Token Info (image, name, symbol, description, market cap in APT (USD/ETH ref.), CA, Owner, Tokenomics, Unlock Date, followers, "Add to wallet" button, social links); Token Price Chart; Trading Area (Buy/Sell with APT, enter amount, APT balance, quick buttons, exchange rate, slippage, Buy/Sell button, connect wallet prompt); Creator Reward Area (if creator & logged in: Volume, Reward %, Est Reward, "Claim Reward" button); Bot Information Area (FR-014); Link to Token Admin Page (if creator & logged in).
    *   **Trigger/Event:** User clicks a token from the list (FR-009) or accesses directly.
    *   **Pre-conditions:** Token exists, metadata available.
    *   **Post-conditions:** User can view comprehensive information and interact (buy, sell).
    *   **Priority:** High

**FR-004 - User Login (X/Twitter, Farcaster)**
*   **FR-004 - User Login (X/Twitter, Farcaster):** The system MUST allow users to log in using their X (Twitter) or Farcaster accounts.
    *   **Description:** Integrate X and Farcaster authentication APIs. After login, link session with management activities.
    *   **Trigger/Event:** User clicks "Login" and selects "Login with X" or "Login with Farcaster".
    *   **Pre-conditions:** User has a valid X/Farcaster account; Clanker is configured for integration.
    *   **Post-conditions:** User is authenticated, logged in; System creates a session. OR Login fails, user receives an error message.
    *   **Priority:** High

**FR-005 - Access Token Admin Page**
*   **FR-005 - Access Token Admin Page:** The system MUST allow token creators (logged in) to access a private admin page for their token.
    *   **Description:** From the token detail page, if the user is the creator and logged in, clicking the "Admin page" button navigates to the management page (edit metadata, claim rewards, claim vaulted tokens).
    *   **Trigger/Event:** Logged-in token creator, on their token detail page, clicks "Admin page".
    *   **Pre-conditions:** Logged in (FR-004); Is the creator/owner of the viewed token.
    *   **Post-conditions:** Redirected to the token's admin page.
    *   **Priority:** High

**FR-006 - Claim Token Rewards from Admin Page**
*   **FR-006 - Claim Token Rewards from Admin Page:** The system MUST allow token creators (on Admin page, wallet connected) to view and claim rewards.
    *   **Description:** Admin page, "Creator Reward" area displays: Creator Wallet, Trading Volume, Reward Percentage, Est Reward (in APT, USD ref.). "Claim Reward" button initiates a transaction to transfer reward tokens to the creator's wallet.
    *   **Trigger/Event:** Token creator clicks "Claim Reward" on Admin page.
    *   **Pre-conditions:** On Admin page (FR-005); Aptos Wallet connected (FR-001); Rewards available; Sufficient APT for gas.
    *   **Post-conditions:** Rewards successfully transferred to wallet; Reward balance updated; Transaction confirmation received.
    *   **Priority:** High

**FR-007 - Buy Tokens with APT**
*   **FR-007 - Buy Tokens with APT:** The system MUST allow users to buy tokens with APT.
    *   **Description:** On token detail page, enter the amount of tokens to buy or APT to spend. Display exchange rate, slippage, fees (if any). Requires wallet confirmation.
    *   **Trigger/Event:** User selects to buy and confirms the transaction.
    *   **Pre-conditions:** Aptos wallet connected; Sufficient APT for payment and gas fees; Token has liquidity.
    *   **Post-conditions:** Purchased tokens transferred to wallet; APT balance decreased; Transaction recorded on blockchain; Confirmation message received.
    *   **Priority:** High

**FR-008 - Sell Tokens for APT**
*   **FR-008 - Sell Tokens for APT:** The system MUST allow users to sell tokens for APT.
    *   **Description:** Select token to sell, enter amount. Display expected APT to receive, slippage, fees (if any). Requires approval (if needed) and transaction confirmation from wallet.
    *   **Trigger/Event:** User selects to sell and confirms the transaction.
    *   **Pre-conditions:** Aptos wallet connected; Sufficient tokens to sell and APT for gas fees; Token approved (if needed); Token has liquidity.
    *   **Post-conditions:** Sold tokens deducted from wallet; Received APT transferred to wallet; Transaction recorded on blockchain; Confirmation message received.
    *   **Priority:** High

**FR-009 - Display Token/Project List and Search**
*   **FR-009 - Display Token/Project List and Search:** The system MUST display a list of tokens/projects and provide search functionality.
    *   **Description:** Grid View: token cards (image, name, symbol, Market Cap in APT (USD ref.), creation time, shortened CA, Traders, shortened Owner, quick interaction buttons). Search bar ("Search by token name or symbol..."). Sorting ("Newest") and filtering ("All Pairs").
    *   **Trigger/Event:** User visits the token list page or uses search/filters.
    *   **Pre-conditions:** At least one token/project is listed.
    *   **Post-conditions:** Token list displayed correctly by format and criteria; Search results displayed.
    *   **Priority:** High

**FR-010 - Display Recent Platform Transactions (Marquee/Ticker)**
*   **FR-010 - Display Recent Platform Transactions (Marquee/Ticker):** The system MUST display a stream of successfully executed buy/sell token transactions across the entire platform.
    *   **Description:** Stream displays summary info: [Token Name] | [Buy/Sell] | [Value in APT/USD] | [Shortened User Address]. Auto-updates.
    *   **Trigger/Event:** Auto-updates with new transactions.
    *   **Pre-conditions:** System can track (near) real-time transactions.
    *   **Post-conditions:** Transaction stream displays continuously and accurately.
    *   **Priority:** High

**FR-011 - Display Terms of Use and Privacy Policy**
*   **FR-011 - Display Terms of Use and Privacy Policy:** The system MUST provide easy access to these documents.
    *   **Description:** Links in a visible location (e.g., footer).
    *   **Trigger/Event:** User clicks the link.
    *   **Pre-conditions:** Document content is drafted.
    *   **Post-conditions:** User can view the content.
    *   **Priority:** High

**FR-012 - Configure Token Vault during Token Creation**
*   **FR-012 - Configure Token Vault during Token Creation:** The system MUST allow token creators, optionally during token creation (FR-002), to configure Vault parameters.
    *   **Description:** If "Create Vault Settings" is chosen, provide: Vault Token Percentage or Vault Token Amount; Unlock Time or Unlock Date.
    *   **Trigger/Event:** User selects Vault configuration during token creation and fills in information.
    *   **Pre-conditions:** During token creation process (FR-002).
    *   **Post-conditions:** Vault parameters recorded; A portion of tokens will be locked.
    *   **Priority:** High

**FR-013 - Edit Token (Metadata) Information from Admin Page**
*   **FR-013 - Edit Token (Metadata) Information from Admin Page:** The system MUST allow token creators (on Admin page) to edit metadata.
    *   **Description:** On Admin page, update: Token Description, Website Link, Farcaster, X, Telegram. Changes saved and updated on token detail page.
    *   **Trigger/Event:** Token creator changes information and clicks "Save changes".
    *   **Pre-conditions:** On Admin page of owned token (FR-005).
    *   **Post-conditions:** Token metadata updated; Confirmation received.
    *   **Priority:** Medium

**FR-014 - Display Reference Information about Bot**
*   **FR-014 - Display Reference Information about Bot:** The system MUST display a static information area about the AI bot (e.g., CryptoGenie/@bankrbot) on the token detail page (FR-003).
    *   **Description:** This area displays: Bot Name, Avatar, Short Description, Follower Count, Example Bot Commands, Social/More Info Links for Bot. This is static info, no live chat.
    *   **Trigger/Event:** User views token detail page.
    *   **Pre-conditions:** Bot information content is prepared.
    *   **Post-conditions:** Bot information clearly displayed.
    *   **Priority:** Medium

**FR-015 - Claim Tokens from Vault**
*   **FR-015 - Claim Tokens from Vault:** The system MUST allow eligible users to claim tokens from the Vault after locking conditions are met, via the Admin page.
    *   **Description:** Admin page, "Claim Vaulted Token" section displays: Vault Percentage, Vault Amount, Unlock in X days/Unlock Date. If unlocked, "Claim Vaulted Token" button is available, initiating a transaction to transfer tokens to the user's wallet.
    *   **Trigger/Event:** User clicks "Claim Vaulted Token" on Admin page.
    *   **Pre-conditions:** On Admin page (FR-005); Aptos Wallet connected (FR-001); Tokens in Vault eligible for claim; Sufficient APT for gas.
    *   **Post-conditions:** Tokens from Vault successfully transferred to wallet; Vault status updated; Transaction confirmation received.
    *   **Priority:** High

---

## 4. Assumptions & Constraints

*   **Assumptions:**
    *   **A-001 - Aptos Network Stability and Capability:** The Aptos network will operate stably, securely, and be capable of supporting the transaction volume and types required by the Clanker platform.
    *   **A-002 - Users Have Compatible Aptos Wallets:** Potential Clanker users already have or can easily set up and use Aptos-compatible crypto wallets.
    *   **A-003 - Users Have X/Farcaster Accounts:** Users wishing to use token management functions will have valid X (Twitter) or Farcaster accounts for login.
    *   **A-004 - Basic User Knowledge:** Users have a basic understanding of token trading, DAO concepts, and the risks associated with using decentralized applications and cryptocurrencies.
    *   **A-005 - Availability and Reliability of Third-Party Authentication APIs:** X (Twitter) and Farcaster authentication APIs will operate stably and allow integration for user authentication.
    *   **A-006 - Users Have APT for Gas Fees:** Users will have sufficient APT tokens to cover transaction costs (gas fees) for activities on the Aptos network.

*   **Constraints:**
    *   **C-001 - Project Deadline:** The Clanker project aims to complete and launch core functionalities by June 11, 2025.
    *   **C-002 - Initial Functional Scope:** The first version of Clanker will focus on core DAO platform functionalities: token creation, token buy/sell (using APT), Aptos wallet connection, project/token listing and search, basic token metadata management, creator rewards claiming, and Vault functionality.
    *   **C-003 - No AI in Initial Phase:** Artificial intelligence (AI) will not be used to perform transactions or deploy tokens on behalf of users in this version of Clanker.
    *   **C-004 - Limited Token Management Rights:** Token creator management rights in the initial phase will be limited to editing metadata, claiming rewards, and claiming tokens from the vault.
    *   **C-005 - Dependency on Aptos Network:** The Clanker platform's operation is entirely dependent on the performance, security, and policies of the Aptos network.
    *   **C-006 - Main User Interface:** The primary user interface for interactions will be the Clanker website.
    *   **C-007 - Primary Transaction Currency:** APT is the primary currency used for buy/sell transactions and fee calculations on the Clanker platform. Other currencies (e.g., USD, ETH) if displayed are for reference only.

---

## 5. Risks

*   **R-001 - Misunderstanding Requirements due to Limited Client Communication**
    *   **Description:** Inability for daily direct client communication may lead to misinformation and misunderstood requirements.
    *   **Likelihood:** Medium
    *   **Impact:** High
    *   **Mitigation / Action Plan:** Detailed daily reports, proactive requirement proposals, video progress reports, maintain updated PRD.

*   **R-002 - Impact of Epidemics on Productivity**
    *   **Description:** Epidemic outbreaks can affect team productivity and project progress.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Medium to High
    *   **Mitigation / Action Plan:** Preventive measures, health checks, remote work guidelines.

*   **R-003 - High UX Workload**
    *   **Description:** Large volume of UX deliverables in a short time can cause pressure.
    *   **Likelihood:** Medium
    *   **Impact:** Medium
    *   **Mitigation / Action Plan:** Use DAO project template, allocate dedicated UX resources, use UI component libraries.

*   **R-004 - Scope Creep / Unclear Definition of Done (DoD)**
    *   **Description:** Requirements may expand, or DoD may be unclear.
    *   **Likelihood:** Medium
    *   **Impact:** High
    *   **Mitigation / Action Plan:** Clearly define DoD, break down tasks, deliver incrementally, strict change management, PRD review.

*   **R-005 - Smart Contract Security Vulnerabilities**
    *   **Description:** Smart contracts may contain vulnerabilities, leading to asset loss.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Very High
    *   **Mitigation / Action Plan:** Follow secure development best practices (Move), internal testing, consider third-party audit, use verified libraries.

*   **R-006 - Platform Performance and Scalability Issues**
    *   **Description:** As users and tokens increase, the platform may face performance issues.
    *   **Likelihood:** Medium
    *   **Impact:** Medium to High
    *   **Mitigation / Action Plan:** Scalable architecture design, caching, optimize blockchain/indexer queries, load testing, dependency on Aptos.

*   **R-007 - Third-Party API Changes or Discontinuation**
    *   **Description:** Dependency on X and Farcaster APIs. Changes/discontinuation can affect login.
    *   **Likelihood:** Low to Medium
    *   **Impact:** Medium
    *   **Mitigation / Action Plan:** Flexible authentication module design, monitor API announcements, consider backup authentication methods.

---

## 6. Screens / User Interface

*   **Connect Wallet Modal/Section:**
    *   **Description:** Modal/UI section displaying Aptos wallet options (Petra, Martian, Pontem). "Connect" button on header. Status messages.

*   **Login Modal/Page:**
    *   **Description:** Interface to select "Login with X" or "Login with Farcaster". Redirect/popup for authentication.

*   **Homepage / Token List Page:**
    *   **Description:** Grid display of tokens (token card: logo, name, symbol, market cap (APT, USD ref.), creation time, CA, traders, owner, quick interaction buttons). Search bar. Sorting ("Newest"), filtering ("All Pairs"). "Create New Token" button (if logged in/wallet connected).

*   **Token Detail Page:**
    *   **Description:** Basic info (logo, name, symbol, description, market cap (APT, USD/ETH ref.), CA, owner, tokenomics, unlock date, followers, "Add to wallet" button, social links). Price chart. Trading Area (Buy/Sell with APT, enter amount, APT balance, quick buttons, exchange rate, slippage, Buy/Sell button, connect wallet prompt). Creator Reward Area (Volume, Reward %, Est Reward, Claim Reward button). Bot Information Area (name, description, followers, links, sample commands). "Admin page" button.

*   **Create New Token Page (2 Steps):**
    *   **Step 1 (General Information):** Form: Token Image (upload), Token Name, Token Symbol, Description, Social links (X, Website, Farcaster, Telegram).
    *   **Step 2 (Token Parameter):** Form: Total Supply, Starting Market Cap (APT, ETH/USD ref.), Creator Buy, Create Vault Settings (optional: Vault Percentage/Amount, Unlock in X days/Unlock Date). "Create" button.

*   **Token Admin Page:**
    *   **Description:** Accessed from token detail page (if creator). Includes sections:
        *   **Creator Reward:** Reward info and "Claim Reward" button.
        *   **Claim Vaulted Token:** Vaulted token info and "Claim Vaulted Token" button (if eligible).
        *   **Update Token Info:** Metadata editing form (Description, Website, Farcaster, X, Telegram) and "Save changes" button.

*   **Live Transactions Ticker/Marquee Component:**
    *   **Description:** Dynamic component (header/footer) continuously displaying latest transactions (token name, buy/sell, value in APT/USD, shortened user address).

*   **Footer:**
    *   **Description:** Links to "Terms of Use", "Privacy Policy", Clanker's social media.

--- 