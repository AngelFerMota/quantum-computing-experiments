# PROYECTO COMPLETADO: Quantum Computing Experiments

### Estructura del proyecto
```
quantum-computing-experiments/
├── README.md                 # Documentación completa del proyecto
├── requirements.txt          # Dependencias de Python
├── .gitignore               # Archivos ignorados por Git
├── test_qiskit.py           # Script de verificación rápida
├── start_jupyter.bat        # Script de inicio para Windows (CMD)
├── start_jupyter.ps1        # Script de inicio para Windows (PowerShell)
├── notebooks/               # Jupyter Notebooks principales
│   ├── bell_state.ipynb     # Demostración de Estados de Bell
│   └── qrng.ipynb          # Generador de números aleatorios cuánticos
├── images/                  # Carpeta para imágenes generadas
└── venv/                   # Entorno virtual de Python
```

### Notebooks incluidos

#### 1. **bell_state.ipynb** - Estados de Bell y Entrelazamiento
- **Teoría**: Explicación del entrelazamiento cuántico
- **Implementación**: Circuito cuántico con Hadamard + CNOT
- **Análisis**: Verificación estadística del entrelazamiento
- **Visualizaciones**: Diagramas de circuito e histogramas
- **Experimentos**: Correlación entre qubits entrelazados

#### 2. **qrng.ipynb** - Generador de Números Aleatorios Cuánticos
- **Teoría**: Superposición cuántica y aleatoriedad verdadera
- **Implementación**: QRNG usando puertas Hadamard
- **Comparación**: QRNG vs generadores pseudoaleatorios clásicos
- **Tests estadísticos**: Chi-cuadrado, rachas, entropía de Shannon
- **Aplicaciones**: Contraseñas, dados cuánticos, coordenadas aleatorias

### Tecnologías utilizadas
- **Qiskit**: Framework de computación cuántica de IBM
- **Matplotlib**: Visualización y gráficos
- **NumPy**: Computación numérica
- **SciPy**: Análisis estadístico
- **Seaborn**: Visualizaciones estadísticas
- **Jupyter Notebook**: Entorno interactivo

### Cómo usar el proyecto

#### Opción 1: Scripts automatizados
```bash
# Para Windows CMD:
start_jupyter.bat

# Para Windows PowerShell:
.\start_jupyter.ps1
```

#### Opción 2: Manual
```bash
# Activar entorno virtual
.\venv\Scripts\Activate.ps1

# Verificar instalación
python test_qiskit.py

# Iniciar Jupyter
jupyter notebook
```

### Resultados esperados

Los notebooks generarán automáticamente:
- **Diagramas de circuitos cuánticos**
- **Histogramas de resultados de mediciones**
- **Gráficos de análisis estadístico**
- **Comparaciones entre métodos cuánticos y clásicos**

### Objetivos educativos cumplidos

1. **Conceptos cuánticos fundamentales**:
   - Superposición cuántica
   - Entrelazamiento
   - Medición y colapso del estado
   - Puertas cuánticas (Hadamard, CNOT)

2. **Programación cuántica práctica**:
   - Construcción de circuitos con Qiskit
   - Simulación cuántica
   - Análisis de resultados

3. **Aplicaciones reales**:
   - Criptografía cuántica
   - Aleatoriedad verdadera
   - Fundamentos para algoritmos cuánticos