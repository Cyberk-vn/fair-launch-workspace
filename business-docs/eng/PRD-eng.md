# Product Requirements Document - Amaterasu Scratch Card

**English Version**

**Date:** 2025-06-16 (based on source document version)  
**Version:** 1.0-dev  
**Prepared By:** Brian

---

## 1. Introduction / Overview

### Project Summary

The Amaterasu Scratch Card project aims to create a **provably-fair, instant-reveal scratch-card game** on the Aptos mainnet (Move v2). It includes features like:

- Jackpots
- Monthly raffle
- Points system
- Referral bonuses
- Bundle discounts

### Detailed Overview

This document outlines the requirements for the Amaterasu Scratch Card game. The core objective is to offer a seamless user experience for purchasing and revealing digital scratch cards, with a strong emphasis on fairness and financial solvency.

**Key Features:**

- Multiple card tiers with dynamic prize pools (Card-Reward Pool, Grand Giveaway pool, Jackpot pool)
- Transparent sales split mechanism
- NFT-based card ownership (can be gifted or burned to reveal outcomes)
- On-chain randomness for reveals
- Referral incentives and anti-abuse measures

**Performance Targets:**

- ≥10 transactions per second (Tx/s) sustained
- 99.999% solvency of the Card-Reward Pool
- High test coverage and zero critical issues in Move Prover

---

## 2. Business Requirements (BR)

| ID         | Requirement                                      | Description                                                                                                                                                                                                                                                           |
| ---------- | ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **BR-001** | Offer Provably-Fair Scratch Card Gameplay        | The system must provide a scratch-card game where outcomes are demonstrably fair and instantly revealed                                                                                                                                                               |
| **BR-002** | Support Multiple Card Tiers and Pricing          | Users must be able to purchase scratch cards across different price points (e.g., 0.5 APT, 1.0 APT, 5.0 APT). Each tier is associated with a specific Card-Reward Pool                                                                                                |
| **BR-003** | Implement Bundle Discounts                       | The platform must offer discount incentives for purchasing multiple cards in bundles (e.g., 10 cards get 11, 50 cards get 56, 100 cards get 115). Bonus cards must grant full odds, points, and referral weight                                                       |
| **BR-004** | Manage Funds Allocation via Sale Split           | All proceeds from card sales must be atomically split and allocated to predefined pools: Card-Reward Pool (70%), Protocol fee (15%), Grand Giveaway pool (5%), Referral commission (5%), and Jackpot pool (5%). Support for dual APT/AMA token modes is also required |
| **BR-005** | Facilitate Jackpot Mechanics                     | A portion (5%) of each card price must be allocated to a jackpot pool. Jackpot icons can only appear when the jackpot pool is ≥1,000 APT, with the first user to reveal the icon receiving an immediate payout (Gold 80%, Silver 15%, Bronze 5% of pool)              |
| **BR-006** | Conduct Monthly Grand Giveaway Raffle            | The system must conduct a raffle every 30 days for players who obtain Grand-Giveaway Raffle Tickets. Prizes can be physical assets or USD-stable equivalent (90% value, KYC required)                                                                                 |
| **BR-007** | Implement a Points System                        | Points must be awarded as icons on the card, affected by multipliers, with chances of earning more points increasing with higher card tiers                                                                                                                           |
| **BR-008** | Integrate a Referral Program                     | The platform must support a referral system where referrers earn commission (5% for Amaterasu NFT holders/√10,000 $AMA, 2.5% for others). Commissions must be claimable once they reach a minimum threshold (0.1 APT)                                                 |
| **BR-009** | Ensure Financial Solvency                        | The system must maintain high solvency (99.999%) for the Card-Reward Pool. If a prize exceeds the pool balance, funds should be borrowed from a treasury_reserve and automatically reimbursed by subsequent sales                                                     |
| **BR-010** | Maintain High Performance and Smooth UX          | The system should sustain ≥10 transactions per second (Tx/s) and aim for 85% of plays to use pre-authorised "Play Again" session keys for a friction-free user experience                                                                                             |
| **BR-011** | Support Compliant Upgrade & Operations Framework | The smart contract framework must allow for compliant upgrades and operations, aiming for ≥95% test coverage and 0 critical issues in Move Prover                                                                                                                     |

---

## 3. Functional Requirements (FR)

### FR-001: Purchase Scratch Cards

**Priority:** High  
**Description:** The system MUST allow users to purchase single or bundle scratch cards with a single wallet signature.

