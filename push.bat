@echo off
cd /d "D:\claude\Projects\Rollout projects\tracker"

:: Remove stale git lock files
if exist ".git\index.lock" del /f ".git\index.lock"
if exist ".git\HEAD.lock" del /f ".git\HEAD.lock"
if exist ".git\COMMIT_EDITMSG.lock" del /f ".git\COMMIT_EDITMSG.lock"

git config user.email "bidani.anis86@gmail.com"
git config user.name "Anis"
git add index.html .github/workflows/deploy.yml push.bat
git commit -m "fix: restore states from history; per-project status fallback; export mirrors filtered rows; overview export multi-sheet by project" --allow-empty
git push origin main
echo.
echo Done! Site will update in ~1 minute.
pause
