# Product Requirements Document - [FAIR-LAUNCH]

**Date:** 20 July 2025  
**Version:** 1.0.1  
**Prepared By:** Anderson - Anderson@cyberk.io  
[FAIR-LAUNCH] -> project name will be changed after agreement.

## 1. Introduction / Overview

**Project Summary:**  
[FAIR-LAUNCH] is a Solana-based platform that enables fair token launches through single-sided liquidity mechanisms. Users can buy and sell tokens directly with [FAIR-LAUNCH]'s smart contract.

**Detailed Overview:**  
This document describes the requirements for [FAIR-LAUNCH], a platform developed for the Solana network. The core objective is to allow users to create custom tokens with minimal information (image, name, symbol, description). The platform allows users to buy and sell created tokens using SOL through Saros's single-sided liquidity contract.

**Stakeholders:**

- Token creators
- Token traders/investors
- [FAIR-LAUNCH] platform operators
- Saros DEX integration

**Success Metrics:**

- Number of tokens created
- Total trading volume on single-sided liquidity
- Successful transition to Saros
- User engagement and retention

## 2. Business Requirements (BR)

- **BR-001 - Homepage Functionality:** Display project list with filters and access to project details.
- **BR-002 - Token Creation with Pre-buy Option:** Allow users to create new tokens with minimal attributes (image, name, symbol, description) and allow creators to pre-buy tokens at the initial single-sided liquidity price during creation.
- **BR-003 - Token Trading Support:** Allow users to buy/sell tokens using SOL directly with Saros's single-sided liquidity contract. When a token reaches a predetermined market cap threshold, automatically create a liquidity pair on Saros and redirect users to Saros's swap interface.
- **BR-004 - Token Metadata Management:** Allow token creators to manage and edit display metadata (description, logo, social media links).
- **BR-005 - Legal Compliance:** Prepare and integrate necessary legal documents (Terms of Service, Privacy Policy).
- **BR-006 - Revenue Sharing Mechanism:** Provide token creators with a mechanism to receive a portion of trading fees (40%) generated when their tokens are traded on Saros, creating incentives for quality token creation.
- **BR-007 - Platform Documentation:** Provide a clear and accessible "How It Works" section explaining the platform mechanism, fee structure, single-sided liquidity process, and token lifecycle stages.

## 3. Functional Requirements (FR)

### FR-001 - Solana Wallet Connection

- The system **MUST** allow users to connect their compatible Solana wallets.
- **Description:** Users need to be able to connect their existing Solana wallets to the [FAIR-LAUNCH] platform. "Connect" button on header. Status notification.
- **Trigger/Event:** User clicks the "Connect" button on header or attempts to perform an action requiring a connected wallet.
- **Prerequisites:** User has installed/available wallet compatible with Solana.
- **Post-conditions:** User's wallet is securely connected to the platform; user's wallet address is displayed on header; user can continue actions requiring wallet. OR Wallet connection fails and user is notified.

### FR-002 - System Login

- The system **MUST** allow users to log in through supported authentication methods.
- **Description:** Users can log in using Phantom wallet. The system will require users to sign a message to verify wallet ownership and after successful verification, users are redirected to the [FAIR-LAUNCH] platform with logged-in status.
- **Trigger/Event:** User clicks "Login" button and chooses to log in with Phantom wallet.
- **Prerequisites:** User has connected Phantom wallet (FR-001).
- **Post-conditions:** User successfully logs in and can access functions requiring authentication.

### FR-003 - Create New Token

- The system **MUST** allow users (logged in and connected wallet) to create new tokens on the Solana network through a simple process on the [FAIR-LAUNCH] platform.
- **Description:** The token creation process will occur in one step. In addition to providing basic information (Image, Name, Symbol, Description), the system **MUST** allow creators to input an amount of SOL to pre-buy tokens at the initial price of single-sided liquidity. This pre-buy amount is optional.
- **Trigger/Event:** User is logged in, connected wallet, navigates to "Create" section and completes the form, then clicks "Create" button.
- **Prerequisites:** Logged in (FR-002), Solana wallet connected (FR-001), Sufficient SOL for gas fees (and for pre-buy amount if applicable).
- **Post-conditions:** New token contract is deployed; Token is linked to creator; If creator pre-buys, corresponding token amount is transferred to their wallet; Token is listed on [FAIR-LAUNCH] and begins trading on Saros's single-sided liquidity for other users; User receives confirmation.

