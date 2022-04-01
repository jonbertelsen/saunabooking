# default-web-applikation

## Saunabooking - forslag til en løsning på 2. semester forår 2022

## Du skal gøre følgende for at få webapplikationen i luften:

1. Først skal du clone projektet eller downloade en zip-fil med projektet til din arbejdsstation.
2. Åbn Workbench og kør sql-filen `sauna.sql`, som ligger i mappen `resources`. Den opretter en database med en user-tabel og en test-database.
3. Du skal evt. ændre kodeord til databasen i projektet. Det gøres i filerne: `/persistence/ConnectionPool` i linie 14 og 15. Du skal også ændre i UserMapperTest.
4. Til sidst skal du lave en Tomcat konfiguration. Dvs, 
   1. klik på "Add Configuration ..."
   2. Klik på "+" og vælg "Tomcat Server Local".
   3. Klik på "Fix knappen"
   4. Vælg war-exploded som deployment type
   5. Nu kan du klikke på den grønne play-knap for at bygge og køre projektet.
   6. Så er der sauna-gus.
