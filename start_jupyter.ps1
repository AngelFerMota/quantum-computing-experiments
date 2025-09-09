# Script para iniciar el entorno de computación cuántica
Write-Host "Iniciando entorno de computación cuántica..." -ForegroundColor Green
Write-Host ""

# Activar entorno virtual
& ".\venv\Scripts\Activate.ps1"

# Mostrar información del entorno
Write-Host "Entorno virtual activado" -ForegroundColor Green
Write-Host "Python: " -NoNewline
& python --version
Write-Host ""

# Verificar Qiskit
Write-Host "Verificando Qiskit..." -ForegroundColor Yellow
& python -c "import qiskit; print(f'Qiskit {qiskit.__version__} está listo')"
Write-Host ""

# Iniciar Jupyter Notebook
Write-Host "Iniciando Jupyter Notebook..." -ForegroundColor Cyan
Write-Host "Se abrirá automáticamente en tu navegador" -ForegroundColor White
Write-Host "Navega a la carpeta 'notebooks' para ver los experimentos" -ForegroundColor White
Write-Host ""
Write-Host "Notebooks disponibles:" -ForegroundColor Magenta
Write-Host "   - bell_state.ipynb    : Estados de Bell y entrelazamiento" -ForegroundColor White
Write-Host "   - qrng.ipynb          : Generador de números aleatorios cuánticos" -ForegroundColor White
Write-Host ""
Write-Host "Presiona Ctrl+C para detener el servidor cuando termines" -ForegroundColor Yellow
Write-Host ""

# Ejecutar Jupyter Notebook
jupyter notebook