### FR-004 - Display Token Detailed Information

- The system **MUST** display detailed information and interactive functions for each token.
- **Description:** Includes: Basic Token Information (image, name, symbol, description, market cap, CA, Owner, followers, "Add to wallet" button, social links); Supply Information: clearly display the amount of tokens the creator has pre-bought, amount sold to the public, and current total supply on single-sided liquidity; Token Status ("Currently trading on single-sided liquidity" or "Listed on Saros"); Token Price Chart (price data queried from saros, showing price per transaction); Trading Area (has two states):
  - Display Buy/Sell interface. Below that, **MUST** display:
    - Single-sided liquidity progress bar: A visual progress bar showing current market cap versus the threshold required to list on Saros.
    - Recent Transactions Table: A table listing the latest buy/sell transactions for this token (transaction type, amount, price, time).
  - "Admin page" button for token creator to access management page.
- **Trigger/Event:** User clicks on token from list (FR-008) or direct access.
- **Prerequisites:** Token exists, metadata available.
- **Post-conditions:** User can view comprehensive information and perform buy/sell token transactions on [FAIR-LAUNCH] platform.

### FR-005 - Access Token Admin Page

- The system **MUST** allow token creators (logged in) to access a dedicated admin page for their tokens.
- **Description:** From token detail page, if creator and logged in, click "Admin page" button to go to management page (edit metadata).
- **Trigger/Event:** Token creator is logged in, on token detail page, clicks "Admin page".
- **Prerequisites:** Logged in (FR-002); Is creator/owner of token being viewed.
- **Post-conditions:** Redirect to token admin page.

### FR-006 - Buy Tokens with SOL

- The system **MUST** allow users to buy tokens using SOL.
- **Description:** On token detail page, in Trading Area, users **MUST** be able to input the amount of tokens they want to buy or the amount of SOL they want to spend. The system **MUST** display expected exchange rate from Saros. When user clicks 'Buy' button, the system **MUST** initiate a transaction with Saros's single-sided liquidity contract, requiring user to confirm this transaction from their connected Solana wallet.
- **Trigger/Event:** User selects buy and confirms transaction on [FAIR-LAUNCH] interface, interacts with [FAIR-LAUNCH] contract.
- **Prerequisites:** Solana wallet connected; Sufficient SOL for payment and gas fees;
- **Post-conditions:** Purchased tokens are transferred to user's wallet; User's SOL balance decreases accordingly; Transaction is recorded on blockchain through [FAIR-LAUNCH] contract; User receives confirmation notification.

### FR-007 - Sell Tokens for SOL on single-sided liquidity

- The system **MUST** allow users to sell tokens in exchange for SOL.
- **Description:** On token detail page, in Trading Area, users **MUST** be able to select tokens to sell and input amount. The system **MUST** display expected SOL amount to receive. When user clicks 'Sell' button, the system **MUST** initiate a transaction with Saros's single-sided liquidity contract, requiring user to confirm this transaction from their connected Solana wallet.
- **Trigger/Event:** User selects sell and confirms transaction on [FAIR-LAUNCH] interface, interacts with Saros contract.
- **Prerequisites:** Solana wallet connected; Sufficient tokens to sell and SOL for gas fees; Token is in single-sided liquidity phase.
- **Post-conditions:** Sold token amount is deducted from user's wallet; User's SOL balance increases accordingly; Transaction is recorded on blockchain through [FAIR-LAUNCH] contract; User receives confirmation notification.

### FR-008 - Display Token/Project List and Search

- The system **MUST** display token/project list and provide search functionality.
- **Description:** Display as Grid: token cards (image, name, symbol, Market Cap in SOL (USD reference), creation time, CA, traders, owner, quick interaction buttons). Search bar ("Search by token name or symbol..."). Sort ("Newest"), filter ("All Pairs").
- **Trigger/Event:** User accesses token list page or uses search/filter.
- **Prerequisites:** At least one token/project listed.
- **Post-conditions:** Token list displays in correct format and criteria; Search results display.

