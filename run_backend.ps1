# AICTE Regulatory Compliance & Document Authentication Engine
# Smart India Hackathon Prototype (Problem ID: 26261)
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  AICTE AI-Powered Application & Document Validator" -ForegroundColor Yellow
Write-Host "  Smart India Hackathon Prototype (Problem ID: 26261)" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

# Ensure database is seeded
Write-Host "[1/2] Checking SQLite Database & Seeding 4 Demo Scenarios..." -ForegroundColor White
python -c "from backend.database import init_db; init_db(force_reseed=False); print('>> Database ready.')"

Write-Host ""
Write-Host "[2/2] Starting FastAPI Server on http://127.0.0.1:8000..." -ForegroundColor Green
Write-Host ">> Scrutiny Dashboard URL: http://localhost:8000/" -ForegroundColor Cyan
Write-Host ">> Interactive API Docs:  http://localhost:8000/docs" -ForegroundColor Yellow
Write-Host ""

python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000 --reload
