       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBL0004.
       AUTHOR. Walter Miguel Abitte Junior.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> Definição da primeira tabela
       01 WRK-TABELA-1.
          05 WRK-TAB1-ITEM OCCURS 5 TIMES PIC X(10).

       *> Definição da segunda tabela
       01 WRK-TABELA-2.
          05 WRK-TAB2-ITEM OCCURS 5 TIMES PIC X(10).

       *> Variáveis auxiliares
       01 WRK-I PIC 9(02).
       01 WRK-J PIC 9(02).

       PROCEDURE DIVISION.

           PERFORM 001-POPULANDO-TABELAS.
           PERFORM 002-COMPARANDO-TABELAS.
           PERFORM 003-FINALIZAR.

       001-POPULANDO-TABELAS.
           *> Populando tabela 1
           MOVE "COBOL"    TO WRK-TAB1-ITEM(1).
           MOVE "JAVA"     TO WRK-TAB1-ITEM(2).
           MOVE "PYTHON"   TO WRK-TAB1-ITEM(3).
           MOVE "C"        TO WRK-TAB1-ITEM(4).
           MOVE "RUST"     TO WRK-TAB1-ITEM(5).

           *> Populando tabela 2
           MOVE "PYTHON"   TO WRK-TAB2-ITEM(1).
           MOVE "RUST"     TO WRK-TAB2-ITEM(2).
           MOVE "GO"       TO WRK-TAB2-ITEM(3).
           MOVE "JAVA"     TO WRK-TAB2-ITEM(4).
           MOVE "SWIFT"    TO WRK-TAB2-ITEM(5).

       999-FIM-POPULANDO-TABELAS.

       002-COMPARANDO-TABELAS.

           DISPLAY "----------------------------------------".
           DISPLAY "Comparando tabelas internas...".
           DISPLAY "----------------------------------------".

           PERFORM VARYING WRK-I FROM 1 BY 1 UNTIL WRK-I > 5
               PERFORM VARYING WRK-J FROM 1 BY 1 UNTIL WRK-J > 5
                   IF WRK-TAB1-ITEM(WRK-I) = WRK-TAB2-ITEM(WRK-J)
                       DISPLAY "Igualdade encontrada: " 
                                WRK-TAB1-ITEM(WRK-I)
                   END-IF
               END-PERFORM
           END-PERFORM.

       999-FIM-COMPARANDO-TABELAS.

       003-FINALIZAR.

           STOP RUN.

       999-FIM-FINALIZAR.