- **Process:** Users can select card tier and quantity. On purchase, an NFT representing the card is minted to their wallet
- **Prerequisites:** User has a connected Aptos wallet with sufficient APT
- **Postconditions:** Card NFT minted, funds split to pools, success confirmation

### FR-002: Reveal Scratch Cards

**Priority:** High  
**Description:** The system MUST allow users to reveal scratch cards, either immediately upon purchase (via auto_reveal flag) or later by burning the card NFT.

- **Process:** Reveal uses on-chain randomness (`aptos_framework::randomness::u64_range`) to pick 25 icons. A `RevealEvent` is emitted
- **Prerequisites:** User owns an unrevealed scratch card NFT
- **Postconditions:** Card revealed, icons displayed, prize (if any) settled, NFT burned (if revealed by burning), `RevealEvent` emitted

### FR-003: Batch Reveal Cards

**Priority:** Medium  
**Description:** The system MUST support revealing multiple cards in a single transaction (`batch_reveal()`) or automatically revealing all remaining cards (`Batch_reveal()`).

- **Process:** Allows for efficient reveal of multiple purchased cards
- **Prerequisites:** User owns multiple unrevealed scratch card NFTs
- **Postconditions:** All selected cards revealed, prizes settled

### FR-004: Play Again Functionality

**Priority:** High  
**Description:** The system MUST allow users to quickly purchase and reveal another card using a pre-authorised "Play Again" session key with a single wallet signature.

- **Process:** Optimizes UX for continuous play sessions
- **Prerequisites:** User has an active session key and sufficient APT
- **Postconditions:** New card purchased and revealed

### FR-005: Display Icon Map and Payouts

**Priority:** Medium  
**Description:** The system MUST clearly display the probabilities and prizes associated with different icons on a scratch card.

- **Process:** Includes percentages for blank, various prize amounts (as % of Card-Reward Pool), and multiplier icons
- **Prerequisites:** User views card details or game rules
- **Postconditions:** User understands odds and potential payouts

### FR-006: Calculate and Award Points

**Priority:** Medium  
**Description:** The system MUST calculate and award points based on icons revealed, applying multipliers, and increasing chances based on card tier.

- **Process:** Points are a form of reward for engagement
- **Prerequisites:** Card is revealed
- **Postconditions:** Points awarded to user's balance, potentially affecting TitleBadge multiplier

### FR-007: Process Jackpot Payouts

**Priority:** High  
**Description:** The system MUST automatically pay out jackpot prizes when a jackpot icon is revealed, provided the jackpot pool meets the threshold (≥1,000 APT).

- **Process:** The first successful transaction to reveal a jackpot icon receives a percentage of the pool (80% Gold, 15% Silver, 5% Bronze)
- **Prerequisites:** Jackpot pool ≥1,000 APT, jackpot icon revealed
- **Postconditions:** Jackpot amount transferred to winner, jackpot_pool balance reduced, cycle_active flag flipped

### FR-008: Manage Grand Giveaway Raffle Tickets

**Priority:** Medium  
**Description:** The system MUST award raffle tickets based on card tier (top tier 50% chance, lower tiers scale linearly).

- **Process:** Tickets are limited to 1 per card and not affected by multipliers
- **Prerequisites:** Card is revealed
- **Postconditions:** Raffle ticket awarded and recorded

### FR-009: Conduct Monthly Raffle Draw

**Priority:** Medium  
**Description:** An off-chain cron service MUST trigger the `draw_grand_giveaway()` function every 30 days to select a winner.

- **Process:** Prizes are physical assets or USD-stable equivalent (90%). KYC is required for prize claim
- **Prerequisites:** 30 days passed since last draw
- **Postconditions:** Raffle winner selected, prize awarded (or re-drawn if unclaimed after 30 days)

### FR-010: Manage Referral Commissions

**Priority:** Medium  
**Description:** The system MUST track and allow claiming of referral commissions.

- **Process:** Referrers are eligible for 2.5% or 5% based on criteria, claimable after 0.1 APT threshold. Self-referrals are nullified
- **Prerequisites:** User has accrued sufficient commission
- **Postconditions:** Commission transferred to referrer's wallet

### FR-011: Administer System Parameters

**Priority:** Low  
**Description:** The system MUST allow authorized administrators to configure various game parameters.

- **Process:** Includes `CARD_PRICE`, `JACKPOT_THRESHOLD`, `ICON_PAYOUT_SPLIT`, `REFERRAL_PCT`, `POINTS_PER_CARD`, `MAX_PER_TX`
- **Prerequisites:** Admin signer with appropriate capability
- **Postconditions:** Game parameters updated

