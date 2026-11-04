      * Opgave 5 - copybooks
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPGAVE5.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 KUNDEOPL.
           COPY "KUNDEOPL.cpy".
      * Extra info - to ens strukturer, kvalificeres med OF
       01 KUNDEOPL-01.
           COPY "KUNDEOPL.cpy".
       01 KUNDEOPL-02.
           COPY "KUNDEOPL.cpy".

       PROCEDURE DIVISION.
           INITIALIZE KUNDEOPL KUNDEOPL-01 KUNDEOPL-02
           MOVE "1234567890"         TO KUNDE-ID OF KUNDEOPL
           MOVE "Lars"               TO FORNAVN OF KUNDEOPL
           MOVE "Hansen"             TO EFTERNAVN OF KUNDEOPL
           MOVE "DK12345678912345"   TO KONTONUMMER OF KUNDEOPL
           MOVE 2500.75              TO BALANCE OF KUNDEOPL
           MOVE "DKK"                TO VALUTAKODE OF KUNDEOPL
      * Nye felter fra copybooken
           MOVE "Strandvejen"        TO VEJNAVN OF KUNDEOPL
           MOVE "45"                 TO HUSNR OF KUNDEOPL
           MOVE "2"                  TO ETAGE OF KUNDEOPL
           MOVE "th"                 TO SIDE OF KUNDEOPL
           MOVE "Hellerup"           TO BY-X OF KUNDEOPL
           MOVE "2900"               TO POSTNR OF KUNDEOPL
           MOVE "DK"                 TO LANDE-KODE OF KUNDEOPL
           MOVE "20123456"           TO TELEFON OF KUNDEOPL
           MOVE "lars.hansen@mail.dk" TO EMAIL OF KUNDEOPL

           DISPLAY "Vejnavn   : " VEJNAVN OF KUNDEOPL
           DISPLAY "Husnr     : " HUSNR OF KUNDEOPL
           DISPLAY "Etage     : " ETAGE OF KUNDEOPL
           DISPLAY "Side      : " SIDE OF KUNDEOPL
           DISPLAY "By        : " BY-X OF KUNDEOPL
           DISPLAY "Postnr    : " POSTNR OF KUNDEOPL
           DISPLAY "Landekode : " LANDE-KODE OF KUNDEOPL
           DISPLAY "Telefon   : " TELEFON OF KUNDEOPL
           DISPLAY "Email     : " EMAIL OF KUNDEOPL
           DISPLAY "Samlet ADDRESSE: " ADDRESSE OF KUNDEOPL

           MOVE "Anne"  TO FORNAVN OF KUNDEOPL-01
           MOVE "Peter" TO FORNAVN OF KUNDEOPL-02
           DISPLAY "FORNAVN OF KUNDEOPL-01: " FORNAVN OF KUNDEOPL-01
           DISPLAY "FORNAVN OF KUNDEOPL-02: " FORNAVN OF KUNDEOPL-02
           STOP RUN.
