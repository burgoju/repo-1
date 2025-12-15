# GitHub Green Squares - Final Working Version
$repoPath = "C:\Users\burgo\OneDrive\Desktop\aws-learning\githuballgreen\repo-1"

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "    GITHUB GREEN SQUARE GENERATOR" -ForegroundColor Yellow
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# Go to repo
cd $repoPath

# Always pull first to avoid conflicts
Write-Host "Syncing with GitHub..." -ForegroundColor Gray
git pull origin main --quiet 2>$null

# COMMIT 1
Write-Host "`n1. Creating morning commit..." -ForegroundColor Green
$time1 = Get-Date -Format "HH:mm:ss"
"Commit at $time1" | Out-File -Append commits.txt -Encoding UTF8
git add .
git commit -m "Morning update $time1" --quiet
git push origin main --quiet
Write-Host "   ✅ Morning commit done" -ForegroundColor Green

Start-Sleep -Seconds 2

# COMMIT 2
Write-Host "2. Creating afternoon commit..." -ForegroundColor Green
$time2 = Get-Date -Format "HH:mm:ss"
"Commit at $time2" | Out-File -Append commits.txt -Encoding UTF8
git add .
git commit -m "Afternoon update $time2" --quiet
git push origin main --quiet
Write-Host "   ✅ Afternoon commit done" -ForegroundColor Green

Start-Sleep -Seconds 2

# COMMIT 3
Write-Host "3. Creating evening commit..." -ForegroundColor Green
$time3 = Get-Date -Format "HH:mm:ss"
"Commit at $time3" | Out-File -Append commits.txt -Encoding UTF8
git add .
git commit -m "Evening update $time3" --quiet
git push origin main --quiet
Write-Host "   ✅ Evening commit done" -ForegroundColor Green

Write-Host ""
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "✅ SUCCESS: 3 green squares created!" -ForegroundColor Green
Write-Host "Check: https://github.com/burgoju" -ForegroundColor Yellow
Write-Host "=========================================" -ForegroundColor Cyan

# Keep window open
timeout /t 10