-- View: cadastreapp_qgis.proprietaire

-- DROP VIEW cadastreapp_qgis.proprietaire;

CREATE OR REPLACE VIEW cadastreapp_qgis.proprietaire AS 
 SELECT proprietaire.id_proprietaire, proprietaire.dnupro, proprietaire.lot, proprietaire.dnulp, proprietaire.ccocif, proprietaire.dnuper, proprietaire.ccodro_c, proprietaire.ccodem_c, proprietaire.gdesip, proprietaire.gtoper, proprietaire.ccoqua_c, proprietaire.dnatpr_c, proprietaire.ccogrm_c, proprietaire.dsglpm, proprietaire.dforme, proprietaire.ddenom, proprietaire.gtyp3, proprietaire.gtyp4, proprietaire.gtyp5, proprietaire.gtyp6, proprietaire.dlign3, proprietaire.dlign4, proprietaire.dlign5, proprietaire.dlign6, proprietaire.ccopay, proprietaire.ccodep1a2, proprietaire.ccodira, proprietaire.ccocom_adr, proprietaire.ccovoi, proprietaire.ccoriv, proprietaire.dnvoiri, proprietaire.dindic, proprietaire.ccopos, proprietaire.dnirpp, proprietaire.dqualp, proprietaire.dnomlp, proprietaire.dprnlp, proprietaire.jdatnss, proprietaire.dldnss, proprietaire.epxnee, proprietaire.dnomcp, proprietaire.dprncp, proprietaire.dformjur, proprietaire.dsiren, proprietaire.ccodep, proprietaire.ccodir, proprietaire.ccocom, proprietaire.comptecommunal, prop_ccodro.ccodro, prop_ccodro.ccodro_lib, prop_ccoqua.ccoqua, prop_ccoqua.ccoqua_lib, prop_ccogrm.ccogrm, prop_ccogrm.ccogrm_lib, prop_ccodem.ccodem, prop_ccodem.ccodem_lib, prop_dnatpr.dnatpr, prop_dnatpr.dnatpr_lib
   FROM dblink('host=MQ-CMS-CRAI-001.fasgfi.fr dbname=qadastre user=cadastreapp password=c'::text, 'select 
        proprietaire,
dnupro,
lot,
dnulp,
ccocif,
dnuper,
ccodro as ccodro_c,
ccodem as ccodem_c,
gdesip,
gtoper,
ccoqua as ccoqua_c,
dnatpr as dnatpr_c,
ccogrm as ccogrm_c,
dsglpm,
dforme,
ddenom,
gtyp3,
gtyp4,
gtyp5,
gtyp6,
dlign3,
dlign4,
dlign5,
dlign6,
ccopay,
ccodep1a2,
ccodira,
ccocom_adr,
ccovoi,
ccoriv,
dnvoiri,
dindic,
ccopos,
dnirpp,
dqualp,
dnomlp,
dprnlp,
jdatnss,
dldnss,
epxnee,
dnomcp,
dprncp,
dformjur,
dsiren,
ccodep,
ccodir,
ccocom,
comptecommunal from proprietaire'::text) proprietaire(id_proprietaire character varying(20), dnupro character varying(6), lot character varying, dnulp character varying(2), ccocif character varying(4), dnuper character varying(6), ccodro_c character varying(1), ccodem_c character varying(1), gdesip character varying(1), gtoper character varying(1), ccoqua_c character varying(1), dnatpr_c character varying(3), ccogrm_c character varying(2), dsglpm character varying(10), dforme character varying(7), ddenom character varying(60), gtyp3 character varying(1), gtyp4 character varying(1), gtyp5 character varying(1), gtyp6 character varying(1), dlign3 character varying(30), dlign4 character varying(36), dlign5 character varying(30), dlign6 character varying(32), ccopay character varying(3), ccodep1a2 character varying(2), ccodira character varying(1), ccocom_adr character varying(3), ccovoi character varying(5), ccoriv character varying(4), dnvoiri character varying(4), dindic character varying(1), ccopos character varying(5), dnirpp character varying(10), dqualp character varying(3), dnomlp character varying(30), dprnlp character varying(15), jdatnss date, dldnss character varying(58), epxnee character varying(3), dnomcp character varying(30), dprncp character varying(15), dformjur character varying(4), dsiren character varying(10), ccodep character varying(2), ccodir character varying(1), ccocom character varying(3), comptecommunal character varying(15))
   LEFT JOIN cadastreapp_qgis.prop_ccodro ON proprietaire.ccodro_c::text = prop_ccodro.ccodro::text
   LEFT JOIN cadastreapp_qgis.prop_ccoqua ON proprietaire.ccoqua_c::text = prop_ccoqua.ccoqua::text
   LEFT JOIN cadastreapp_qgis.prop_ccogrm ON proprietaire.ccogrm_c::text = prop_ccogrm.ccogrm::text
   LEFT JOIN cadastreapp_qgis.prop_ccodem ON proprietaire.ccodem_c::text = prop_ccodem.ccodem::text
   LEFT JOIN cadastreapp_qgis.prop_dnatpr ON proprietaire.dnatpr_c::text = prop_dnatpr.dnatpr::text;

ALTER TABLE cadastreapp_qgis.proprietaire
  OWNER TO postgres;
