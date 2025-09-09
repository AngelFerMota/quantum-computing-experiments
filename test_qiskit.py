#!/usr/bin/env python3
"""
Test script para verificar que Qiskit está funcionando correctamente.
Este script crea un circuito cuántico simple y lo simula.
"""

from qiskit import QuantumCircuit
from qiskit_aer import AerSimulator
from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager

def test_qiskit_installation():
    """Prueba básica de Qiskit."""
    print("Probando instalación de Qiskit...")
    
    # Crear un circuito simple
    qc = QuantumCircuit(2, 2)
    qc.h(0)
    qc.cx(0, 1)
    qc.measure_all()
    
    print("Circuito cuántico creado")
    print(f"Número de qubits: {qc.num_qubits}")
    print(f"Número de operaciones: {len(qc.data)}")
    
    # Simular el circuito
    simulator = AerSimulator()
    pm = generate_preset_pass_manager(backend=simulator, optimization_level=1)
    compiled_circuit = pm.run(qc)
    
    job = simulator.run(compiled_circuit, shots=100)
    result = job.result()
    counts = result.get_counts()
    
    print("Simulación completada")
    print(f"Resultados: {counts}")
    
    return True

if __name__ == "__main__":
    try:
        test_qiskit_installation()
        print("\n ¡Qiskit está funcionando correctamente!")
        print("Tu entorno está listo para computación cuántica")
    except Exception as e:
        print(f"\n Error: {e}")
        print("Revisa la instalación de las dependencias")
