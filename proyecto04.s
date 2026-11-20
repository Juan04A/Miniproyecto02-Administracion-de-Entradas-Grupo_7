# Proyecto: Administracion de entradas para un evento
# UCOM250 - Organizacion y Arquitectura de Computadores
# Grupo 7: Juan Araujo, Jerissel Sanchez

.data
entradas:     .word 32		# 32 entradas de la primera categoria
              .space 24
registro:     .word 50		# 50 entradas del segundo registro
              .space 24
estado:       .word 0		# estado final del evento

.text
.globl main

main:
# Cargar direcciones de memoria
    la   $s1, entradas		# $s1 = direccion de entradas
    la   $s2, registro		# $s2 = direccion de registro
    la   $s3, estado		# $s3 = direccion de estado

# Calculos de acumulados y diferencias
    lw   $t3, 0($s1)		# $t3 = 32
    add  $t4, $t3, $t3		# $t4 = 32 + 32 = 64
    sub  $t5, $t4, $t3		# $t5 = 64 - 32 = 32

    add  $t6, $t3, $t4		# $t6 = 32 + 64 = 96
    addi $t3, $zero, 12		# $t3 recibe nuevo valor: 12

    add  $t7, $t4, $t5		# $t7 = 64 + 32 = 96
    sub  $t7, $t4, $t3		# $t7 = 64 - 12 = 52

    add  $t8, $t4, $t5		# $t8 = 64 + 32 = 96
    sub  $t9, $t4, $t5		# $t9 = 64 - 32 = 32

# Segundo registro y resultado a evaluar
    lw   $t0, 0($s2)		# $t0 = 50
    add  $t1, $t8, $t9		# $t1 = 96 + 32 = 128

# Decision: si $t1 es cero salta a CERO
    beq  $t1, $zero, CERO
    addi $t2, $zero, 404	# $t1 != 0: codigo 404

    sw   $t2, 0($s3)		# estado = 404
    j    FIN

CERO:
    addi $t2, $zero, 0		# $t1 == 0: codigo 0
    sw   $t2, 0($s3)		# estado = 0

FIN:
    li   $v0, 10		# terminar programa
    syscall