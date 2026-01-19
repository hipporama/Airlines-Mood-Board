$lines = Get-Content "C:\Users\arvma\OneDrive\Documents\GitHub\Airlines-Mood-Board\index.html"
for ($i = 1430; $i -lt 1470; $i++) {
    Write-Host "${i}: $($lines[$i])"
}
