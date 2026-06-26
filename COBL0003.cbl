       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBL0003.
       AUTHOR. Walter Miguel Abitte Junior.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MASTER       PIC X(100).
       01 WS-ALVO         PIC X(50).
       01 WS-SUBSTITUTO   PIC X(50).
       01 WS-RESULTADO    PIC X(100).

       PROCEDURE DIVISION.

           perform 001-OBTER-TEXTO-E-SUBSTITUICOES.
           perform 002-REALIZAR-SUBSTITUICOES.           
           perform 003-EMITIR-TEXTO-RESULTANTE.
           perform 004-FINALIZAR.

       001-OBTER-TEXTO-E-SUBSTITUICOES.

           DISPLAY "Digite o string master: "
           ACCEPT WS-MASTER FROM CONSOLE.

           DISPLAY "Digite o string que sera substituido: "
           ACCEPT WS-ALVO FROM CONSOLE.

           DISPLAY "Digite o string substituto: "
           ACCEPT WS-SUBSTITUTO FROM CONSOLE.

       999-FIM-OBTER-TEXTO-E-SUBSTITUICOES.

       002-REALIZAR-SUBSTITUICOES.

           MOVE WS-MASTER TO WS-RESULTADO.
           INSPECT WS-RESULTADO REPLACING ALL WS-ALVO BY WS-SUBSTITUTO.

       999-FIM-REALIZAR-SUBSTITUICOES.

       003-EMITIR-TEXTO-RESULTANTE.

           DISPLAY "----------------------------------------".
           DISPLAY "String original:   " WS-MASTER .
           DISPLAY "Substituir:        " WS-ALVO .
           DISPLAY "Por:               " WS-SUBSTITUTO .
           DISPLAY "String final:      " WS-RESULTADO .
           DISPLAY "----------------------------------------".

       999-FIM-EMITIR-TEXTO-RESULTANTE.    

       004-FINALIZAR.

           STOP RUN.    

       999-FIM-FINALIZAR. 