### FR-012: Provide Emergency Withdrawal

**Priority:** Critical  
**Description:** The system MUST allow authorized administrators to perform emergency withdrawals of funds.

- **Process:** A critical function for fund recovery in emergencies
- **Prerequisites:** Admin signer with appropriate capability
- **Postconditions:** Funds securely withdrawn

### FR-013: Monitor Pool Balances and Solvency

**Priority:** High  
**Description:** An off-chain Treasury Dashboard MUST monitor pool balances and emit alerts if coverage ratio falls below 120%.

- **Process:** Ensures financial health and alerts to potential solvency issues
- **Prerequisites:** Operational indexer and monitoring system
- **Postconditions:** Proactive alerts on pool solvency

---

## 4. Assumptions & Constraints

### Assumptions

| ID        | Assumption                                | Description                                                                                                                   |
| --------- | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **A-001** | Stability and Capability of Aptos Network | The Aptos mainnet will operate stably, securely, and support the required transaction volume (≥10 Tx/s)                       |
| **A-002** | Users Have Compatible Aptos Wallets       | Potential users have or can easily set up Aptos-compatible crypto wallets (e.g., Petra, Pontem, Aptos Connect)                |
| **A-003** | Reliability of On-Chain Randomness        | The `aptos_framework::randomness::*` source will provide sufficiently uniform and secure random numbers for icon selection    |
| **A-004** | User Understanding of Game Mechanics      | Users have a basic understanding of scratch card games and associated blockchain concepts (e.g., wallet signatures, gas fees) |

### Constraints

| ID        | Constraint                                  | Description                                                                                                                                                     |
| --------- | ------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **C-001** | Target Chain                                | The game will exclusively operate on the Aptos mainnet using Move v2                                                                                            |
| **C-002** | Maximum Cards Per Transaction               | A maximum of 500 cards can be purchased in a single transaction (`MAX_PER_TX`)                                                                                  |
| **C-003** | Play Again Throttling                       | There is a minimum 2-second delay between consecutive `play_again()` calls from the same session key                                                            |
| **C-004** | Jackpot Threshold                           | Jackpot icons only appear when the `jackpot_pool` balance is at least 1,000 APT                                                                                 |
| **C-005** | Grand Giveaway Draw Interval                | The Grand Giveaway raffle is drawn strictly every 30 days                                                                                                       |
| **C-006** | Prize Payout Dependency on Treasury Reserve | In cases where a prize exceeds the `card_reward_pool` balance, the system relies on borrowing from a `treasury_reserve`                                         |
| **C-007** | Primary User Interface                      | The primary user interface for interactions will be a React/NextJS website                                                                                      |
| **C-008** | Admin Gated Functions                       | Critical administrative functions like `set_param` and `emergency_withdraw` are gated by specific capabilities and require multisig keys for off-chain triggers |

---

## 5. Risks

| Risk ID   | Risk                                                                                                                                                                                                        | Likelihood    | Impact    | Mitigation Plan                                                                                                                                                                                                                   |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **R-001** | **Smart Contract Security Vulnerabilities**<br><br>The Move smart contracts may contain vulnerabilities (e.g., coin leakage, re-entrancy issues), leading to asset loss or incorrect game operation         | Medium        | Very High | • Rigorous unit tests (pool splits, referral, borrow-reimburse)<br>• Property tests (jackpot invariant)<br>• Move Prover verification (no coin leakage, no re-entrancy)<br>• Fuzz testing with malicious gas limits (undergasing) |
| **R-002** | **Solvency of Reward Pools**<br><br>The Card-Reward Pool might not have sufficient funds to cover large prize payouts, despite the treasury_reserve mechanism                                               | Low to Medium | High      | • Target 99.999% solvency<br>• Implement treasury_reserve borrowing and auto-reimbursement<br>• Treasury Dashboard monitoring with <120% coverage alerts                                                                          |
| **R-003** | **Randomness Exploitation/Bias**<br><br>Issues with the on-chain randomness source could lead to predictable outcomes or unfair distribution of icons, undermining the "provably-fair" goal                 | Low           | Very High | • Primary reliance on `aptos_framework::randomness::*`<br>• Unit tests for RNG distribution (χ² within 1% after 10k runs)<br>• Optional fallback to ORAO-VRF async flow                                                           |
| **R-004** | **Performance Degradation / Scalability Issues**<br><br>The platform might struggle to sustain ≥10 Tx/s under high load, or the indexer/frontend might face performance issues in displaying real-time data | Medium        | Medium    | • Design for sustained 10 Tx/s<br>• Use efficient React/NextJS frontend<br>• Optimized Indexer for GraphQL<br>• Monitoring of Tx throughput and error codes with Grafana                                                          |
| **R-005** | **Undergasing of Reveal Transactions**<br><br>A reveal transaction might run out of gas, preventing the prize settlement                                                                                    | Low           | Medium    | • Undergasing defence where `reveal()` records icon/prize, and `settle_prize()` is executed unconditionally in the same transaction<br>• If transaction aborts, card stays unrevealed, user can re-call `reveal()`                |
| **R-006** | **Jackpot Double-Spend (Concurrent Reveals)**<br><br>Multiple users might reveal a jackpot icon concurrently, leading to potential disputes or incorrect payouts                                            | Low           | High      | • First successful transaction flips `cycle_active` flag inside Jackpot resource<br>• Others will see zero chance until the next threshold is reached                                                                             |
| **R-007** | **Unclaimed Raffle Prizes**<br><br>A Grand Giveaway prize might remain unclaimed, leading to a static prize pool                                                                                            | Low           | Low       | • `draw_grand_giveaway()` detects timeout after 30 days and triggers a re-draw<br>• Emits `RaffleRedistributed` event                                                                                                             |
| **R-008** | **Bot/Sybil Attacks**<br><br>Malicious actors using bots or Sybil attacks to gain an unfair advantage or disrupt the game                                                                                   | Medium        | Medium    | • Admin blacklist table for bot detection<br>• Configurable minimum account age<br>• Checking `account::sequence_number()` history for Sybil attacks                                                                              |

