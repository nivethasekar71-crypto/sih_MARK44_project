@echo off
title AICTE Regulatory Compliance & Document Authentication Engine (SIH-26261)
echo ==========================================================
echo   AICTE AI-Powered Application ^& Document Validator
echo   Smart India Hackathon Prototype (Problem ID: 26261)
echo ==========================================================
echo.
echo [1/2] Initializing SQLite Database and Seeding 4 Demo Scenarios...
python -c "from backend.database import init_db; init_db(force_reseed=False); print('>> Database ready.')"
echo.
echo [2/2] Launching FastAPI Backend on http://127.0.0.1:8000...
echo   Dashboard: http://localhost:8000/
echo   API Docs:  http://localhost:8000/docs
echo.
python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000 --reload
pause
