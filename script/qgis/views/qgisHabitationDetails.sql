-- Create views deschabitation, descproffessionnel, descdependance based on Qgis Models


CREATE MATERIALIZED VIEW #schema_cadastrapp.deschabitation AS
	SELECT *
	FROM dblink('host=#DBHost_qgis port=#DBPort_qgis dbname=#DBName_qgis user=#DBUser_qgis password=#DBpasswd_qgis'::text,
		'SELECT 
			pev.pev,
			pev.annee,
			pev.invar,
			pev.dnupev,
			pev.ccoaff,
			''Partie principale d''''habitation'' as dnupev_lib,
			ccoaff.ccoaff_lib,
			pevp.dnudes,
			pevp.detent,
			pevp.dsupdc,
			pevp.dnbniv,
			pevp.dnbpdc,
			dnbppr,
			dnbsam,
			dnbcha,
			dnbcu8,
			dnbcu9,
			dnbsea,
			dnbann,
			dnbbai,
			dnbdou,
			dnblav,
			dnbwc,
			geaulc,
			gelelc,
			ggazlc,
			gchclc,
			gteglc,
			gesclc,
			gasclc,
			gvorlc,
			cconad1.cconad_lib as cconad_ga,
			cconad2.cconad_lib as cconav_cv,
			cconad3.cconad_lib as cconad_gr,
			cconad4.cconad_lib as cconav_tr,
			dep1_dsueic  as dsueic_ga,
			dep2_dsueic  as dsueic_cv,
			dep3_dsueic  
			as dsueic_gr,
			dep4_dsueic  as dsueic_tr,
			dmatgm,
			dmatto
		from #DBSchema_qgis.pev
			left join #DBSchema_qgis.pevprincipale pevp on pev.pev=pevp.pev
			left join #DBSchema_qgis.ccoaff on pev.ccoaff=ccoaff.ccoaff
			left join #DBSchema_qgis.cconad cconad1 on pevp.dep1_cconad=cconad1.cconad
			left join #DBSchema_qgis.cconad cconad2 on pevp.dep2_cconad=cconad2.cconad
			left join #DBSchema_qgis.cconad cconad3 on pevp.dep3_cconad=cconad3.cconad
			left join #DBSchema_qgis.cconad cconad4 on pevp.dep4_cconad=cconad4.cconad'::text)
	deschabitation (
		pev character varying(20),
		annee character varying(4),
		invar character varying(10),
		dnupev character varying(3),
		ccoaff character varying(1),
		dnupev_lib character varying(50),
		ccoaff_lib character varying(150),
		dnudes character varying(3),
		detent character varying(1),
		dsupdc integer,
		dnbniv character varying(2),
		dnbpdc character varying(2),
		dnbppr character varying(2),
		dnbsam character varying(2),
		dnbcha character varying(2),
		dnbcu8 character varying(2),
		dnbcu9 character varying(2),
		dnbsea character varying(2),
		dnbann character varying(2),
		dnbbai character varying(2),
		dnbdou character varying(2),
		dnblav character varying(2),
		dnbwc character varying(2),
		geaulc character varying(1),
		gelelc character varying(1),
		ggazlc character varying(1),
		gchclc character varying(1),
		gteglc character varying(1),
		gesclc character varying(1),
		gasclc character varying(1),
		gvorlc character varying(1),
		cconad_ga  character varying(150),
		cconav_cv  character varying(150),
		cconad_gr character varying(150),
		cconav_tr character varying(150),
		dsueic_ga integer,
		dsueic_cv integer,
		dsueic_gr integer,
		dsueic_tr integer,
		dmatgm character varying(2),
		dmatto character varying(2)
		);

ALTER TABLE #schema_cadastrapp.deschabitation OWNER TO #user_cadastrapp;


CREATE MATERIALIZED VIEW #schema_cadastrapp.descproffessionnel AS
	SELECT
			descproffessionnel.pev,
			descproffessionnel.invar,
			descproffessionnel.annee,
			descproffessionnel.dsupot,
			descproffessionnel.dsup1,
			descproffessionnel.dsup2,
			descproffessionnel.dsup3,
			descproffessionnel.dsupk1,
			descproffessionnel.dsupk2,
			descproffessionnel.dnudes,
			descproffessionnel.vsurzt,
			descproffessionnel.ccocac,
			descproffessionnel.dnutrf,
			descproffessionnel.dcfloc,
			descproffessionnel.ccortar,
			descproffessionnel.ccorvl,
			descproffessionnel.dtaurv,
			descproffessionnel.dcmloc
		FROM dblink('host=#DBHost_qgis port=#DBPort_qgis dbname=#DBName_qgis user=#DBUser_qgis password=#DBpasswd_qgis'::text,
			'SELECT
				pvep.pev,
				pvep.invar,
				pvep.annee,
				CAST(pvep.dsupot AS integer),
				CAST(pvep.dsup1 AS integer),
				CAST(pvep.dsup2 AS integer),
				CAST(pvep.dsup3 AS integer),
				CAST(pvep.dsupk1 AS integer),
				CAST(pvep.dsupk2 AS integer),
				'''' as dnudes,
				''0'' as vsurzt,
				gpev.ccocac,
				gpev.dnutrf,
				gpev.dcfloc,
				gpev.ccortar,
				gpev.ccorvl,
				gpev.dtaurv,
				gpev.dcmloc
			from #DBSchema_qgis.pevprofessionnelle as pvep
				left join #DBSchema_qgis.pev as gpev on pvep.pev=gpev.pev'::text)
	descproffessionnel (
			pev character varying(20),
			invar character varying(16),
			annee character varying(4),
			dsupot integer,
			dsup1 integer,
			dsup2 integer,
			dsup3 integer,
			dsupk1 integer,
			dsupk2 integer,
			dnudes character varying(3),
			vsurzt integer,
			ccocac character varying(4),
  			dnutrf character varying(2),
  			dcfloc integer,
  			ccortar integer,
  			ccorvl character varying(2),
  			dtaurv integer,
  			dcmloc integer
	);

ALTER TABLE #schema_cadastrapp.descproffessionnel OWNER TO #user_cadastrapp;


CREATE MATERIALIZED VIEW #schema_cadastrapp.descdependance AS
	SELECT
			descdependance.pev,
			descdependance.invar,
			descdependance.annee,
			descdependance.dnudes,
			descdependance.cconad_lib,
			descdependance.dsudep,
			descdependance.dnbbai,
			descdependance.dnbdou,
			descdependance.dnblav,
			descdependance.dnbwc,
			descdependance.geaulc,
			descdependance.gelelc,
			descdependance.gchclc,
			descdependance.dmatgm,
			descdependance.dmatto
		FROM dblink('host=#DBHost_qgis port=#DBPort_qgis dbname=#DBName_qgis user=#DBUser_qgis password=#DBpasswd_qgis'::text,
			'SELECT 
				pev,
				invar,
				annee,
				dnudes,
				cconad_lib,
				dsudep,
				dnbbai,
				dnbdou,
				dnblav,
				dnbwc,
				geaulc,
				gelelc,
				gchclc,
				dmatgm,
				dmatto
			from #DBSchema_qgis.pevdependances
				left join #DBSchema_qgis.cconad on pevdependances.cconad=cconad.cconad'::text)
	descdependance (
		pev character varying(20),
		invar character varying(10),
		annee character varying(4),
		dnudes character varying(3),
		cconad_lib  character varying(150),
		dsudep integer,
		dnbbai character varying(2),
		dnbdou character varying(2),
		dnblav character varying(2) ,
		dnbwc character varying(2),
		geaulc character varying(1),
		gelelc  character varying(1),
		gchclc  character varying(1),
		dmatgm character varying(2),
		dmatto character varying(2)
	);

ALTER TABLE #schema_cadastrapp.descdependance OWNER TO #user_cadastrapp;

