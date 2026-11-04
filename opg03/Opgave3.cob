      * Opgave 3 - løkker og strenghåndtering
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPGAVE3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 KUNDE-ID          PIC X(10)   VALUE SPACES.
       01 FORNAVN           PIC X(20)   VALUE SPACES.
       01 EFTERNAVN         PIC X(20)   VALUE SPACES.
       01 KONTONUMMER       PIC X(20)   VALUE SPACES.
       01 BALANCE           PIC 9(7)V99 VALUE ZEROS.
       01 VALUTAKODE        PIC X(3)    VALUE SPACES.
      * Del 1
       01 FULDT-NAVN        PIC X(40)   VALUE SPACES.
      * Del 2
       01 RENS-FULDT-NAVN   PIC X(40)   VALUE SPACES.
       01 IX                PIC 99      VALUE ZERO.
       01 IX2               PIC 99      VALUE ZERO.
       01 CURRENT-CHAR      PIC X       VALUE SPACE.
       01 PREVIOUS-CHAR     PIC X       VALUE SPACE.
      * Del 3 - balance med komma og punktum til udskrift
       01 BALANCE-UD        PIC Z,ZZZ,ZZ9.99.

       PROCEDURE DIVISION.
           MOVE "1234567890"       TO KUNDE-ID
           MOVE "Lars"             TO FORNAVN
           MOVE "Hansen"           TO EFTERNAVN
           MOVE "DK12345678912345" TO KONTONUMMER
           MOVE 2500.75            TO BALANCE
           MOVE "DKK"              TO VALUTAKODE

      * Del 1 - saml fornavn og efternavn
           STRING FORNAVN   DELIMITED BY SIZE
                  " "       DELIMITED BY SIZE
                  EFTERNAVN DELIMITED BY SIZE
                  INTO FULDT-NAVN
           END-STRING
           DISPLAY "Fuldt navn   : [" FULDT-NAVN "]"

      * Del 2 - fjern gentagne mellemrum, et tegn ad gangen
           MOVE SPACES TO RENS-FULDT-NAVN
           MOVE 1      TO IX2
           MOVE SPACE  TO PREVIOUS-CHAR
           PERFORM VARYING IX FROM 1 BY 1
                   UNTIL IX > LENGTH OF FULDT-NAVN
               MOVE FULDT-NAVN(IX:1) TO CURRENT-CHAR
               IF CURRENT-CHAR NOT = SPACE
                  OR PREVIOUS-CHAR NOT = SPACE
                   MOVE CURRENT-CHAR TO RENS-FULDT-NAVN(IX2:1)
                   ADD 1 TO IX2
               END-IF
               MOVE CURRENT-CHAR TO PREVIOUS-CHAR
           END-PERFORM
           DISPLAY "Renset navn  : [" RENS-FULDT-NAVN "]"

      * Del 3 - pæn udskrift
           MOVE BALANCE TO BALANCE-UD
           DISPLAY "----------------------------------------"
           DISPLAY "Kunde ID      : " KUNDE-ID
           DISPLAY "Navn (renset) : " RENS-FULDT-NAVN
           DISPLAY "Kontonummer   : " KONTONUMMER
           DISPLAY "Balance       : " BALANCE-UD " " VALUTAKODE
           DISPLAY "----------------------------------------"
           STOP RUN.
