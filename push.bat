@echo off
cd /d "D:\claude\Projects\Rollout projects\tracker"

:: Remove stale git lock if present
if exist ".git\index.lock" del /f ".git\index.lock"

git config user.email "bidani.anis86@gmail.com"
git config user.name "Anis"
git add index.html .github/workflows/deploy.yml
git commit -m "fix: renderOgSites broken onchange handlers causing app crash - use data-sid attributes"
git push origin main
echo.
echo Done! Site will update in ~1 minute.
pause
