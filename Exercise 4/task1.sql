-- Give an example of an unnormalized table. Describe why it is problematic to have 
-- an unnormalized table in the database. Include some example data in your answer.
-- The data should show clearly the problem (or problems) unnormalized table causes.

-- Normalisoimattomaksi tauluksi kutsutaan sellaista, jota ei olla jaettu useampaan tauluun, esimerkiksi:

OrderID
CustomerName
Address
Product1
Quantity1
Product2
Quantity2
Product3
Quantity3
...

-- Tämä taulu ei ole normalisoitu, sillä siinä on dataa liittyen tilauksiin ja tilauksen tietoihin, niin että jokaiselle tuotteelle
-- ja määrälle on oma sarakkeensa. Ongelmana tässä on mm: tilaus joka sisältää vain yhden tuotteen saa monta tyhjää saraketta,
-- kun taas tilaus, joka sisältää monta tuotetta, täytyy jokaiselle tilaukselle luoda aina näin monta saraketta tauluun
-- Myöskin tilauksia voi olla monia, joissa sama tilaajan nimi. Tilaajan nimi toistuu, ja datan määrä voi kasvaa todella suureksi-
-- tarpeettomasti. Myöskin tietojen päivittäminen on haastavaa. Jos yksi "Ardess" osiosta muuttuu, tarvii se muuttaa kaikille
-- taulun sarakkeille (vie aikaa ja lisää virheiden mahdollisuutta.)