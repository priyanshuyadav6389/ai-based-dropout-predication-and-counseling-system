# Launch script for AI Student Dropout Prediction System

# Kill any existing processes (optional, but good for cleanup)
Stop-Process -Name "python" -ErrorAction SilentlyContinue
Stop-Process -Name "node" -ErrorAction SilentlyContinue

# Start Python Backend
Write-Host "Starting Python Backend..." -ForegroundColor Green
Start-Process -FilePath "python" -ArgumentList "backend/app.py" -WorkingDirectory "$PSScriptRoot" -WindowStyle Minimized

# Wait for backend to initialize
Start-Sleep -Seconds 5

# Start Frontend
Write-Host "Starting Frontend..." -ForegroundColor Green
npm run dev

# Usage: ./launch.ps1
