-- Create lot Views based on Qgis Models

COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.lot IS 'lot';
COMMENT ON COLUMN #schema_cadastrapp.id_local IS 'Identifiant du local';
COMMENT ON COLUMN #schema_cadastrapp.dnulot IS 'Numéro du lot - 00Axxxx';
COMMENT ON COLUMN #schema_cadastrapp.dnumql IS 'Numérateur du lot';
COMMENT ON COLUMN #schema_cadastrapp.ddenql IS 'Dénominateur du lot';
