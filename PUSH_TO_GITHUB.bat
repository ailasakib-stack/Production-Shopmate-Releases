@echo off
title Push Production ShopMate Releases
color 0A
cd /d "%~dp0"

echo ====================================================================
echo        PUSHING PRODUCTION SHOPMATE RELEASES TO GITHUB
echo ====================================================================
echo.

git add .
git commit -m "release: update v4.2.6 release bundle"
git branch -M main
git push -u origin main

if errorlevel 1 (
    echo.
    echo [NOTE] If the remote repository does not exist yet on GitHub:
    echo 1. Go to: https://github.com/new
    echo 2. Repository Name: Production-Shopmate-Releases
    echo 3. Keep it Public and click "Create repository"
    echo 4. Then run this script again!
    echo.
) else (
    echo.
    echo [SUCCESS] Releases repository pushed successfully!
)

pause
