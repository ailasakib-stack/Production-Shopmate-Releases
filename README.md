# Production ShopMate ERP - Official Update Releases

[![Latest Release](https://img.shields.io/badge/Release-v4.2.6-emerald.svg)](https://github.com/ailasakib-stack/Production-Shopmate-Releases/releases)
[![Build Status](https://img.shields.io/badge/Build-Production%20Protected-blue.svg)]()
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS%20%7C%20cPanel-orange.svg)]()

This repository is the dedicated update release channel for **Production ShopMate ERP**. It hosts compiled, obfuscated production update packages (`update.zip`) and release metadata for seamless Over-The-Air (OTA) and offline updates.

> **Note**: This repository contains distribution packages and release artifacts only. Source code is maintained privately in `Production-Shopmate-erp`.

---

## 📦 Current Latest Version: `v4.2.6`

### Key Highlights & Features in v4.2.6:
- **🏭 Dedicated Manufacturing & Production Module**:
  - **Mode A (Custom Batch Run)**: Two-step production tracking raw catch input vs. finished outputs and dressing yield with live cost allocation.
  - **Mode B (BOM Recipe Backflush)**: Recipe definition for finished goods with automated consumption of raw catch, inner cartons, poly liners, and master boxes.
- **📦 Clean Separation of Inventory**:
  - **Commercial Trading Catalog**: Exclusively merchandise for wholesale/retail buying and selling.
  - **Industrial Production Catalog**: Exclusively raw materials, packaging supplies, and producible finished goods.
- **➕ Material & Product Enrollment**:
  - Single-item form with classification selection (`RAW_MATERIAL`, `PACKING_MATERIAL`, `FINISHED_GOOD`) and auto-generated SKUs.
  - Fast tabular bulk grid entry for onboarding multiple factory items at once.
  - Bulk CSV import and downloadable industrial template pre-filled with seafood & packaging examples.
- **👥 Factory Parties & Suppliers**:
  - Dedicated management for Raw Catch Suppliers (fishermen, landing ghats), Packaging Vendors (cartons, poly bags), and Labor Contractors.
  - 1-click Material Procurement and direct integration with unified Accounts Payable (`2010`).
- **📊 Factory Stock & WIP Valuation**:
  - Separate valuation reports for Raw Materials (`1040`), Packaging Supplies (`1041`), Work-In-Progress (`1042`), and Manufactured Finished Goods (`1043`).
- **⚡ Pure WebAssembly SQLite Engine**:
  - Zero native C++ compilation dependencies. Fast, stable, and multi-tenant ready.

---

## 🚀 How to Apply Updates

### Method 1: Automatic One-Click OTA Update (Recommended)
1. Open your Production ShopMate ERP system.
2. Go to **Settings** → **System Updates**.
3. Click **"Check for Updates"**. The system will detect the latest release from `ailasakib-stack/Production-Shopmate-Releases`.
4. Click **"Apply Update Now"**. The system downloads `update.zip`, validates SHA-256 checksums, updates assets, and restarts automatically.

### Method 2: Manual Update (Offline / Air-Gapped Machines)
1. Download `update.zip` from this repository or from the latest GitHub Release.
2. Open Production ShopMate ERP → **Settings** → **System Updates**.
3. Click **"Upload Update Package"** and select `update.zip`.
4. The system will extract and apply the update immediately without an internet connection.

---

## 🛠️ Publishing a New Release (For Administrators)

To compile and publish a new version from the source repository:
1. In the source repo (`production-shopmate`), update `version` in `package.json` and `APP_VERSION` in `src/version.ts`.
2. Double-click `MAKE_UPDATE_RELEASE.bat` (or run `npm run release`).
3. Copy the generated `dist-release/update.zip` to this repository or attach it to a new GitHub Release under [Releases](https://github.com/ailasakib-stack/Production-Shopmate-Releases/releases/new).
4. Tag the release (e.g., `v4.2.6`) and publish.

---

&copy; 2026 ShopMate POS & ERP Systems. All rights reserved.
