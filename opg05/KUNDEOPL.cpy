      * KUNDEOPL - kundestruktur (uden 01-niveau), 211 tegn i alt
           02 KUNDE-ID          PIC X(10).
           02 FORNAVN           PIC X(20).
           02 EFTERNAVN         PIC X(20).
           02 KONTOINFO.
              03 KONTONUMMER    PIC X(20).
              03 BALANCE        PIC 9(7)V99.
              03 VALUTAKODE     PIC X(3).
           02 ADDRESSE.
              03 VEJNAVN        PIC X(30).
              03 HUSNR          PIC X(5).
              03 ETAGE          PIC X(5).
              03 SIDE           PIC X(5).
      * BY er et reserveret ord - derfor BY-X (som i opgave 4)
              03 BY-X           PIC X(20).
              03 POSTNR         PIC X(4).
              03 LANDE-KODE     PIC X(2).
      * Opgaven giver ikke gruppen et navn - KONTAKT er valgt her
           02 KONTAKT.
              03 TELEFON        PIC X(8).
              03 EMAIL          PIC X(50).
