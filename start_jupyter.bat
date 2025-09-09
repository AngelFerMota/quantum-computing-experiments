@echo off
echo Iniciando entorno de computación cuántica...
echo.

REM Activar entorno virtual
call venv\Scripts\activate.bat

REM Mostrar información del entorno
echo Entorno virtual activado
echo Python: 
python --version
echo.

REM Verificar Qiskit
echo Verificando Qiskit...
python -c "import qiskit; print(f'Qiskit {qiskit.__version__} está listo')"
echo.

REM Iniciar Jupyter Notebook
echo Iniciando Jupyter Notebook...
echo Se abrirá automáticamente en tu navegador
echo Navega a la carpeta 'notebooks' para ver los experimentos
echo.
echo Notebooks disponibles:
echo    - bell_state.ipynb    : Estados de Bell y entrelazamiento
echo    - qrng.ipynb          : Generador de números aleatorios cuánticos
echo.
echo Presiona Ctrl+C para detener el servidor cuando termines
echo.

jupyter notebook

pause