### FR-009 - Display Terms of Service and Privacy Policy

- The system **MUST** provide easy access to these documents.
- **Description:** Links in easily visible location (e.g., footer).
- **Trigger/Event:** User clicks on link.
- **Prerequisites:** Document content has been drafted.
- **Post-conditions:** User can view content.

### FR-010 - Edit Token Information (Metadata) from Admin Page

- The system **MUST** allow token creators (on Admin page) to edit metadata.
- **Description:** On Admin page, update: Token Description, Website Link, Farcaster, X, Telegram. Changes are saved and updated on token detail page.
- **Trigger/Event:** Token creator changes information and clicks "Save changes".
- **Prerequisites:** On Admin page of owned token (FR-005).
- **Post-conditions:** Token metadata is updated; Receive confirmation.

### FR-011 - Claim Trading Fees from Saros

- The system **MUST** provide functionality for token creators to claim their portion of trading fees (40%) from transactions on Saros.
- **Description:** On token's Admin page, there **MUST** be an area displaying accumulated fee balance from Saros (e.g., "Fees available to claim: X SOL"). A "Claim Fees" button. This function only displays and works after the token has been listed on Saros.
- **Trigger/Event:** Token creator clicks "Claim" button on Admin page.
- **Prerequisites:** User is token creator, logged in (FR-002), on Admin page (FR-005), has accumulated fees to claim.
- **Post-conditions:** Fee balance is transferred to creator's wallet. Unclaimed fee balance on interface is updated to 0. User receives confirmation.

### FR-012 - Display "How It Works" Section

- The system **MUST** provide a "How It Works" section/page easily accessible from main locations (e.g., header or footer).
- **Description:** This section will provide detailed, clear, and easy-to-understand information about:
  - Token creation fees: Explain that [FAIR-LAUNCH] does not charge fees to create tokens. Users only need to pay network gas fees.
  - Single-sided liquidity process: Explain how single-sided liquidity works and [FAIR-LAUNCH]'s mechanism.
  - Trading fees: "When trading on Saros, the fee is 1%. Distribution: 40% for you (creator), 40% for [FAIR-LAUNCH], 20% for Saros."
- **Trigger/Event:** User clicks on "How It Works" link/button.
- **Prerequisites:** Content has been drafted.
- **Post-conditions:** User can view detailed explanatory information, possibly as a separate page or modal.

## 4. Assumptions & Constraints

**Assumptions:**

- A-001 - Users use Phantom wallet to log in and perform transactions
- A-002 - System only supports integration with one DEX and that DEX must support DLMM
- A-003 - Saros DEX will maintain stable API and fee mechanism during development
- A-004 - Users have basic knowledge of DeFi and Solana wallets
- A-005 - Users will log in by signing messages from Phantom wallet instead of using social login

**Constraints:**

- C-001 - Project Timeline: Project can be demo-ready after 1 month of development
- C-002 - Initial Functionality Scope: The first version of [FAIR-LAUNCH] will focus on core functions of the single-sided liquidity model: simple token creation, trading on single-sided liquidity.
- C-003 - No AI in Initial Phase: AI will not be used to perform transactions or deploy tokens on behalf of users in this version of [FAIR-LAUNCH].
- C-004 - Limited Token Management Rights: Token creator's management rights will be limited to editing metadata.

## 5. Risks

### R-001 - Requirement Misunderstanding Due to Limited Customer Communication

- **Description:** Inability to communicate directly with customers daily may lead to miscommunication, misunderstanding of requirements.
- **Probability:** Medium
- **Impact:** High
- **Mitigation Plan / Action:** Detailed daily reporting, proactive requirement suggestions, progress reporting via video, maintain updated PRD.

### R-002 - Requirements Expanding During System Development

- **Description:** Requirements may expand or change during development.
- **Probability:** High
- **Impact:** Medium
- **Mitigation Plan / Action:** Clear scope definition, strict change process, change approval.

### R-003 - Lack of Project Business Documentation

- **Description:** Lack of detailed documentation about business logic and operational processes.
- **Probability:** Medium
- **Impact:** High
- **Mitigation Plan / Action:** Create detailed business requirements documentation, reference similar projects.