---

## 6. Screens / User Interface

### 6.1 Homepage / Game Lobby

**Description:** Entry point for users to view available scratch card tiers, their prices, and perhaps current jackpot amounts. "Buy Card" buttons for each tier.

**Key Elements:**

- Card tier options (Card 1, Card 2, Card 3)
- Pricing (0.5 APT, 1.0 APT, 5.0 APT)
- "Buy" buttons
- Wallet connection status

### 6.2 Purchase Flow Interface

**Description:** Interface for selecting card quantity, applying bundle discounts, and initiating the purchase transaction. Option for auto_reveal.

**Key Elements:**

- Quantity input
- Bundle bonus display (e.g., 10 → 11 cards)
- Auto_reveal checkbox

### 6.3 Scratch Card Reveal Interface

**Description:** Interactive 5x5 grid where users can "scratch" to reveal icons. Animations for the reveal process. Displays revealed icons and prize amount.

**Key Elements:**

- 5x5 grid for icons
- Scratch overlay (Canvas/WebGL)
- Revealed icon display
- Prize display
- "Play Again" button

### 6.4 Wallet Connection Modal/Section

**Description:** Prominent section allowing users to connect their Aptos-compatible wallets.

**Key Elements:**

- "Connect Wallet" button
- List of supported wallets (Petra, Pontem, Aptos Connect)
- Display of connected wallet address

### 6.5 User Dashboard / Inventory

**Description:** Page showing owned unrevealed scratch card NFTs, history of revealed cards, points accumulated, and referral commission status.

**Key Elements:**

- List of NFTs
- "Reveal" buttons
- Points balance
- Estimated referral commission
- "Claim Reward" button for referrals

### 6.6 Jackpot Information Display

**Description:** Real-time display of the current jackpot pool amount and details about recent jackpot winners (if any).

**Key Elements:**

- Current jackpot pool
- ≥1,000 APT threshold indication

### 6.7 Grand Giveaway Raffle Information

**Description:** Displays information about the next raffle draw date, rules for earning tickets, and past winners.

**Key Elements:**

- Next draw countdown
- Raffle ticket count
- Prize description

### 6.8 Admin Dashboard (Gated)

**Description:** Interface for authorized administrators to manage game configurations and perform emergency operations.

**Key Elements:**

- Forms for `set_param` (e.g., `CARD_PRICE`, `JACKPOT_THRESHOLD`)
- Buttons for `emergency_withdraw`
- Monitoring dashboards for pool balances and solvency

### 6.9 Transaction Confirmation / Status Messages

**Description:** Pop-ups or banners providing real-time feedback on transaction status (pending, success, failure).

**Key Elements:**

- Transaction ID
- Status
- Error messages
- Link to blockchain explorer

### 6.10 Footer

**Description:** Standard website footer with legal links and project information.

**Key Elements:**

- Links to Terms of Service (not explicitly mentioned but implied by "compliant" and standard practice for games)
