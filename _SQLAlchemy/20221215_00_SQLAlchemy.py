# ------------------------------------------------------------------------
# ---*******************************  01 ******************************---
# ------------------------------------------------------------------------
# -- 1.
# -- a) maak een lijst met de namen van alle landen
# -- b) hoeveel landen zijn er in totaal ?
# -- c) voeg het land 'Belgium' toe met de eerstvolgende nummer voor primary key
# -- d) wat is de waarde voor last_update van België? Wat is het datatype van last_update?


from sqlalchemy import create_engine
from sqlalchemy import MetaData

engine = create_engine('postgresql+psycopg2://postgres:Syntra_1408@localhost: 5432/dvdrental')
metadata = MetaData()

countries = Table('country', metadata,
                  Column('country_id'),
                  Column('country')
                  )

metadata.create_all(engine)


s = countries.select().order_by(countries.c.country_id)
rp = engine.execute(s)
results = rp.fetchall()
print(results)





