-- Create view proprietebatie based on Qgis Models

COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.proprietebatie IS 'Propriétés bâties';

COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.id_local IS 'Identifiant du local';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.comptecommunal IS 'Compte communal';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dnupro IS 'Compte propriétaire';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.cgocommune IS 'Code commune INSEE';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccopre IS 'Préfixe';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccosec IS 'Section';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dnupla IS 'Num plan';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.jdatat IS 'Date acte mutation';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.voie IS 'Voie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dnvoiri IS 'Num voirie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dindic IS 'Indice répétition';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.natvoi IS 'Nature voie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccovoi IS 'Code MAJIC voie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dvoilib IS 'Libellé voie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccoriv IS 'Code Rivoli voie';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dnubat IS 'Lettre bâtiment';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.descr IS 'Num entrée';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dniv IS 'Niveau étage';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dpor IS 'Num local ';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.invar IS 'Num invariant local';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccoaff IS 'Affectation PEV';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccoeva IS 'Code évaluation';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.cconlc IS 'Nature du local';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.dcapec IS 'Classement cadastral';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccolloc IS 'Collectivité locale d exonération';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.gnextl IS 'Nature exonération temp';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.jandeb IS 'Année début exonération';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.janimp IS 'Année retour imposition';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.gtauom IS 'Zone ordures ménagères';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.jannat IS 'Année construction';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.revcad IS 'Revenu cadastral';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.rcexba2 IS 'Revenu exonéré';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.rcbaia_tse IS '';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.rcbaia_com IS '';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.rcbaia_dep IS '';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.rcbaia_gp IS '';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.pexb IS 'Taux éxonération';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.parcelle IS 'Parcelle';
COMMENT ON COLUMN #schema_cadastrapp.proprietebatie.ccocac IS 'Catégorie du local';
