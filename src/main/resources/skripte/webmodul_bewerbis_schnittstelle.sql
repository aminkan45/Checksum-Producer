/*VEDA:f2c5bdff7467137019631693bfaddb8502aab6b65cc223f23b725c0ef501fde8*/

/*WR:BREAKONODBCERROR-*/

/*WR:IGNOREERRORINSTATEMENT*/
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(20 , 0 , 0 , 0 , 'webskriptversion-sst', '15.1.00' , null);
update webpar set value_wr ='15.1.00' where key_wr ='webskriptversion-sst';

-- Tabelle wird im externen BewerbIS verwendet. Diesnt der Verwaltung von OffenenStellenPks im Falle von Aktualisierung offener Stellen im externen System
create table webimportpks (
	pk {wr numeric(10,0)} NULL,
	pk_import {wr numeric(10,0)} NULL,
	tabelle_wr {wr varchar(100)} NULL
);

-- Tabbelle wird im externen und internen BewerbIS benutzt
create table webprotokollstelle (
	pk {wr numeric(10,0)} NULL,
	datum_wr {wr datetime()} NULL,
	uuid_wr {wr varchar(2000)} NULL,
	dbpk_wr {wr numeric(10,0)} NULL,
	fehler_wr {wr varchar(2000)} NULL,
	stellennr_wr {wr varchar(80)} NULL,
	bez_wr {wr varchar(1600)} NULL,
	online_wr {wr varchar(8)} NULL,
	tabelle_quaart_wr {wr numeric(10,0)} NULL,
	tabelle_quali_wr {wr numeric(10,0)} NULL,
	tabelle_quaaus_wr {wr numeric(10,0)} NULL,
	tabelle_ukz_wr {wr numeric(10,0)} NULL,
	tabelle_firma_wr {wr numeric(10,0)} NULL,
	tabelle_med_wr {wr numeric(10,0)} NULL,
	tabelle_utitel_wr {wr numeric(10,0)} NULL,
	tabelle_ostpro_wr {wr numeric(10,0)} NULL,
	tabelle_webpar_wr {wr numeric(10,0)} NULL,
	schnittstelle_wr {wr varchar(1600)} NULL,
	instanz_wr {wr varchar(1600)} NULL
);

update webprotokollstelle set instanz_wr = schnittstelle_wr where instanz_wr is null;

-- Tabbelle wird im externen und internen BewerbIS benutzt
create table webprotokollbewerbung (
	 pk {wr numeric(10,0)} NULL,
	 datum_wr {wr datetime()} NULL,
	 uuid_wr {wr varchar(2000)} NULL,
	 dbpk_wr {wr numeric(10,0)} NULL,
	 bewerber_wr {wr varchar(2000)} NULL,
	 stelle_wr {wr varchar(2000)} NULL,
	 anhaenge_wr {wr varchar(2000)} NULL,
	 wasloeschen_url_wr {wr varchar(2000)} NULL,
	 wasloeschen_ret_wr {wr varchar(2000)} NULL,
	 fehler_wr {wr varchar(2000)} NULL,
	 schnittstelle_wr {wr varchar(1600)} NULL,
	 instanz_wr {wr varchar(1600)} NULL
);

update webprotokollbewerbung set instanz_wr = schnittstelle_wr where instanz_wr is null;

create table webprotokollxmldaten (
	uuid_wr	{wr varchar(400)},
	hash_wr {wr varchar(400)},
	art_wr  {wr varchar(400)}
);


-- Tabelle zur Ablage des Status einer importierten Bewerbung. Kennzeichen uebertragungok_wr = 1,
-- d.h. die Bewerbung einschlie?lich Anh?nge sind in der Datenbank importiert worden.
create table webbngstatus (
	bngpk_wr {wr numeric(10,0)} NULL,
	uebertragungok_wr {wr numeric(10,0)} NULL
);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(21 , 0 , 0 , 0 , 'BewerbIS-Anrede-DiversZwei', 'Divers' , null);

create index indexwebprotokollstelle1 on webprotokollstelle (datum_wr,dbpk_wr);
create index indexwebprotokollstelle2 on webprotokollstelle (dbpk_wr);

/*Oracle*/
/*WR:DATABASE=3*/
/*WR:IGNOREERRORINSTATEMENT*/
ALTER TABLE webprotokollxmldaten add(xml_komp_daten_wr BLOB );

ALTER TABLE webprotokollstelle add(xml_daten_uuid_wr {wr varchar(400)} );
ALTER TABLE webprotokollstelle add(instanz_wr {wr varchar(1600)} );

ALTER TABLE webprotokollbewerbung add(xml_daten_uuid_wr {wr varchar(400)} );
ALTER TABLE webprotokollbewerbung add(instanz_wr {wr varchar(1600)} );

update webprotokollstelle set xml_komp_daten_wr = null where xml_daten_uuid_wr is null;
update webprotokollbewerbung set xml_komp_daten_wr = null where xml_daten_uuid_wr is null;

alter table webprotokollstelle drop(COLUMN xml_komp_daten_wr);
alter table webprotokollbewerbung drop(COLUMN xml_komp_daten_wr);

/*MSSQL*/
/*WR:DATABASE=1*/
/*WR:IGNOREERRORINSTATEMENT*/
ALTER TABLE webprotokollxmldaten add xml_komp_daten_wr image;

ALTER TABLE webprotokollstelle add xml_daten_uuid_wr {wr varchar(400)};
ALTER TABLE webprotokollstelle add instanz_wr  {wr varchar(1600)};

ALTER TABLE webprotokollbewerbung add xml_daten_uuid_wr {wr varchar(400)};
ALTER TABLE webprotokollbewerbung add instanz_wr  {wr varchar(1600)};

update webprotokollstelle set xml_komp_daten_wr = null where xml_daten_uuid_wr is null;
update webprotokollbewerbung set xml_komp_daten_wr = null where xml_daten_uuid_wr is null;

alter table webprotokollstelle drop COLUMN xml_komp_daten_wr;
alter table webprotokollbewerbung drop COLUMN xml_komp_daten_wr;
