      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "Inicio".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

          SELECT OPTIONAL CLIENTES ASSIGN TO "./Hola.dat"
               ORGANIZATION INDEXED
               ACCESS MODE DYNAMIC
               RECORD KEY IS ID-CLIENTE
               ALTERNATE KEY CLI-NOMBRE WITH DUPLICATES
               ALTERNATE KEY CLI-TARJETA WITH DUPLICATES
               STATUS ST-FILE.

       DATA DIVISION.
       FILE SECTION.

       FD  CLIENTES.

       01 REG-CLIENTES.
           03 ID-CLIENTE.
               05 CLI-ID           PIC 9(7).
           03 CLI-SALDO            PIC S9(9)V9(3).
           03 CLI-NOMBRE           PIC X(70).
           03 CLI-DIRECCION        PIC X(60).
           03 CLI-DIRPOST          PIC X(10).
           03 CLI-CATEGORIA        PIC X.
           03 CLI-TARJETA          PIC X(50).
           03 CLI-RAZONSOCIAL      PIC X(60).
           03 CLI_GIT              PIC X(100).
           03 FILLER               PIC X(200).

       WORKING-STORAGE SECTION.

       01  ST-FILE                 PIC XX.

       PROCEDURE DIVISION.
       PABLO.
           PERFORM ABRIR-ARCHIVOS.
           PERFORM CERRAR-ARCHIVOS.
           PERFORM PRUEBA-GIT.
           STOP RUN.

       ABRIR-ARCHIVOS.
           OPEN I-O CLIENTES.
           IF ST-FILE > "7"
               DISPLAY "ERROR AL ABRIR ARCHIVOS".
               DISPLAY "PRIMERA MODIFICACION HECHA EN GIT".


       CERRAR-ARCHIVOS.
               DISPLAY "ESTOY CERRANDO CLIENTES".
           CLOSE CLIENTES.


       PRUEBA-GIT.
           DISPLAY "ACTUALIZACION RAMA PRINCIPAL".

       END PROGRAM "Inicio".
