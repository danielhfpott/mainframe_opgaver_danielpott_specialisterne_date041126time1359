      * Opgave 4 - strukturer
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPGAVE4.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 KUNDEOPL.
          02 KUNDE-ID          PIC X(10)   VALUE SPACES.
          02 FORNAVN           PIC X(20)   VALUE SPACES.
          02 EFTERNAVN         PIC X(20)   VALUE SPACES.
          02 KONTOINFO.
             03 KONTONUMMER    PIC X(20)   VALUE SPACES.
             03 BALANCE        PIC 9(7)V99 VALUE ZEROS.
             03 VALUTAKODE     PIC X(3)    VALUE SPACES.

       PROCEDURE DIVISION.
           MOVE "1234567890"       TO KUNDE-ID
           MOVE "Lars"             TO FORNAVN
           MOVE "Hansen"           TO EFTERNAVN
           MOVE "DK12345678912345" TO KONTONUMMER
           MOVE 2500.75            TO BALANCE
           MOVE "DKK"              TO VALUTAKODE

      * Del 1 - samme udskrift som opgave 2
           DISPLAY KUNDE-ID
           DISPLAY FORNAVN EFTERNAVN
           DISPLAY KONTONUMMER
           DISPLAY BALANCE " " VALUTAKODE

      * Del 2 - hele strukturen på én linje via 01-niveauet
           DISPLAY "Hele KUNDEOPL:"
           DISPLAY KUNDEOPL
           STOP RUN.
