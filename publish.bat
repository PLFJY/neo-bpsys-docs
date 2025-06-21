cd /d %~dp0
docfx docfx.json
git pull
git add .
git commit -m "Auto Commit"
git push