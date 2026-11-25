# Administración de entradas para un evento

**Asignatura:** UCOM250 – Organización y Arquitectura de Computadores  
**Integrantes:** Grupo 7 – Juan Araujo (Líder, juan.araujo@uees.edu.ec), Jerissel Sanchez  
**Año:** 2026  
**Fecha:** 19 de noviembre de 2026

---

## Descripción

### Escenario

Una empresa organizadora de eventos necesita procesar la información sobre la disponibilidad y el registro de sus entradas. Al iniciar el programa se guardan en memoria 32 entradas de una primera categoría y 50 entradas de un segundo registro. Con estos datos, el programa realiza sumas y restas que representan cantidades acumuladas y diferencias; durante el proceso, algunos registros se usan como fuente de datos y después reciben nuevos valores.

Al terminar los cálculos, el programa usa un salto condicional para decidir qué estado guardar: si el resultado evaluado es distinto de cero, almacena el código **404**, que indica que el procesamiento de entradas finalizó; si es cero, almacena **0**. La solución está escrita en lenguaje ensamblador MIPS y se ejecuta en el simulador mipsy web.

---

### Objetivo

Procesar las entradas de un evento en MIPS y guardar en memoria su estado final (404 o 0).

### Uso

1. Abrir `proyecto04.s` en el simulador mipsy web con el botón **Load**.
2. Presionar **Run**.
3. Verificar el resultado:
   - En **used registers**, `$t2` debe tener el valor **404**.
   - En la pestaña **data**, la dirección `0x10010038` (variable `estado`) debe mostrar `94 01 00 00`, que es 404 en hexadecimal.

---

### Referencias utilizadas

1. Patterson, D. A., y Hennessy, J. L. (2014). *Computer organization and design: The hardware/software interface* (5.ª ed.). Morgan Kaufmann.

2. UNSW Sydney. (s.f.). *mipsy web* [Simulador MIPS]. Recuperado el 19 de noviembre de 2026 de https://cgi.cse.unsw.edu.au/~cs1521/mipsy/
