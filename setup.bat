@echo off
echo ================================
echo  My Kampbot Setup & Run Script
echo ================================

REM Step 1: Virtual environment banana
if not exist venv (
    echo [1/4] Creating virtual environment...
    python -m venv venv
) else (
    echo [1/4] Virtual environment already exists.
)

REM Step 2: Activate karna
echo [2/4] Activating virtual environment...
call venv\Scripts\activate

REM Step 3: Dependencies install karna
echo [3/4] Installing dependencies...
pip install --upgrade pip
pip install flask flask-cors scikit-learn rapidfuzz

REM Step 4: App run karna
echo [4/4] Starting Flask app...
python app.py

pause