### R-004 - Unclear Definition of Done (DoD)

- **Description:** Requirements may expand or DoD may be unclear.
- **Probability:** Medium
- **Impact:** High
- **Mitigation Plan / Action:** Clear DoD definition, break down tasks, deliver incremental completion, strict change management process, review PRD.

### R-005 - Risk of Fee Collection and Distribution Mechanism from Saros

- **Description:** The technical mechanism to collect and distribute fees from Saros may be complex, unreliable, or may change without notice. Errors in this mechanism may lead to incorrect fee calculations, inability to claim, or revenue loss for both [FAIR-LAUNCH] and token creators.
- **Probability:** Medium
- **Impact:** High
- **Mitigation Plan / Action:** Thoroughly research Saros technical documentation. Build a separate, thoroughly tested module to handle interaction with Saros's fee mechanism. Have backup plans and notify users if Saros's mechanism changes.

### R-006 - Smart Contract Security Risk

- **Description:** Smart contracts may contain security vulnerabilities leading to loss of user assets.
- **Probability:** Low
- **Impact:** Very High
- **Mitigation Plan / Action:** Third-party smart contract audit, thorough testnet testing, gradual rollout.

### R-007 - Performance and Scalability Risk

- **Description:** The system may not handle high load when many users are concurrent.
- **Probability:** Medium
- **Impact:** Medium
- **Mitigation Plan / Action:** Load testing, optimization, monitoring performance metrics.

## 6. Screens / User Interface

### Connect Wallet Modal/Section

- **Description:** Modal/section displaying Solana wallet options (Phantom, Petra, Martian, Pontem). "Connect" button on header. Status notification.

### Login Modal/Page

- **Description:** Login interface using Phantom wallet. Requires user to sign message to verify wallet ownership.

### Homepage / Token List Page

- **Description:** Display token list in grid format (token cards: logo, name, symbol, market cap (SOL, USD reference), creation time, CA, traders, owner, quick interaction buttons). Search bar. Sort ("Newest"), filter ("All Pairs"). "Create New Token" button (if logged in/connected wallet).

### Token Detail Page

- **Description:** Basic information (logo, name, symbol, description, market cap, CA, owner, followers, "Add to wallet" button, social links). Addition: clearly display the amount of tokens the creator has pre-bought, amount sold to the public, and current total supply on single-sided liquidity. Price chart (showing price per transaction).
- **Trading Area:** Display Buy/Sell tabs, input fields, price information from single-sided liquidity, "Buy" button, "Sell" button. Below this area will display:
  - **Recent Transactions Table:** List the latest buy/sell transactions for this token.
  - **Trading Area (Post-Saros Listing):** This area is replaced with a notification (e.g., "This token is now trading on Saros!") and a single "Trade on Saros" button to redirect users.
- "Admin page" button for token creator to access management page.

### Create New Token Page

- **Description:** One-step form: Token Image (upload), Token Name, Token Symbol, Description. There will be an additional optional field (e.g., "Creator Pre-buy Amount (SOL)") for creators to input the amount of SOL they want to use to pre-buy tokens. "Create" button.

### Admin Page

- **Description:** Access from token detail page (if creator). Includes areas:
  - **Update Token Info:** Form to edit metadata (Description, Website, Farcaster, X, Telegram) and "Save changes" button.
  - **Fee Claim Area:** Display accumulated fee balance from Saros (e.g., "Fees available to claim: X SOL"). A "Claim Fees" button. This function only displays and works after the token has been listed on Saros.

### Live Transactions Ticker/Marquee Component

- **Description:** Dynamic component (top/bottom of page) continuously displaying latest transactions.

### Footer

- **Description:** Links to "Terms of Service", "Privacy Policy", [FAIR-LAUNCH] social media links.

### "How It Works" Page/Modal

- **Description:** A page or modal clearly explaining key points, possibly with illustrative graphics:
  - **Token Creation:** "Free on [FAIR-LAUNCH], you only pay network gas fees."
  - **Trading Fees:** "When trading on Saros, the fee is 1%. Distribution: 40% for you (creator), 40% for [FAIR-LAUNCH], 20% for Saros."
