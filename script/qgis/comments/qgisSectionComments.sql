-- Create view section based on Qgis Models
COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.section IS 'Section';
COMMENT ON COLUMN #schema_cadastrapp.section.cgocommune IS 'Section cadastrale';
COMMENT ON COLUMN #schema_cadastrapp.section.cgocommune IS 'Préfixe de section ou quartier';

