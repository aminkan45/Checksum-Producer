/*VEDA:7dbd2435937fd12bde9e432df9607714f165064eab28c15c3c9d8856f56b07ee*/

/*WR:BREAKONODBCERROR-*/

/*WR:IGNOREERRORINSTATEMENT*/
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(20 , 0 , 0 , 0 , 'webskriptversion', '16.0-0' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(26 , 0 , 0 , 0 , 'webtitle', 'VEDA HR Informationssysteme AG WebModul' , null);

update webpar set value_wr ='16.0-0' where key_wr ='webskriptversion';

update WEBPAR set VALUE_WR ='2' where KEY_WR ='menuetyp' and VALUE_WR ='1';

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(24 , 0 , 0 , 0 , 'seminar_ver_auswahl', (select value_wr from webpar where key_wr ='urlaub_ver_auswahl') , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'passsicherheit','1' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'CaptchaAnzahlVersuche','3' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'Rechte','1' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'impressum','0' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'impu1','null' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'impu2','null' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'impu3','null' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(25 , 0 , 0 , 0 , 'impanz','2' , null);

delete from webtext where seite='neuemassnahme' and id='B2';
delete from webtext where seite like '%bewerbe%' and id ='B35' and text ='Land';
delete from webtext where seite like '%bewerbe%' and id ='B35' and text ='Hinweis zum Qualifikationsprofil';
delete from webtext where seite='webpassaendern' and id='108';
delete from webtext where seite='webpassaendern' and id='81';
delete from webtext where seite='wis_passaendern' and id='81';
delete from webtext where seite='1';

delete from webpar where value_wr ='0' and dbaccount =0 and dbcontract = 0 and text_wr is not null and bemerkung_wr is not null;


delete from webfed;
drop table WEBFed;

delete from webasq;
drop table WebASQ;

delete from webksq;
drop table WebKSQ;

delete from webwsq;
drop table WebWSQ;

delete from websession;
drop table Websession;

delete from webab;
drop table WebAb;

delete from webpar where key_wr = 'urlaubsoptimierung';

create table webgenehmigungslink (
	genehmigerpk_wr {wr numeric(10,0)} NULL,
	uuid_wr {wr varchar(1000)} NULL,
	link_wr {wr varchar(2000)} NULL,
	genehmigungdatenpk_wr {wr numeric(10,0)} NULL
);

create table webgenehmigungsworkflow (
	abwartpk_wr {wr numeric(10,0)} NULL,
	vertreter_genehmigung_wr {wr numeric(10,0)} NULL,
	personalabteilung_genehmigung_wr {wr numeric(10,0)} NULL,
	vertreter_bemerkung_wr {wr numeric(10,0)} NULL,
	vorgesetzter_bemerkung_wr {wr numeric(10,0)} NULL,
	storno_genehmigung_wr {wr numeric(10,0)} NULL,
	anzahl_genehmiger_wr {wr numeric(10,0)} NULL,
	um_genehmigung_wr {wr numeric(10,0)} NULL,
	storno_text_wr {wr varchar(2000)} NULL,
	loeschen_wr {wr numeric(10,0)} NULL,
	aendern_wr {wr numeric(10,0)} NULL
);

create table webbewerbungenkonfig (
	ostpk_wr {wr numeric(10,0)} NULL,
	portalTyp_wr {wr numeric(10,0)} NULL,
	seite_wr {wr numeric(10,0)} NULL,
	feldnr_wr {wr varchar(100)} NULL,
	anzeigen_wr {wr numeric(10,0)} NULL,
	reihenfolge_wr {wr numeric(10,0)} NULL,
	pflichtfeld_wr {wr numeric(10,0)} NULL,
	aenderbar_wr {wr numeric(10,0)} NULL,
	dokuart_wr {wr numeric(10,0)} NULL
);

create table webbewerbungenkonfigKategorie (
	stellenkategoriepk_wr {wr numeric(10,0)} NULL,
	portalTyp_wr {wr numeric(10,0)} NULL,
	seite_wr {wr numeric(10,0)} NULL,
	feldnr_wr {wr varchar(100)} NULL,
	anzeigen_wr {wr numeric(10,0)} NULL,
	reihenfolge_wr {wr numeric(10,0)} NULL,
	pflichtfeld_wr {wr numeric(10,0)} NULL,
	aenderbar_wr {wr numeric(10,0)} NULL,
	dokuart_wr {wr numeric(10,0)} NULL
);

create table webgenehmiger (
	genehmigungdatenpk_wr {wr numeric(10,0)} NULL,
	genehmiger1pk_wr {wr numeric(10,0)} NULL,
	genehmiger2pk_wr {wr numeric(10,0)} NULL,
	genehmiger3pk_wr {wr numeric(10,0)} NULL
);

-- Tabelle zur Ablage des Status einer importierten Bewerbung. Kennzeichen uebertragungok_wr = 1,
-- d.h. die Bewerbung einschlie�lich Anh�nge sind in der Datenbank importiert worden.
create table webbngstatus (
	bngpk_wr {wr numeric(10,0)} NULL,
	uebertragungok_wr {wr numeric(10,0)} NULL
);

create table weberinnerungen (
	pk {wr numeric(10,0)},
	ereignis_wr {wr varchar(1000)} NULL,
	sql_tab_wr {wr varchar(1000)} NULL,
	sql_feld_wr {wr varchar(1000)} NULL,
	email_vg_wr {wr numeric(10,0)} NULL,
	email_um_wr {wr numeric(10,0)} NULL,
	email_p_wr {wr numeric(10,0)} NULL,
	infobox_vg_wr {wr numeric(10,0)} NULL,
	infobox_um_wr {wr numeric(10,0)} NULL,
	tage_vorher_wr {wr numeric(10,0)} NULL,
	tage_nachher_wr {wr numeric(10,0)} NULL,
	text_vg_wr varchar(max) NULL ,
	betreff_vg_wr {wr varchar(200)} NULL,
	text_um_wr varchar(max) NULL ,
	betreff_um_wr {wr varchar(200)} NULL,
	text_p_wr varchar(max) NULL ,
	betreff_p_wr {wr varchar(200)} NULL
);
CREATE UNIQUE INDEX weberinnerungenIndex ON weberinnerungen (pk,ereignis_wr);

insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(10,'Probezeitende','ma','Probezeitb_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(20,'Vertragsbefristung','PERSON','VertragBis_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(30,'Neueintritt','PERSON','ErstEintri_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(40,'Austritt','PERSON','Austritt_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(50,'Geburtstag (ohne Altersangabe)','PERSON','GebDatum_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(60,'Geburtstag (mit Altersangabe)','PERSON','GebDatum_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(70,'Jubil�um','ma','JDZeit_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(80,'Beginn Elternzeit','MAMS','Beginn1_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(90,'Ende Elternzeit','MAMS','Ende4_WR');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(100,'Beginn Mutterschutz','MAMS','VorEntbind_WR-6*7');
insert into weberinnerungen (pk,ereignis_wr,sql_tab_wr,sql_feld_wr) values(110,'Ende Mutterschutz','MAMS','VorEntbind_WR+8*7');

create table webereignisse (
	fuer_person_pk {wr numeric(10,0)},
	ereignis_pk {wr numeric(10,0)},
	kenntnis_person_pk {wr numeric(10,0)},
	wer_wr {wr numeric(10,0)},
	ereignis_datum_wr {wr datetime()} NULL,
	datum_wr {wr datetime()} NULL
);
CREATE UNIQUE INDEX webereignisseIndex ON webereignisse (fuer_person_pk,ereignis_pk,kenntnis_person_pk,wer_wr,datum_wr);

create table webKalenderFilter (
	personenpk_wr {wr numeric(10,0)} NULL,
	fitername_wr {wr varchar(1000)} NULL,
	art_wr {wr numeric(10,0)} NULL,
	auspk_wr {wr numeric(10,0)} NULL,
	funktionpk_wr {wr varchar(2000)} NULL,
	und_wr {wr varchar(10)} NULL,
	stellenpk_wr {wr varchar(2000)} NULL,
	mitarbeiterpk_wr {wr varchar(2000)} NULL
);

create table webmaeinstellungen (
	persnrpk_wr {wr numeric(10,0)} NULL,
	key_wr {wr varchar(1000)} NULL,
	valuetext_wr {wr varchar(2000)} NULL,
	valuezahl_wr {wr numeric(10,0)} NULL,
	valuepk_wr {wr numeric(10,0)} NULL
);

create table webversion (
	pk {wr numeric(10,0)} NULL,
	version_wr {wr varchar(100)} NULL,
	datum_wr {wr datetime()} NULL,
	bemerkung_wr {wr varchar(1000)} NULL
);

create table webrechte (
	pk {wr numeric(10,0)} NULL,
	webversionpk_wr {wr numeric(10,0)} NULL,
	menuepunkt_wr {wr varchar(500)} NULL ,
	Persnr_wr {wr numeric(10,0)} NULL ,
	uuser_wr {wr numeric(10,0)} NULL ,
	Seite_wr {wr varchar(500)} NULL
);
create index indexwebrechte1 on webrechte (webversionpk_wr);
create index indexwebrechte2 on webrechte (menuepunkt_wr);
create index indexwebrechte3 on webrechte (seite_wr);

create table webrechtedateien (
	pk {wr numeric(10,0)} NULL,
	webrechtepk_wr {wr numeric(10,0)} NULL,
	datei_wr {wr varchar(2000)} NULL
);

CREATE TABLE weblasttestlinks (
	datum_wr {wr datetime()} NULL,
	was_wr {wr numeric(10,0)} NOT NULL ,
	link_wr {wr varchar(2000)} NULL,
	frei1_wr {wr varchar(1000)} NULL,
	frei2_wr {wr varchar(1000)} NULL
);

CREATE TABLE webprotokollp (
	wann_wr {wr datetime()} NULL,
	was_wr {wr numeric(10,0)} NOT NULL ,
	text_wr {wr varchar(2000)} NULL,
	frei1_wr {wr varchar(1000)} NULL,
	frei2_wr {wr varchar(1000)} NULL
);

delete from webvorgesetzter;
drop table webvorgesetzter;

CREATE TABLE webvorgesetzter (
	vorgesetzter_wr {wr numeric(10,0)} NOT NULL ,
	mitarbeiter_wr {wr numeric(10,0)} NOT NULL,
	um_wr {wr numeric(10,0)} NOT NULL,
	lfdnr_wr {wr numeric(10,0)} NULL
);

CREATE TABLE webpersonz (
	pk {wr numeric(10,0)} NOT NULL ,
	persnr_wr {wr numeric(10,0)} NOT NULL ,
	key_wr {wr varchar(100)} NULL,
	value_wr {wr varchar(300)} NULL
);


CREATE TABLE webzaehler (
	pk {wr numeric(10,0)} NOT NULL ,
	datum_wr {wr datetime()} NULL,
	zaehler_wr {wr numeric(10,0)} NULL
);

CREATE TABLE Webtext (
	PK {wr numeric(10,0)} NOT NULL ,
	seite {wr varchar(50)} NULL,
	id {wr varchar(50)} NULL ,
	sprache {wr numeric(10,0)} NULL ,
	geaendert {wr numeric(10,0)} NULL,
	text {wr varchar(800)} NULL ,
	tooltip {wr varchar(800)} NULL,
	webfedpk_wr {wr numeric(10,0)} NULL,
	modul_wr {wr numeric(10,0)} NULL
);

update webtext set text ='Das Datum Durchf�hrung bis ist noch nicht erreicht. Bitte korrigieren Sie dieses.' where seite='maneuemassnahme' and id='78' and sprache =1;
update webtext set text =': Durchf�hrung dokumentiert' where seite='maneuemassnahme' and id='23' and sprache =1;
update webtext set text ='Betrag 1' where seite='maneuemassnahme' and id='M309' and sprache =1;
update webtext set text ='Betrag 1' where seite='neuemassnahme' and id='M309' and sprache =1;

update webtext set text = REPLACE(REPLACE(REPLACE(text, '&auml;', '�'), '&uuml;', '�'), '&ouml;', '�');
update webtext set text='Gespr�chspartner der PE' where seite='mamitarbeitergespraechaendern' and id='M4' and sprache = 1;
update webtext set text='Gespr�chspartner der PE' where seite='mamitarbeitergespraechneu' and id='M3' and sprache = 1;

update webtext set text='Genehmigung erfolgreich durchgef�hrt' where seite='vertretergenehmigungen' and id='71' and sprache = 1;
update webtext set text='Ablehnung erfolgreich durchgef�hrt' where seite='vertretergenehmigungen' and id='72' and sprache = 1;
update webtext set text='L�schung erfolgreich durchgef�hrt' where seite='vertretergenehmigungen' and id='73' and sprache = 1;
update webtext set text='Urlaubs-/Abwesenheitsantr�ge' where seite='frame2' and id='menue24a' and sprache = 1;
update webtext set text='Mitarbeitersuche' where seite='person' and id='1' and sprache = 1;
update webtext set text='Neue Mitarbeitergespr�che' where seite='frame2' and id='menue9' and sprache = 1;
update webtext set text='Neue Mitarbeitergespr�che', tooltip='Neue Mitarbeitergespr�che' where seite='mamitarbeitergespraeche' and id='menue9' and sprache = 1;
update webtext set text='Geh�lter�bersicht' where seite='frame2' and id='menue15a' and sprache = 1;
update webtext set text='Maske',webfedpk_wr='0' where seite='massnahmen' and id='daten1' and sprache = 1;
update webtext set text='Tabelle',webfedpk_wr='54000',tooltip='mnhma:15' where seite='mamassnahmen' and id='daten2' and sprache = 1;
update webtext set text='Tabelleum',webfedpk_wr='14432',tooltip='mnhma:3' where seite='mamassnahmen' and id='daten3' and sprache = 1;
update webtext set text='Personal-Nr.' where seite='mauebersicht' and id ='M30' and sprache = 1;
update webtext set text='Dauer' where seite='mauebersicht' and id ='M31' and sprache = 1;
update webtext set text='Ersteintritt' where seite='mauebersicht' and id ='M32' and sprache = 1;
update webtext set text='Geburtsort' where seite='mauebersicht' and id ='M22' and sprache = 1;
update webtext set text='Alter' where seite='mauebersicht' and id ='M23' and sprache = 1;
update webtext set text='Staatsangeh�rigkeit' where seite='mauebersicht' and id ='M24' and sprache = 1;

update Webtext set text ='Berechnung l�uft... bitte warten' where seite = 'urlaubsantrag' and id ='M06' and geaendert = 0;

update Webtext set text ='W�hrungskennzeichen der Gehaltszahlung' where seite = 'gehaltshistorieeinsehen' and id ='M23' and geaendert = 0;
update Webtext set text ='Verm�genswirksame Leistungen' where seite = 'gehaltshistorieeinsehen' and id ='M12' and geaendert = 0;
update webtext set text ='Abwesenheit' where seite='wis_urlaubsantrag' and id='T02' and sprache =1 and geaendert = 0;

delete from webtext where webfedpk_wr in (6010,6011,6012,6013,6014,6015,6016,6017,6017,6018,6019,6020,6021,6022,6023,6024,6050,6051,6052,6053,6054,6055,6056,6057,6058,6059,6060,6061,6062,6063,6064,9104,10348,10349,14689,14690,14691,14692,14693,14694,14695,14696,14697,14698,14699,15000,15001,15002,15004,15005,15006,15007,15008,15009,15010,15050,15052,15053,15054,15683,15684,15685,15686,15687,15688,15689,15690,15691,15692,15693,15694,15695,15696,15698,15699,19791,19792,19793,19794,30000,30001,30002,30003,30004,40000,40001,50000,50001,50002,54000,54001,54002,54003,54004,54005,54006,54007,54008,54009,730800,730801,730802,730803,730804,730805,730806,730807,730810,730811,730812,730813,730820,730821,730822,730823,730823,730824,730833,730934);

delete from webtext where seite ='bewerben' and sprache = 1 and ( id='M0' or id='M1' or id='M2' or id='M3' or id='M4' or id='M5' or id='M6' or id='M7' or id='M8' or id='M9'or id='M20' or id='M21' or id='M22' or id='M23' or id='M24' or id='M25') and id not like 'MB%';

delete from webtext where seite ='bewerben' and sprache = 1 and ( id='B0' or id='B1' or id='B2' or id='B3' or id='B4' or id='B5' or id='B6' or id='B7' or id='B8' or id='B9'or id='B10' or id='B12' or id='B13' or id='B14' or id='B15' or id='B16' or id='B17' or id='B18' or id='B19' or id='B20' or id='B21' or id='B22' or id='B23' or id='B24' or id='B25' or id='B26' or id='B27' or id='B28' or id='B29' or id='B30' or id='B31');

delete from webtext where seite ='bewerbez' and sprache = 1 and ( id='B0' or id='B1' or id='B2' or id='B3' or id='B4' or id='B5' or id='B6' or id='B7' or id='B8' or id='B9'or id='B10' or id='B12' or id='B13' or id='B14' or id='B15' or id='B16' or id='B17' or id='B18' or id='B19' or id='B20' or id='B21' or id='B22' or id='B23' or id='B24' or id='B25' or id='B26' or id='B27' or id='B28' or id='B29' or id='B30' or id='B31');

delete from webtext where seite ='ibewerbz' and sprache = 1 and ( id='B0' or id='B1' or id='B2' or id='B3' or id='B4' or id='B5' or id='B6' or id='B7' or id='B8' or id='B9'or id='B10' or id='B12' or id='B13' or id='B14' or id='B15' or id='B16' or id='B17' or id='B18' or id='B19' or id='B20' or id='B21' or id='B22' or id='B23' or id='B24' or id='B25' or id='B26' or id='B27' or id='B28' or id='B29' or id='B30' or id='B31');

delete from webtext where seite ='iabewerz' and sprache = 1 and ( id='B0' or id='B1' or id='B2' or id='B3' or id='B4' or id='B5' or id='B6' or id='B7' or id='B8' or id='B9'or id='B10' or id='B12' or id='B13' or id='B14' or id='B15' or id='B16' or id='B17' or id='B18' or id='B19' or id='B20' or id='B21' or id='B22' or id='B23' or id='B24' or id='B25' or id='B26' or id='B27' or id='B28' or id='B29' or id='B30' or id='B31');

delete from webtext where seite ='SQL';

update Webtext set seite ='vertretergenehmigungbemerkung' where webfedpk_wr = 900005;

update webtext set text='Datum stattgefunden PE-Gespr�ch' where text='Datum stattgefunden' and webfedpk_wr in (10252,5029,7029,6014,10152,5069);

CREATE TABLE Websprach (
	PK {wr numeric(10,0)} NOT NULL ,
	Sprache {wr varchar(50)} NULL,
	Bemerkung {wr varchar(500)} NULL
);

delete from Websprach where pk = 1 and sprache ='Basis Sprache';

insert into Websprach (PK,Sprache,Bemerkung ) values(1 , 'Basis Sprache' , 'Testsprache');

CREATE TABLE WebPerson (
	PK {wr numeric(10,0)} NOT NULL ,
	persnr_wr {wr numeric(10,0)} NULL ,
	sprache_wr {wr numeric(10,0)} NULL
);

/*WR:IGNOREERRORINSTATEMENT*/
CREATE TABLE WebSicherheit (
	PK {wr numeric(10,0)} NOT NULL ,
	Menuepunkt_wr {wr varchar(500)} NULL ,
	Persnr_wr {wr numeric(10,0)} NULL ,
	uuser_wr {wr numeric(10,0)} NULL ,
	Seite_wr {wr varchar(500)} NULL,
	gruppe_wr {wr varchar(50)} NULL,
	reihenfolge_wr {wr numeric(10,0)} NULL
);


insert into WebSicherheit (PK,Menuepunkt_wr,Persnr_wr,uuser_wr,Seite_wr,gruppe_wr)
select PK,'menue14d',Persnr_wr,uuser_wr,Seite_wr,gruppe_wr
from WebSicherheit where Menuepunkt_wr = 'menue15' and Menuepunkt_wr <> 'menue14d';

insert into WebSicherheit (PK,Menuepunkt_wr,Persnr_wr,uuser_wr,Seite_wr,gruppe_wr)
select PK,'menue14e',Persnr_wr,uuser_wr,Seite_wr,gruppe_wr
from WebSicherheit where Menuepunkt_wr = 'menue15a' and Menuepunkt_wr <> 'menue14e';

insert into WebSicherheit (PK,Menuepunkt_wr,Persnr_wr,uuser_wr,Seite_wr,gruppe_wr)
select distinct PK,'menue14a',Persnr_wr,uuser_wr,Seite_wr,gruppe_wr
from WebSicherheit where Menuepunkt_wr in ('menue15','menue15a') and Menuepunkt_wr <> 'menue14a';

insert into WebSicherheit (PK,Menuepunkt_wr,Persnr_wr,uuser_wr,Seite_wr,gruppe_wr)
select distinct PK,'menue214a',Persnr_wr,uuser_wr,Seite_wr,gruppe_wr
from WebSicherheit where Menuepunkt_wr = 'menue215' and Menuepunkt_wr <> 'menue214a';

insert into WebSicherheit (PK,Menuepunkt_wr,Persnr_wr,uuser_wr,Seite_wr,gruppe_wr)
select distinct PK,'menue16c',Persnr_wr,uuser_wr,Seite_wr,gruppe_wr
from WebSicherheit where Menuepunkt_wr = 'menue16' and seite_wr = '�ndern';

CREATE TABLE WebAb (
	PK {wr numeric(10,0)} NOT NULL ,
	Tabelle_wr {wr varchar(50)} NULL ,
	Nummer_wr {wr numeric(10,0)} NULL,
	seite_wr  {wr varchar(500)} NULL,
	WEBABPK_WR  {wr numeric(10,0)} NULL
);

CREATE TABLE Websession (
	benutzer_wr {wr varchar(100)} NULL ,
	sessionid_wr {wr varchar(300)} NULL ,
	wann_wr {wr datetime()} NULL ,
	csfrtoken_wr {wr varchar(300)} NULL,
	weblgnrtrs_wr {wr numeric(10,0)} NULL
);

CREATE TABLE WEBFed (
	PK {wr numeric(10,0)} NOT NULL ,
	WebAbPK_wr {wr numeric(10,0)} NOT NULL ,
	TabelleAl_wr {wr varchar(50)} NULL ,
	Feldname_wr {wr varchar(2000)} NULL ,
	Darname_wr {wr varchar(100)} NULL ,
	Anzeige_wr {wr numeric(10,0)} NULL ,
	Benoetigt_wr {wr numeric(10,0)} NULL ,
	Breite_wr {wr numeric(10,0)} NULL ,
	SortFeld_wr {wr varchar(1000)} NULL
);

CREATE TABLE WebASQ (
	PK {wr numeric(10,0)} NOT NULL ,
	WebAbPK_wr {wr numeric(10,0)} NULL ,
	FromSQL_wr {wr varchar(100)} NULL ,
	WhereSQL_wr {wr varchar(100)} NULL
);


CREATE TABLE WebKSQ (
	PK {wr numeric(10,0)} NOT NULL ,
	WebAbPK_wr {wr numeric(10,0)} NULL ,
	FromSQL_wr {wr varchar(100)} NULL ,
	WhereSQL_wr {wr varchar(100)} NULL
);

CREATE TABLE WebWSQ (
	PK {wr numeric(10,0)} NOT NULL ,
	WebAbPK_wr {wr numeric(10,0)} NULL ,
	FromSQL_wr {wr varchar(2000)} NULL ,
	WhereSQL_wr {wr varchar(1000)} NULL
);

/*WR:IGNOREERRORINSTATEMENT*/
CREATE TABLE WebEmail (
	PK {wr numeric(10,0)} NULL ,
	key_wr {wr varchar(50)} NULL ,
	email_wr {wr varchar(1000)} NULL ,
	text_wr {wr varchar(2000)} NULL ,
	status_wr {wr numeric(10,0)} NULL ,
	betreff_wr {wr varchar(200)} NULL,
	datum_wr {wr datetime()} NULL,
	datenpk_wr {wr numeric(10,0)} NULL
);


/*WR:IGNOREERRORINSTATEMENT*/
CREATE TABLE webgruppen (
	pk {wr numeric(10,0)} NULL ,
	name_wr {wr varchar(50)} NULL ,
	persnr_wr {wr numeric(10,0)} NULL ,
	bez_wr {wr varchar(500)} NULL
);

/*WR:IGNOREERRORINSTATEMENT*/
CREATE TABLE webcaptcha (
	personenpk_wr {wr numeric(10,0)} NULL ,
	ip_wr {wr varchar(50)} NULL ,
	letzteraufruf_wr {wr datetime()} NULL
);

/*WR:IGNOREERRORINSTATEMENT*/
create table webdokumentenrechte (
	dokuartpk_wr {wr numeric(10,0)} NULL,
	mitarbeiter_wr {wr numeric(10,0)} NULL,
	vorgesetzter_wr {wr numeric(10,0)} NULL,
	uebergeordneterma_wr {wr numeric(10,0)} NULL
);

update Webtext set webfedpk_wr = 10 where webfedpk_wr = 53000;
update Webtext set webfedpk_wr = 11 where webfedpk_wr = 53001;
delete from Webtext where id='daten6' and webfedpk_wr = 11;

update Webtext set seite ='mamassnahmendaten' where seite='mamassnahmen';
delete from Webtext where seite ='mamassnahmen';

DELETE FROM WEBPAR WHERE (KEY_WR = 'Mandant') AND (VALUE_WR IS NULL OR VALUE_WR = 'null');

update websicherheit set uuser_wr = 15765 where uuser_wr = 15763 and Seite_wr in ('15756','15757') and (select pk from WebSicherheit where uuser_wr = 15765 and Seite_wr in ('15756','15757') ) is null;

update Webtext set id= '15765', webfedpk_wr = 15765
where id = '15763' and modul_wr in (15756,15757) and webfedpk_wr = 15763
and (select pk from WebSicherheit where uuser_wr = 15765 and Seite_wr in ('15756','15757') ) is null;

insert into WebSicherheit select 45,null,Persnr_wr,10359,10354,gruppe_wr,null from websicherheit where Seite_wr ='�ndern' and Menuepunkt_wr ='menue36';
delete from WebSicherheit where Seite_wr ='�ndern' and Menuepunkt_wr ='menue36';

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19 , 0 , 0 , 0 , 'maintern', '1' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(22 , 0 , 0 , 0 , 'maextern', '0' , null);
insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(20 , 0 , 0 , 0 , 'maunbekannt', '1' , null);

update Webtext set text ='neue Bewerbung zur Stellungnahme vor.' where seite='startvgg' and id='M5' and geaendert=0;
update Webtext set text ='Eintritt fr�hestens' where seite='allebewerbungeinsehen' and id='M13' and geaendert=0;

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19443 , 0 , 0 , 3 , 'lugmandant' , '999996' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19444 , 0 , 0 , 3 , 'LUGBERATER' , '999996' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19445 , 0 , 0 , 0 , 'sessionDauer', '9000000' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19446 , 0 , 0 , 0 , 'DateiTypenBewerbung', 'pdf;gif;bmp;jpg' , null);

insert into WEBPAR (PK,DBCOUNTRY,DBCONTRACT,DBACCOUNT,KEY_WR,VALUE_WR,TEXT_WR ) values(19447 , 0 , 0 , 0 , 'zurueck', '1' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(206 , 'semtyp' , 5 , 'Weiterbildung -> Suche' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10262 , 'vgg' , 1 , 'Mitarbeiter -> Wiedervorlagen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10271 , 'vgg' , 2 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10285 , 'llf' , 1 , 'Stammdaten -> Lebenslauf' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10289 , 'vgg' , 3 , 'Personalabteilung -> Vorgang/Aktivit�ten' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10298 , 'vgg' , 4 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10314 , 'mapro' , 1 , 'Stammdaten -> Qualifikationen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10320 , 'mafkt' , 1 , 'Stammdaten -> Funktionen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10325 , 'buchtn' , 1 , 'Weiterbildung -> Weiterbildungshistorie' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10333 , 'maobj' , 1 , 'Mitarbeiter -> Objekte' , 900716);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10339 , 'stlma' , 1 , 'Stellenwirtschaft -> Stellenbesetzungen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10340 , 'STLma' , 20 , 'Stellenbesetzungen Details' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10341 , 'qppro' , 20 , 'Manager Self Service -> Stellenbesetzungen -> Details' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10342 , 'STLPRO' , 20 , 'Manager Self Service -> Stellenbesetzungen -> Details' , null);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10354 , 'mapeg' , 1 , 'Personalentwicklung -> Mitarbeitergespr�che' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10362 , 'maziel' , 1 , 'Personalentwicklung -> Zielvereinbarungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10372 , 'materm' , 1 , 'Mitarbeiter -> Termine' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13295 , 'ma' , 1 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(24000 , 'ma' , 2 , 'Mitarbeiter -> Qualifikationen -> Expert-Finder'  , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13300 , 'mabeu' , 1 , 'Manager Self Service -> Neue Mitarbeiterbeurteilungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14910 , 'mabeu' , 10 , 'Mitarbeiter -> Beurteilungen -> Neue Beurteilungen als Beurteiler' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10000 , 'person' , 450 , 'Manager Self Service -> Genehmigungen -> Urlaub' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10100 , 'perzb' , 1 , 'Zeitbeauftragter' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10001 , 'person' , 452 , 'Manager Self Service UM -> Genehmigungen -> Urlaub' , 10000);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10005 , 'person' , 453 , 'Vertretergenehmigung: Urlaub' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13370 , 'mabeuq' , 1 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13403 , 'mabeuq' , 2 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13464 , 'mabeu' , 2 , 'Manager Self Service -> Mitarbeiterbeurteilungen -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14911 , 'mabeu' , 20 , 'Manager Self Service UM -> Mitarbeiterbeurteilungen -> Beurteilung' ,13464);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14912 , 'mabeu' , 22 , 'Manager Self Service -> Neue Mitarbeiterbeurteilungen -> Beurteilung' , 13464);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14913 , 'mabeu' , 23 , 'Manager Self Service UM -> Neue Mitarbeiterbeurteilungen -> Beurteilung' ,13464);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14914 , 'mabeu' , 24 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen als Beurteiler -> Beurteilung' ,13464);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14915 , 'mabeu' , 25 , 'Mitarbeiter -> Beurteilungen -> Neue Beurteilungen als Beurteiler -> Beurteilung' ,13464);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14918 , 'mabeu' , 28 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen -> Beurteilung' ,13464);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(200 , 'mabeu' , 41 , 'Mitarbeiter -> FK-Feedback -> Neues FK-Feedback als Beurteiler -> Beurteilung' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(201 , 'mabeu' , 42 , 'Mitarbeiter -> FK-Feedback -> FK-Feedback als Beurteiler -> Beurteilung' , 200);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(202 , 'mabeu' , 44 , 'Mitarbeiter -> FK-Feedback -> Neues FK-Feedback' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(203 , 'mabeu' , 45 , 'Mitarbeiter -> FK-Feedback -> Neues FK-Feedback -> Beurteilung' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(204 , 'mabeu' , 46 , 'Manager Self Services -> Mitarbeiterauswahl -> �bersicht -> FK-Feedback' , 203);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(205 , 'mabeu' , 47 , 'Manager Self Services UM -> Mitarbeiterauswahl -> �bersicht -> FK-Feedback' , 203);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13958 , 'perkal' , 11 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13965 , 'algkal' , 11 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(13980 , 'ukonto' , 1 , 'Mitarbeiter -> Urlaubskonto' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14024 , 'ukonto' , 2 , 'Manager Self Service -> Urlaubskonten' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14036 , 'mabeu' , 3 , 'Manager Self Service -> Mitarbeiterbeurteilungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14900 , 'mabeu' , 30 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen als Beurteiler' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(24900 , 'mabeu' , 300 , 'Mitarbeiter -> FK-Feedback -> Neues FK-Feedback als Beurteiler' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(24950 , 'mabeu' , 301 , 'Mitarbeiter -> FK-Feedback -> FK-Feedback als Beurteiler' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14048 , 'ukonto' , 3 , 'Mitarbeiter -> Neuer Urlaubsantrag' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14058 , 'perkal' , 1 , 'Mitarbeiter -> Neuer Urlaubsantrag' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14361 , 'stlma' , 2 , 'Manager Self Service -> Stellenbesetzungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14431 , 'mnhma' , 2 , 'Manager Self Service -> Massnahmen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14433 , 'mnhma' , 20 , 'Manager Self Service -> Massnahmen -> Durchf�hrung' , 14431);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14435 , 'mnhma' , 41 , 'Manager Self Service -> Massnahmen -> Abgebrochen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14437 , 'mnhma' , 42 , 'Manager Self Service -> Massnahmen -> Abgeschlossen' , 14435);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14440 , 'mnhma' , 48 , 'Manager Self Service -> Massnahmen -> �berpr�fung' , 14435);

insert into WebAb (PK,Tabelle_wr,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14432 , 'mnhma' , 3 , 'Manager Self Service UM -> Massnahmen' , null);
insert into WebAb (PK,Tabelle_wr,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14434 , 'mnhma' , 30 , 'Manager Self Service UM -> Massnahmen -> Durchf�hrung' , 14432);
insert into WebAb (PK,Tabelle_wr,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14436 , 'mnhma' , 40 , 'Manager Self Service UM -> Massnahmen -> Abgebrochen' , null);
insert into WebAb (PK,Tabelle_wr,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14438 , 'mnhma' , 43 , 'Manager Self Service UM -> Massnahmen -> Abgeschlossen' , 14436);
insert into WebAb (PK,Tabelle_wr,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14439 , 'mnhma' , 47 , 'Manager Self Service UM -> Massnahmen -> �berpr�fung' , 14436);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(103487 , 'mnhma' , 1 , 'Personalentwicklung -> Massnahmen' , 14431);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10002 , 'ma' , 6 , 'Vertretergenehmigungen Ma�nahmen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10003 , 'ma' , 7 , 'Manager Self Service UM -> Genehmigungen -> Seminare' , 10002);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10004 , 'ma' , 8 , 'Manager Self Service -> Genehmigungen -> Seminare' , 10002);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800004 , 'mnhma' , 14 , 'Manager Self Service -> Genehmigung -> Ma�nahmen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14697 , 'person' , 4 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14717 , 'mapeg' , 2 , 'Manager Self service -> Neue Mitarbeitergespr�che' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(24100 , 'mapeg' , 6 , 'Manager Self service -> Alle Mitarbeitergespr�che' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147180 , 'mapeg' , 200 , 'Manager Self Service UM -> Neue Mitarbeitergespr�che' , 14717);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(148000 , 'mapeg' , 7 , 'Manager Self Service UM -> Alle Mitarbeitergespr�che' , 24100);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14770 , 'mapeg' , 3 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800100, 'mapeg' , 4 , 'Personalentwicklung -> Mitarbeiterauswahl -> �bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14781 , 'maziel' , 2 , 'Manager Self Service -> Zielvereinbarungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14864 , 'maziel' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(14887 , 'buchtn' , 2 , 'Manager Self Service -> Auswertungen -> Weiterbildungshistorie' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(911000 , 'buchtn' , 8 , 'Manager Self Service -> Mitarbeiterauswahl -> Weiterbildungshistorie' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(911001 , 'buchtn' , 80 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Weiterbildungshistorie' , 911000);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(15200 , 'person' , 5 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(15745 , 'semtyp' , 1 , 'Seminartypen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19673 , 'semtyp' , 4 , 'Weiterbildung -> Seminartypen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(15756 , 'person' , 6 , 'Manager Self Service -> Genehmigung Seminarbedarf' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(15757 , 'person' , 200 , 'Manager Self Service UM -> Best�tigung Seminarbedarf' , 15756);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(15758 , 'person' , 7 , 'Vertretergenehmigung Seminarbedarf' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(600 , 'person' , 17 , 'Manager Self Service -> Genehmigungen -> Seminarbedarf -> Ablehnen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(16246 , 'mastlw' , 1 , 'Personalentwicklung -> Ambitionen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(16261 , 'mafktw' , 1 , 'Personalentwicklung -> Ambitionen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(16297 , 'maqw' , 1 , 'Personalentwicklung -> Ambitionen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(16432 , 'buchtn' , 3 , 'Weiterbildung -> Seminarbeurteilung erfassen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17293 , 'buchtn' , 4 , 'Weiterbildung -> Seminarbeurteilung erfassen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17511 , 'ost' , 1 , 'Personalbeschaffung -> Qualit�tssicherung/Freigabe' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17521 , 'ost' , 2 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17784 , 'bng' , 7 , 'Personalbeschaffung -> Neue Bewerbungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17794 , 'bng' , 8 , 'Personalbeschaffung -> Alte Bewerbungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(17804 , 'ost' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(18949 , 'person' , 14 , 'Genehmigen / Ablehnen bei MSS / MSS UM / Zeitbeauftragter' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(18954 , 'person' , 16 , 'Manager Self Service -> Genehmigungen -> Urlaubsantr�ge -> Ablehnen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19103 , 'ost' , 4 , 'Offene Stelle Internet' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19510 , 'ost' , 9 , 'Offene Stelle Intranet' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19110 , 'ost' , 7 , 'Offene Stelle Intranet Textlink' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19210 , 'ost' , 8 , 'Offene Stelle Internet Textlink' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19311 , 'ost' , 5 , 'Gespeicherte Bewerbungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19336 , 'doku' , 1 , 'Personalbeschaffung -> Alle Bewerbungen -> Dokumente' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19366 , 'berpro' , 1 , 'Personalbeschaffung -> Alle Bewerbungen -> Profil' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19382 , 'vgg' , 5 , 'Personalbeschaffung -> Alle Bewerbungen -> Vorg�nge' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19408 , 'llf' , 2 , 'Personalbeschaffung -> Alle Bewerbungen -> Lebenslauf' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19478 , 'person' , 9 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19573 , 'semtyp' , 2 , 'Seminartypen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19579 , 'semtyp' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19622 , 'semter' , 1 , 'Weiterbildung -> Aktuelle Termine' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19725 , 'semter' , 2 , 'Weiterbildung -> Seminartypen -> Aktuelle Termine' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19778 , 'semter' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19790 , 'semter' , 4 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19623 , 'semter' , 5 , null , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(19624 , 'semter' , 6 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(20589 , 'buchdo' , 1 , 'Weiterbildung -> Dozenteneins�tze' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(20820 , 'tn' , 1 , 'Weiterbildung -> Dozenteneins�tze -> Teilnehmer' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(21238 , 'mapro' , 2 , 'Manager Self Service ->Mitarbeiterauswahl' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(21239 , 'mapro' , 200 , 'Manager Self Service UM ->Mitarbeiterauswahl' , 21238);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(21240 , 'mapro' , 302 , 'Stammdaten -> Eigene Mitabeiter�bersicht' , 21238);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(22096 , 'buchtn' , 10 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(22097 , 'buchdo' , 10 , null , null);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(54000 , 'ma' , 15 , 'Personalentwicklung -> Ma�nahmen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(54001 , 'ma' , 16 , 'Personalentwicklung -> Ma�nahmen Beantragt' ,null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331082 , 'Person' , 1 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331115 , 'Person' , 2 , null , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331157 , 'Person' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331163 , 'ILB' , 3 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331199 , 'ILB' , 400 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht' , 331198);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331299 , 'ILB' , 304 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 331198);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331208 , 'ILB' , 5 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331214 , 'algkal' , 10 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331219 , 'ilb' , 10 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331231 , 'agrkal' , 10 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331237 , 'perkal' , 10 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800002 , 'MABEUQ' , 3 , 'Manager Self Service ->Neue Mitarbeiterbeurteilungen -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800003 , 'MABEUQ' , 4 , 'Manager Self Service ->Mitarbeiterbeurteilungen -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331300 , 'mafkt' , 2 , 'Manager Self Service ->Mitarbeiterauswahl' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331350 , 'llf' , 3 , 'Manager Self Service ->Mitarbeiterauswahl' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331400 , 'magh' , 3 , 'Manager Self Service ->Mitarbeiterauswahl' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(331450 , 'mapro' , 3 , 'Manager Self Service ->Mitarbeiterauswahl ->Qualifikationen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730404 , 'webgruppen' , 1 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730425 , 'person' , 20 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730457 , 'person' , 21 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730458 , 'maaz' , 1 , 'Mitarbeiter -> Arbeitszeiten' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730459 , 'masv' , 1 , 'Mitarbeiter -> Stellvertreter' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730460 , 'person' , 22 , 'Mitarbeiter suche' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730461 , 'person' , 23 , 'Manager Self Service -> Auswertungen -> Geburtstagsliste' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730462 , 'perkal' , 2 , 'Manager Self Service -> Mitarbeiterauswahl -> Urlaubs�bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730505 , 'perkal' , 200 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Urlaubs�bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730602 , 'perkal' , 302 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 730462);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730514 , 'perkal' , 4 , 'Manager Self Service -> Mitarbeiterauswahl -> Urlaub / Abwesenheit' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730515 , 'perkal' , 99 , 'Mitarbeiter -> Urlaubs/Abwesenheitsantr�ge' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730513 , 'perkal' , 201 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Urlaub / Abwesenheit' , 730514);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730463 , 'ukonto' , 4 , 'Manager Self Service -> Mitarbeiterauswahl -> Neuer Urlaubsantrag' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730478 , 'ukonto' , 204 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Neuer Urlaubsantrag' , 730463);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730879 , 'ukonto' , 304 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 730463);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730464 , 'planst' , 1 , 'Stellenwirtschaft -> Planstelle �D' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730465 , 'magh' , 1 , 'Mitarbeiter -> Gehaltshistorie' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730466 , 'maaz' , 2 , 'Mitarbeiter -> Arbeitszeiten' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730467 , 'stlma' , 3 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Stellenbesetzungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730506 , 'stlma' , 300 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Stellenbesetzungen' , 730467);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730606 , 'stlma' , 303 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> Stellenbesetzungen' , 730467);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730468 , 'planst' , 2 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Planstellen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(740507 , 'planst' , 200 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Planstellen' , 730468);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730607 , 'planst' , 302 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> Planstellen' , 730468);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730469 , 'maziel' , 5 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Zielvereinbarungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730508 , 'maziel' , 500 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Zielvereinbarungen' , 730469);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730608 , 'maziel' , 305 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> �bersicht -> Zielvereinbarungen' , 730469);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730470 , 'mapeg' , 5 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Mitarbeitergespr�che' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730509 , 'mapeg' , 500 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Mitarbeitergespr�che' , 730470);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730609 , 'mapeg' , 305 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> Mitarbeitergespr�che' , 730470);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730471 , 'mabeu' , 5 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Beurteilungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730472 , 'mnhma' , 5 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Ma�nahmen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730511 , 'mnhma' , 500 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Ma�nahmen' , 730472);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730611 , 'mnhma' , 305 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> Ma�nahmen' , 730472);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730473 , 'buchtn' , 5 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht -> Weiterbildungshistorie' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730512 , 'buchtn' , 500 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht -> Weiterbildungshistorie' , 730473);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730612 , 'buchtn' , 305 , 'Stammdaten -> Eigene Mitarbeiter�bersicht -> Weiterbildungshistorie' , 730473);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730474 , 'berpro' , 2 , 'Personalbeschaffung -> Alle Bewerbungen -> Profil' , null);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730477 , 'person' , 24 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730479 , 'magh' , 2 , 'Manager Self Service -> Mitarbeiterauswahl -> Gehaltshistorie', null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730498 , 'magh' , 202 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Gehaltshistorie', 730479);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730480 , 'doku' , 2 , 'Stammdaten -> Dokumente' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730481 , 'doku' , 3 , 'Manager Self Service -> Mitarbeiterauswahl -> Dokumente' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(710481 , 'doku' , 30 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Dokumente' , 730481);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730482 , 'mabeu' , 15 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730483 , 'mabeu' , 16 , 'Mitarbeiter -> Beurteilungen -> Neue Beurteilungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730486 , 'mabeu' , 19 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(22 , 'mabeu' , 40 , 'Mitarbeiter -> FK-Feedback -> FK-Feedback' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730510 , 'mabeu' , 190 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht' , 730486);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730610 , 'mabeu' , 390 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 730486);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910007 , 'mabeu' , 60 , 'Manager Self Service -> Mitarbeiterauswahl -> �bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910008 , 'mabeu' , 160 , 'Manager Self Service UM -> Mitarbeiterauswahl -> �bersicht' , 910007);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910108 , 'mabeu' , 360 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 910007);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730487 , 'person' , 25 , 'Mitarbeiter suche: Infomail' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730488 , 'person' , 26 , 'Vorgesetzten suche' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(740488 , 'person' , 27 , 'Vorgesetzten suche' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730489 , 'person' , 230 , 'Manager Self Service UM -> Auswertungen -> Geburtstagsliste', null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730490 , 'buchtn' , 200 ,'Manager Self Service UM -> Auswertungen -> Weiterbildungshistorie' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730491 , 'mnhma' , 200 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730492 , 'stlma' , 200 , 'Manager Self Service UM -> Stellenbesetzungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730493 , 'mabeu' , 100 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730494 , 'ukonto' , 200 , 'Manager Self Service UM -> Urlaubskonten' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730495 , 'magh' , 15 , 'Manager Self Service -> Geh�lter �bersicht' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730497 , 'magh' , 200 , 'Manager Self Service UM -> Geh�lter �bersicht' , 730495);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730496 , 'vge' , 1 , 'Personalbeschaffung -> Bewerbung -> Vorstellungsgespr�che' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(740496 , 'vge' , 2 , 'Personalbeschaffung -> Vorstellungsgespr�che' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800000 , 'buchtn' , 6 , null , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(800001 , 'person' , 10 , null , null);



insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147190 , 'mabeu' , 200 , 'Manager Self Service UM -> Mitarbeiterbeurteilungen' , 14036);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147200 , 'maziel' , 200 , 'Manager Self Service UM -> Zielvereinbarungen' , 14781);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147210 , 'mabeu' , 201 , 'Manager Self Service UM -> Neue Mitarbeiterbeurteilungen' , 13300);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147211 , 'mabeu' , 202 , 'Manager Self Service -> Mitarbeiterauswahl -> Mitarbeiterbeurteilungen' , 13300);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(147212 , 'mabeu' , 203 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Mitarbeiterbeurteilungen' , 13300);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730595 , 'buchtn' , 7 , 'Manager Self Service -> Mitarbeiterauswahl -> Seminarbedarf buchen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730596 , 'buchtn' , 201 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Seminarbedarf buchen' , 730595);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730597 , 'semtyp' , 9 , 'Weiterbildung -> Seminarbedarf buchen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900002 , 'ost' , 6 , 'Manager Self Service -> Offene Stellen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900003 , 'bng' , 1 , 'Manager Self Service -> Offene Stellen -> Bewerbungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900004 , 'bng' , 2 , 'Personalbeschaffung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900005 , 'person' , 8 , 'Vertreter -> Seminar genehmigen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(730620 , 'stlma' , 4 , 'Personalbeschaffung -> Stellenbesetzungen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(52000 , 'mabeuq' , 6 , 'Mitarbeiter -> Beurteilungen -> Neue Beurteilungen -> Beurteilung' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910001 , 'mabeuq' , 9 , 'Manager Self Service -> Neue Mitarbeiterbeurteilungen -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910002 , 'mabeuq' , 90 , 'Manager Self Service UM -> Neue Mitarbeiterbeurteilungen -> Beurteilung' , 910000);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910004 , 'mabeuq' , 91 , 'Mitarbeiter -> Beurteilungen -> Neue Beurteilungen als Beurteiler -> Beurteilung' , 52000);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910005 , 'mabeuq' , 92 , 'Mitarbeiter -> FK-Feedback -> Neue FK Feedback als Beurteiler -> Beurteilung' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(910006 , 'mabeuq' , 93 , 'Mitarbeiter -> FK-Feedback -> FK Feedback als Beurteiler -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(10 , 'mabeuq' , 7 , 'Manager Self Service -> Mitarbeiterbeurteilung -> Beurteilung' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(20 , 'mabeuq' , 70 , 'Manager Self Service UM -> Mitarbeiterbeurteilung -> Beurteilung' , 10);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(21 , 'mabeuq' , 71 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen als Beurteiler -> Beurteilung' , 12);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(12 , 'mabeuq' , 10 , 'Mitarbeiter -> Beurteilungen -> Beurteilungen -> Beurteilung' , null);

insert into WebAb (PK,Tabelle_wr,Nummer_wr,SEITE_WR,WEBABPK_WR ) values(730630 , 'berpro' , 3 , 'Personalbeschaffung -> Alle Bewerbungen -> Profil',null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900100 , 'semter' , 100 , 'Aktuelle Termine -> Seminarteilnehmer' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900200 , 'person' , 30 , 'Seminarteilnehmer -> Funktionen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900300 , 'person' , 40 , 'Manager Self Service -> Auswertung -> Mitarbeiterliste' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900400 , 'person' , 400 , 'Manager Self Service UM -> Auswertung -> Mitarbeiterliste' , 900300);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900500 , 'person' , 50 , 'Manager Self Service -> Auswertung -> Mitarbeiterqualifikationen' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900600 , 'person' , 500 , 'Manager Self Service UM -> Auswertung -> Mitarbeiterqualifikationen' , 900500);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900301 , 'person' , 60 , 'Manager Self Service -> Auswertung -> Probezeitende' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900401 , 'person' , 600 , 'Manager Self Service UM -> Auswertung -> Probezeitende' , 900301);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900700 , 'person' , 11 , 'Manager Self Service -> Genehmigungen -> Urlaub' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900701 , 'person' , 12 , 'Manager Self Service UM -> Genehmigungen -> Urlaub' , 900700);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900702 , 'MATZ' , 2 , 'Manager Self Service -> Mitarbeiterauswahl -> Tarifzuordung' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900703 , 'MATZ' , 202 , 'Manager Self Service UM -> Genehmigungen -> Tarifzuordung' , 900702);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900710 , 'vtr' , 1 , 'Manager Self Service -> Mitarbeiterauswahl' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900711 , 'vtr' , 2 , 'Manager Self Service UM -> Mitarbeiterauswahl' , 900710);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900712 , 'vtr' , 4 , 'Manager Self Service UM -> Mitarbeiterauswahl -> Mitarbeiter�bersicht' , 900710);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900713 , 'vtr' , 3 , 'Manager Self Service -> Mitarbeiterauswahl -> Mitarbeiter�bersicht' , 900710);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900714 , 'vtr' , 5 , 'Stammdaten -> Eigene Mitarbeiter�bersicht' , 900710);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900715 , 'ele' , 1 , 'Weiterbildung -> Seminarbeurteilung erfassen' , null);

insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900716 , 'MAOBJ' , 2 , 'Manager Self Service -> Auswertungen -> Objekt�bersicht' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900717 , 'MAOBJ' , 202 , 'Manager Self Service UM -> Auswertungen -> Objekt�bersicht' , 900716);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(500,730597,'case when buchtn','dbaccount = 999999998 then ''src="../bilder/M_red.gif"''  end',' ',1,0,20,null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(501,730597,'semtyp','semtypnr_wr','Seminar-Nr.',1,0,90,'semtyp.semtypnr_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(502,730597,'semtyp','thema_wr','Thema',1,0,200,'semtyp.thema_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(503,730597,'{wr memotostring(buchtn','genehmbem_wr)}','Begr�ndung der Ablehnung',1,0,200,'{wr memotostring(buchtn.genehmbem_wr)}');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(504,730597,'{wr zahlvormohneEuro(semtyp','dauer_wr)}','Dauer',1,0,40,'{wr zahlvormohneEuro(semtyp.dauer_wr)}');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(505,730597,'case when buchtn','terminvon_wr is null then {wr datetostring(buchtn.terwunsch_wr)} else {wr datetostring(buchtn.terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(buchtn.terminbis_wr)} end','Termin / Terminwunsch',1,0,180,'case when buchtn.terminvon_wr is null then buchtn.terwunsch_wr else buchtn.terminvon_wr end');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(506,730597,'case when buchtn','dbaccount = 999999999 then ''Beantragt'' when buchtn.dbaccount = 999999998 then ''Abgelehnt'' when buchtn.dbaccount = 999999996 then ''beim Vertreter'' when buchtn.dbaccount = 999999994 then ''beim Vorgesetzten'' else ''Genehmigt'' end','Status',1,0,80,'case when buchtn.dbaccount = 999999999 then ''Beantragt'' when buchtn.dbaccount = 999999998 then ''Abgelehnt'' when buchtn.dbaccount = 999999996 then ''beim Vertreter'' when buchtn.dbaccount = 999999994 then ''beim Vorgesetzten'' else ''Genehmigt'' end');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(507,730597,'{wr memotostring(buchtn','bemerkung_wr)}','Bemerkung',1,0,180,'{wr memotostring(buchtn.bemerkung_wr)}');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(508,730597,'buchtn','pk','PK',0,1,null,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(500 , 730597 , 'semtyp ' , ':was');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(501 , 730597 , 'left outer join buchtn on semtyp.pk = buchtn.semtypnr_wr' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(502 , 730597 , 'left outer join tn on tn.pk = buchtn.persnr_wr' , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(959999,900716,'{wr ifnull(person','name_wr,'''')} {wr +()} '', '' {wr +()} {wr ifnull(person.vorname_wr,'''')}','Mitarbeiter',1,0,200,'person.name_wr {wr +()} '', '' {wr +()} person.vorname_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960000,900716,'OBJ','bez1_wr','Objektbezeichnung',1,0,150,'obj.bez1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960001,900716,'MAOBJ','Ausge_WR','Ausgeh�ndigt am',1,0,150,'maobj.ausge_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960002,900716,'MAOBJ','ZurueckAm_WR','Zur�ck am',1,0,150,'maobj.ZurueckAm_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960003,900716,'{wr zahlvorm(MAOBJ','Listenprei_WR)}','Listenpreis',1,0,150,'MAOBJ.Listenprei_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960004,900716,'MAOBJ','FfzEntfKm_WR','Entfernungskilometer WO � Arbeitsst�tte',1,0,150,'MAOBJ.FfzEntfKm_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960005,900716,'{wr ifnull(MAOBJ','Frei1_WR,'''')} {wr +()} {wr ifnull(UKZ2.text_wr,'''')}','Freifeld 1 + 2',1,0,150,'MAOBJ.frei1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960006,900716,'OBJ','KFZKZ_WR','Kennzeichen',1,0,150,'OBJ.KFZKZ_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960007,900716,'OBJ','KFZSerienN_WR','Serien Nr.',1,0,150,'OBJ.KFZSerienN_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960008,900716,'UKZ2model','text_wr','Modell',1,0,150,'UKZ2model.text_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960009,900716,'UKZ','text_wr','Hersteller',1,0,150,'UKZ.text_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960010,900716,'OBJ','RefNr_WR','Referenz Nr.',1,0,150,'obj.RefNr_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(960011,900716,'OBJART','bez1_wr','Objektart',1,0,150,'objart.bez1_wr');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960010 , 900716 , 'maobj ' , ':mperson');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960011 , 900716 , 'left outer join obj on obj.pk = maobj.ObjNr_WR ' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960012 , 900716 , 'left outer join ukz2 on ukz2.pk = maobj.Frei2_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960013 , 900716 , 'left outer join ukz2 UKZ2model on UKZ2model.pk = obj.Modell_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960014 , 900716 , 'left outer join ukz on ukz.pk = obj.KfzHerr_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960015 , 900716 , 'left outer join ma on ma.pk = maobj.persnr_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960016 , 900716 , 'left outer join person on person.pk = ma.persnr_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(960017 , 900716 , 'left outer join objart on obj.ObjartKurz_WR = objart.pk ' ,null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(920000,900715,'BEUART','BEZ_WR','Beurteilungsart',1,0,150,'ELE.ELEKURZ_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(920001,900715,'ele','bez_wr','Element',1,0,150,null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(920002,900715,'ele','FREITPUNKT_WR','Punkte / Freitext',1,0,150,null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(920003,900715,'BUELE','pk','PK',0,1,null,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(920000, 900715 , 'BUELE ' , 'BUELE.PK <> 0 and buchtn.pk = :buchtnpk');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(920001 , 900715 , 'left outer join tn on tn.PK = BUELE.PERSNR_WR ' ,'tn.persnr_wr =:benutzer');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(920002 , 900715 , 'left outer join BEUART on BEUART.PK = BUELE.BEUARTKURZ_WR ' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(920003 , 900715 , 'left outer join ELE on ELE.PK = BUELE.ELEKURZ_WR' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(920004 , 900715 , 'left outer join buchtn on buele.semternr_wr = buchtn.semternr_wr' ,null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910700,900710,'person','name_wr {wr +()} '', '' {wr +()} person.vorname_wr','Mitarbeiter',1,0,150,'person.name_wr {wr +()} '', '' {wr +()} person.vorname_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910701,900710,'vtr','bez_wr','Bezeichnung',1,0,150,'vtr.bez_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910702,900710,'ukz','text_wr','Vertrags-Typ',1,0,100,'ukz.text_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910703,900710,'vtr','Gueltigab_WR','G�ltig ab',1,0,100,'vtr.Gueltigab_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910704,900710,'vtr','GUELTIGBIS_WR','G�ltig bis',1,0,100,'vtr.GUELTIGBIS_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910705,900710,'vtr','Abschluss_WR','Abschluss-Datum',1,0,100,'vtr.Abschluss_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910706,900710,'vtr','Genehmigt_WR','Genehmigt am',1,0,100,'vtr.Genehmigt_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910707,900710,'vtr','ProbMonat_WR','Probezeit in Monaten',1,0,100,'vtr.ProbMonat_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910708,900710,'vtr','Probezeit_WR','Probezeit bis',1,0,100,'vtr.Probezeit_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910709,900710,'vtr','UTage_WR','Urlaubs-Tage',1,0,100,'vtr.UTage_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910710,900710,'case when vtr','HAUPTVERTR_WR = 0 then ''Nein'' else ''Ja'' end','Hauptvertrag',1,0,100,'vtr.hauptvertr_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910711,900710,'p1','name_wr {wr +()} '', '' {wr +()} p1.vorname_wr','Verantwortlicher',1,0,100,'p1.name_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910712,900710,'vtr','WAZeit_WR','Wochenarbeitszeit in Std.',1,0,100,'p1.WAZeit_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910713,900710,'u1','text_WR','K�ndungsfrist',1,0,100,'u1.text_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910714,900710,'vtr','KSchutzVon_WR','K�ndungsschutz von',1,0,100,'vtr.KSchutzVon_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910715,900710,'vtr','KSCHUTZBIS_WR','K�ndungsschutz bis',1,0,100,'vtr.KSCHUTZBIS_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910716,900710,'u2','text_WR','K�ndungsschutz-Grund',1,0,100,'u2.text_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910717,900710,'u3','text_WR','K�ndung durch',1,0,100,'u3.text_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910718,900710,'p2','name_wr {wr +()} '', '' {wr +()} p2.vorname_wr','Unterzeichner #1',1,0,100,'p2.name_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910719,900710,'p3','name_wr {wr +()} '', '' {wr +()} p3.vorname_wr','Unterzeichner #2',1,0,100,'p3.name_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910720,900710,'vtr','frei1_wr','Freifeld 1',1,0,100,'vtr.frei1_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910721,900710,'vtr','frei2_wr','Freifeld 2',1,0,100,'vtr.frei2_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910722,900710,'vtr','frei3_wr','Freifeld 3',1,0,100,'vtr.frei3_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910723,900710,'vtr','frei4_wr','Freifeld 4',1,0,100,'vtr.frei4_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910724,900710,'vtr','frei5_wr','Freifeld 5',1,0,100,'vtr.frei5_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910725,900710,'vtr','frei6_wr','Freifeld 6',1,0,100,'vtr.frei6_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910726,900710,'vtr','frei7_wr','Freifeld 7',1,0,100,'vtr.frei7_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910727,900710,'vtr','frei8_wr','Freifeld 8',1,0,100,'vtr.frei8_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910728,900710,'vtr','frei9_wr','Freifeld 9',1,0,100,'vtr.frei9_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(910729,900710,'vtr','frei10_wr','Freifeld 10',1,0,100,'vtr.frei10_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(910731 ,900710 , 'vtr' ,'pk ', 'Details' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(910732 ,900710 , 'case when (vtr' ,'GUELTIGAB_WR <= {fn now()} or vtr.GUELTIGAB_WR is null) and (vtr.GUELTIGBIS_WR is null or vtr.GUELTIGBIS_WR > {fn now()}) then 1 else 0 end', 'Aktuell' , 0 , 1 , null , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910710 , 900710 , 'vtr ' , ':mperson');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910711 , 900710 , ' left outer join ma on ma.pk = vtr.persnr_wr' ,null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910712 , 900710 , ' left outer join person on person.pk = ma.persnr_wr' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910713 , 900710 , ' left outer join ukz on vtr.VertragTyp_WR = ukz.pk' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910714 , 900710 , ' left outer join ma m1 on m1.pk = vtr.VERANTWORT_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910715 , 900710 , ' left outer join person p1 on p1.pk = m1.PERSNR_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910716 , 900710 , ' left outer join ukz u1 on u1.pk = vtr.KFRIST_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910717 , 900710 , ' left outer join ukz u2 on u2.pk = vtr.KSchutzGr_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910718 , 900710 , ' left outer join ukz u3 on u3.pk = vtr.KDURCH_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910719 , 900710 , ' left outer join ma m2 on m2.pk = vtr.UnterZ1_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910720 , 900710 , ' left outer join person p2 on p2.pk = m2.persnr_wr' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910721 , 900710 , ' left outer join ma m3 on m3.pk = vtr.UnterZ2_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(910722 , 900710 , ' left outer join person p3 on p3.pk = m3.persnr_wr' , null);



insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900720 , 900702, 'matz' , 'GueltigAb_WR' , 'G�ltig ab' , 1 , 0 , 100 , 'matz.GueltigAb_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900721 , 900702, 'GGR' , 'GgrKurz_WR' , 'Gehaltsgruppe' , 1 , 0 , 200 , 'ggr.ggrkurz_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900722 , 900702, 'matz' , 'Stufe_WR' , 'Stufe' , 1 , 0 , 200 , 'matz.stufe_wr');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(900723 , 900702 , 'matz left outer join ma on ma.pk = matz.persnr_WR ' , 'ma.persnr_wr = :persnr');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(900724 , 900702 , ' left outer join ggr on ggr.pk = matz.Gehaltsgru_WR' , null);


insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900704 , 'MAEBHI' , 2 , 'Manager Self Service -> Mitarbeiterauswahl -> Bez�gehistorie' , null);
insert into WEBAB (PK,TABELLE_WR,NUMMER_WR,SEITE_WR,WEBABPK_WR ) values(900705 , 'MAEBHI' , 202 , 'Manager Self Service UM -> Genehmigungen -> Bez�gehistorie' , 900704);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990730 , 10340, 'stl' , 'BezKurz_WR' , 'Kurzbezeichnung' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990731 , 10340, 'stl' , 'Bez1_WR' , 'Bezeichnung' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990732 , 10340, 'person' , 'vorname_wr {wr +()} '' '' {wr +()} name_wr' , 'Mitarbeiter' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990733 , 10340, 'STLART' , 'Bez1_WR' , 'stellenart' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990734 , 10340, 'STLKAT' , 'Bez_WR' , 'stellenkategorie' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990735 , 10340, 'ukz' , 'text_WR' , 'stellenstatus' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990736 , 10340, 'stl' , 'Aufgaben_WR' , 'stellenaufgaben' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990737 , 10340, 'stl' , 'pk' , 'stellenqualifikationsprofil' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990738 , 10340, 'u1' , 'text_WR' , 'stellenbesetzungsart' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990739 , 10340, 'stlma' , 'hauptstell_WR' , 'stellenhaupt' , 1 , 0 , 0 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(990740 , 10340, 'stl' , 'beschreibu_WR' , 'stellenbeschreibung' , 1 , 0 , 0 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(990741 , 10340 , 'case when STLABT' , 'ort_wr is not null then STLABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when STLABT.ort_wr is not null then STLABT.ort_wr else firma.ort_wr end');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990749 , 10340 , 'stlma' , 'stlma.pk = :stlpk');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990750 , 10340 , 'left outer join STL on STL.pk = STLma.StlKurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990750 , 10340 , 'left outer join STLART on STLART.pk = STL.StlArtKurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990751 , 10340 , 'left outer join STLKAT on STLKAT.pk = STL.StlKatKurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990752 , 10340 , 'left outer join ukz on ukz.pk = STL.Status_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990753 , 10340 , 'left outer join qp on qp.pk = STL.QPKurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990754 , 10340 , 'left outer join ukz u1 on u1.pk = STLMA.Art_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990755 , 10340 , 'left outer join ma on ma.pk = STLMA.PersNr_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(990756 , 10340 , 'left outer join person on person.pk = ma.PersNr_WR' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(990757 , 10340 , 'left outer join BTR on BTR.PK = STLMA.FIRMANR_wr' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(990758 , 10340 , 'left outer join FIRMA on FIRMA.PK = BTR.FIRMANR_wr' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(990759 , 10340 , 'left outer join abt on abt.PK = stl.abtkurz_wr' , null);


insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(991730 , 10341, 'quali' , 'Bez1_WR' , 'Qualifikation' , 1 , 0 , 250 , 'quali.bez1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(991731 , 10341, 'quaaus' , 'Bez1_WR' , 'Auspr�gung' , 1 , 0 , 250 , 'quaaus.bez1_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(991732 , 10342, 'quali' , 'Bez1_WR' , 'Qualifikation' , 1 , 0 , 250 , 'quali.bez1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(991733 , 10342, 'quaaus' , 'Bez1_WR' , 'Auspr�gung' , 1 , 0 , 250 , 'quaaus.bez1_wr');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991749 , 10341 , 'qppro' , 'qppro.qpkurz_wr = :qppk');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991750 , 10341 , 'left outer join quali on quali.pk = qppro.qualikurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991751 , 10341 , 'left outer join quaaus on quaaus.pk = qppro.auskurz_WR' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991759 , 10342 , 'STLPRO' , 'STLPRO.ONLINE_wr = ''J'' and STLPRO.StlKurz_WR = :qppk');
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991760 , 10342 , 'left outer join quali on quali.pk = STLPRO.qualikurz_WR' , null);
insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(991761 , 10342 , 'left outer join quaaus on quaaus.pk = STLPRO.auskurz_WR' , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900730 , 900704, 'MAEBHI' , 'Bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , 'MAEBHI.bez_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900731 , 900704, 'MAEBHI' , 'Von_wr' , 'Zeitraum von' , 1 , 0 , 100 , 'MAEBHI.Von_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900732 , 900704, 'MAEBHI' , 'Bis_wr' , 'Zeitraum bis' , 1 , 0 , 100 , 'MAEBHI.bis_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900733 , 900704, '{wr zahlvorm(MAEBHI' , 'GGehalt_wr)}' , 'Grundgehalt' , 1 , 0 , 100 , 'MAEBHI.GGehalt_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900734 , 900704, '{wr zahlvorm(MAEBHI' , 'Ortszuschl_wr)}' , 'Orts-/Sozialzuschlag' , 1 , 0 , 100 , 'MAEBHI.Ortszuschl_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900735 , 900704, '{wr zahlvorm(MAEBHI' , 'TarifZulag_wr)}' , 'Tarifliche Zulage' , 1 , 0 , 100 , 'MAEBHI.TarifZulag_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900736 , 900704, '{wr zahlvorm(MAEBHI' , 'Vwl_wr)}' , 'Verm�genswirksame Leistungen' , 1 , 0 , 100 , 'MAEBHI.Vwl_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900737 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage1_wr)}' , 'pers. Zulage 1' , 1 , 0 , 100 , 'MAEBHI.Zulage1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900738 , 900704, 'MAEBHI' , 'Zulage1Tex_wr' , 'Zulagentext 1' , 1 , 0 , 150 , 'MAEBHI.Zulage1Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900739 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage2_wr)}' , 'pers. Zulage 2' , 1 , 0 , 100 , 'MAEBHI.Zulage2_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900740 , 900704, 'MAEBHI' , 'Zulage2Tex_wr' , 'Zulagentext 2' , 1 , 0 , 150 , 'MAEBHI.Zulage2Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900741 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage3_wr)}' , 'pers. Zulage 3' , 1 , 0 , 100 , 'MAEBHI.Zulage3_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900742 , 900704, 'MAEBHI' , 'Zulage3Tex_wr' , 'Zulagentext 3' , 1 , 0 , 150 , 'MAEBHI.Zulage3Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900743 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage4_wr)}' , 'pers. Zulage 4' , 1 , 0 , 100 , 'MAEBHI.Zulage4_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900744 , 900704, 'MAEBHI' , 'Zulage4Tex_wr' , 'Zulagentext 4' , 1 , 0 , 150 , 'MAEBHI.Zulage4Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900745 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage5_wr)}' , 'pers. Zulage 5' , 1 , 0 , 100 , 'MAEBHI.Zulage5_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900746 , 900704, 'MAEBHI' , 'Zulage5Tex_wr' , 'Zulagentext 5' , 1 , 0 , 150 , 'MAEBHI.Zulage5Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900747 , 900704, '{wr zahlvorm(MAEBHI' , 'Zulage6_wr)}' , 'pers. Zulage 6' , 1 , 0 , 100 , 'MAEBHI.Zulage6_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900748 , 900704, 'MAEBHI' , 'Zulage6Tex_wr' , 'Zulagentext 6' , 1 , 0 , 150 , 'MAEBHI.Zulage6Tex_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900749 , 900704, '{wr zahlvorm(MAEBHI' , 'Bonus_wr)}' , 'Bonus' , 1 , 0 , 100 , 'MAEBHI.Bonus_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900750 , 900704, '{wr zahlvorm(MAEBHI' , 'GehaltNett_wr)}' , 'Gehalt Netto' , 1 , 0 , 100 , 'MAEBHI.GehaltNett_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(900751 , 900704, '{wr zahlvorm(MAEBHI' , 'Gehalt_wr)}' , 'Gehalt Brutto' , 1 , 0 , 100 , 'MAEBHI.Gehalt_wr');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(900750 , 900704 , 'MAEBHI left outer join ma on ma.pk = MAEBHI.PersNr_wr' , 'MA.PersNr_wr = :persnr');


insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(221 , 206 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 90 , 'semtyp.semtypnr_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(222 , 206 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , 'semtyp.thema_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(223 , 206 , 'semtyp' , 'thema2_wr' , 'Thema 2' , 1 , 0 , 200 , 'semtyp.thema2_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(224 , 206 , '{wr zahlvormohneEuro(semtyp' , 'dauer_wr)}' , 'Dauer' , 1 , 0 , 100 , 'semtyp.dauer_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(225 , 206 , '(select case when count(semter' , 'pk) >0  then ''Termin'' else '''' end from semter where semter.semtypnr_wr = semtyp.pk and semter.datumvon_wr > {fn now()} and (semter.PK = 0 or (semter.pk > 0 and semter.stornostat_wr =''N'')) and semter.ONLINE_WR = ''J'' and ((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or (schaltungv_wr is null and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr >= {fn now()}) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()})))' , 'Termine' , 1 , 0 , 100 , null);
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(226 , 206 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 160 , 'ukzazant.text_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(227 , 206 , 'semtyp' , 'pk' , 'PK' , 0 , 1 ,null , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2300 , 900300 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr {wr +()} person.vorname_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2301 , 900300 , 'person' , 'persnr_wr' , 'Personalnummer' , 1 , 0 , 120 , 'person.persnr_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2302 , 900300 , 'abt' , 'bez_wr {wr +()} '' ('' {wr +()} abt.abtkurz_wr {wr +()} '')'' ' , 'Kostenstellenk�rzel' , 1 , 0 , 250 , 'abt.bez_wr {wr +()} abt.abtkurz_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2303 , 900300 , 'person' , 'strasse_wr {wr +()} ''\n'' {wr +()} person.plz_wr {wr +()} '' '' {wr +()} person.ort_wr' , 'Privatanschrift' , 1 , 0 , 250 , 'person.strasse_wr {wr +()} person.plz_wr {wr +()} person.ort_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2304 , 900300 , 'person' , 'gebdatum_wr' , 'Geburtsdatum' , 1 , 0 , 100 , 'person.gebdatum_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2305 , 900300 , 'person' , 'eintritt_wr' , 'Eintritt' , 1 , 0 , 100 , 'person.eintritt_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2306 , 900300 , 'WRSYS_MA_BETRIEBSZUGEH' , 'BetriebsZugeh_wr' , 'Betriebszugeh�rigkeit' , 1 , 0 , 100 , 'WRSYS_MA_BETRIEBSZUGEH.BetriebsZugeh_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2400 , 900301 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr {wr +()} person.vorname_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2401 , 900301 , 'person' , 'persnr_wr' , 'Personalnummer' , 1 , 0 , 120 , 'person.persnr_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2402 , 900301 , 'abt' , 'bez_wr {wr +()} '' ('' {wr +()} abt.abtkurz_wr {wr +()} '')'' ' , 'Kostenstellenk�rzel' , 1 , 0 , 250 , 'abt.bez_wr {wr +()} abt.abtkurz_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2403 , 900301 , 'person' , 'strasse_wr {wr +()} ''\n'' {wr +()} person.plz_wr {wr +()} '' '' {wr +()} person.ort_wr' , 'Privatanschrift' , 1 , 0 , 250 , 'person.strasse_wr {wr +()} person.plz_wr {wr +()} person.ort_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2404 , 900301 , 'person' , 'eintritt_wr' , 'Eintritt', 1 , 0 , 100 , 'person.eintritt_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2405 , 900301 , 'ma' , 'Probezeitb_WR' , 'Probezeitende', 1 , 0 , 100 , 'ma.Probezeitb_WR');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2406 , 900301 , '{wr daysuntil(ma' , 'Probezeitb_WR)}', 'Tage bis Probezeitende' , 1 , 0 , 100 , '{wr daysuntil(ma.Probezeitb_WR)}');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2310 , 900500 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr {wr +()} person.vorname_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2311 , 900500 , 'abt' , 'bez_wr {wr +()} '' ('' {wr +()} abt.abtkurz_wr {wr +()} '')'' ' , 'Kostenstellenk�rzel' , 1 , 0 , 250 , 'abt.bez_wr {wr +()} abt.abtkurz_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2312 , 900500 , 'quaart' , 'bez_wr' , 'Qualifikationsart' , 1 , 0 , 250 , 'quaart.bez_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2313 , 900500 , 'quali' , 'bez1_wr' , 'Qualifikation' , 1 , 0 , 200 , 'quali.bez1_wr');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2314 , 900500 , 'case when mapro','gueltigbis_wr is null then {wr datetostring(mapro.datumseit_wr)} else {wr datetostring(mapro.datumseit_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(mapro.gueltigbis_wr)} end' , 'G�ltigkeit' , 1 , 0 , 200 , 'case when mapro.gueltigbis_wr is null then {wr datetostring(mapro.datumseit_wr)} else {wr datetostring(mapro.datumseit_wr)} {wr +()} {wr datetostring(mapro.gueltigbis_wr)} end');
insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(2315 , 900500 , 'quaaus' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 100 , 'quaaus.bez1_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300101 , 730630 , 'quali' , 'bez1_wr' , 'Qualifikation' , 1 , 0 , 200 , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300102 , 730630 , 'quaaus' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300103 , 730630 , 'berpro' , 'punkte_wr' , 'Punkte' , 1 , 0 , 200 , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300104 , 730630 , 'u1' , 'text_wr' , 'Note' , 1 , 0 , 50 , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300105 , 730630 , 'berpro' , 'datumseit_wr' , 'Abschlussdatum' , 1 , 0 , 110 , 'berpro.datumseit_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(300106 , 730630 , 'berpro' , 'fachricht_wr' , 'Fachrichtung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53000 , 10 , 'PK' , 'text_wr' , 'Qualifikation' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53001 , 10 , 'PK' , 'text_wr' , 'Bezeichnung 2' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53002 , 10 , 'PK' , 'text_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53003 , 10 , 'PK' , 'text_wr' , 'Numerischer Wert' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53004 , 10 , 'PK' , 'text_wr' , 'Note' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53005 , 10 , 'PK' , 'text_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53006 , 10 , 'PK' , 'text_wr' , 'Numerischer Wert' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53007 , 10 , 'PK' , 'text_wr' , 'Note' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53008 , 10 , 'PK' , 'text_wr' , 'Bemerkung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53009 , 10 , 'PK' , 'text_wr' , '�bernahme in Mitarbeiterprofil' , 1 , 0 , 200 , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53100 , 12 , 'QUALI' , 'BEZ1_WR' , 'Qualifikation' , 1 , 0 , 200 , 'mabeuq.rf_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53101 , 12 , 'QUALI' , 'BEZ2_WR' , 'Bezeichnung 2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53102 , 12 , 'quaaus' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53103 , 12 , '{wr zahlvormohneEuro(mabeuq' , 'punkte_wr)}' , 'Numerischer Wert' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53104 , 12 , 'ukz' , 'text_wr' , 'Note' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53105 , 12 , 'case when mabeuq' , 'unmapro_wr = 1 then ''Ja'' else ''Nein'' end' , '�bernahme in Mitarbeiterprofil' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53106 , 12 , 'q' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53107 , 12 , '{wr zahlvormohneEuro(mabeuq' , 'PunkteMa_WR)}' , 'Numerischer Wert' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53108 , 12 , 'u' , 'text_wr' , 'Note' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53109 , 12 , 'mabeuq' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53110 , 12, '{wr memotostring(MABEUQ' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53111 , 12 , 'mabeuq' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53112 , 12 , 'quali' , 'pk' , 'pk2' , 0 , 1 , null , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53100 , 12 , 'mabeuq {wr left outer join(quali,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'quali.online_wr =''J'' and MABEUQ.LFDBEUNR_WR= :mabeuqpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53101 , 12 , '{wr left outer join(quaaus,quaaus.pk = mabeuq.auskurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53102 , 12 , '{wr left outer join(ukz,ukz.pk = mabeuq.note_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53103 , 12 , '{wr left outer join(ukz u,u.pk = mabeuq.NoteMa_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53104 , 12 , '{wr left outer join(quaaus q,q.pk = mabeuq.AusKurzMa_WR)}' , null);


update Webtext set webfedpk_wr = 55023 where webfedpk_wr = 55012;
update Webtext set webfedpk_wr = 55022 where webfedpk_wr = 55011;
update Webtext set webfedpk_wr = 55021 where webfedpk_wr = 55010;
update Webtext set webfedpk_wr = 55020 where webfedpk_wr = 55009;
update Webtext set webfedpk_wr = 55019 where webfedpk_wr = 55008;
update Webtext set webfedpk_wr = 55018 where webfedpk_wr = 55007;
update Webtext set webfedpk_wr = 55017 where webfedpk_wr = 55006;
update Webtext set webfedpk_wr = 55016 where webfedpk_wr = 55005;
update Webtext set webfedpk_wr = 55015 where webfedpk_wr = 55004;
update Webtext set webfedpk_wr = 55014 where webfedpk_wr = 55003;

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55000 , 54000 , '{wr datetostring(mnhma' , 'von_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(mnhma.bis_wr)}' , 'Durchf�hrung' , 1 , 0 , 200 , 'mnhma.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55001 , 54000 , 'mnh' , 'bez1_wr' , 'Ma�nahmenart' , 1 , 0 , 200 , 'mnh.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55002 , 54000 , 'mnhma' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55013 , 54000 , 'mnhma' , 'bez2_wr' , 'Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55014 , 54000 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55015 , 54000 , 'mapeg' , 'datumstatt_wr' , 'Datum des MA-Gespr�chs' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');
update Webtext set text='Datum des MA-Gespr�chs' where webfedpk_wr = 55015 and geaendert = 0;

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55016 , 54000 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55017 , 54000 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55018 , 54000 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55019 , 54000 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55020 , 54000 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55021 , 54000 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55022 , 54000 , 'MNHMA' , 'durchgefue_wr' , 'Ma�nahme stattgefunden' , 1 , 0 , 120 , 'MNHMA.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55023 , 54000 , 'case when mnhma' , 'GENSTATUS_WR = 1 then ''Genehmigt'' when mnhma.GENSTATUS_WR=2 then ''Abgelehnt'' when mnhma.GENSTATUS_WR=3 then ''Nicht erforderlich'' else ''Offen'' end' , 'Status der Genehmigung' , 1 , 0 , 150 , 'mnhma.genstatus_wr');
delete webtext where webfedpk_wr =55023;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55024 , 54000 , '{wr zahlvorm(MNHMA' , 'Kostenplan_wr )}' , 'Kosten Plan' , 1 , 0 , 100 , 'mnhma.Kostenplan_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55025 , 54000 , '{wr zahlvorm(MNHMA' , 'Kosten_wr )}' , 'Kosten Ist' , 1 , 0 , 100 , 'mnhma.Kosten_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55027 , 54000 , 'mnhma' , 'pk' , 'PK' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55026 , 54000 , 'mnhma' , 'von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.von_wr');

update Webtext set webfedpk_wr = 55127 where webfedpk_wr = 55114;
update Webtext set webfedpk_wr = 55126 where webfedpk_wr = 55113;
update Webtext set webfedpk_wr = 55125 where webfedpk_wr = 55112;
update Webtext set webfedpk_wr = 55124 where webfedpk_wr = 55111;
update Webtext set webfedpk_wr = 55123 where webfedpk_wr = 55110;
update Webtext set webfedpk_wr = 55122 where webfedpk_wr = 55109;
update Webtext set webfedpk_wr = 55121 where webfedpk_wr = 55108;
update Webtext set webfedpk_wr = 55120 where webfedpk_wr = 55107;
update Webtext set webfedpk_wr = 55119 where webfedpk_wr = 55106;
update Webtext set webfedpk_wr = 55118 where webfedpk_wr = 55105;
update Webtext set webfedpk_wr = 55117 where webfedpk_wr = 55104;
update Webtext set webfedpk_wr = 55116 where webfedpk_wr = 55103;

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55100 , 54001 , '{wr datetostring(mnhma' , 'von_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(mnhma.bis_wr)}' , 'Durchf�hrung' , 1 , 0 , 200 , 'mnhma.von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55101 , 54001 , 'mnh' , 'bez1_wr' , 'Ma�nahmenart' , 1 , 0 , 200 , 'mnh.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55102 , 54001 , 'mnhma' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55115 , 54001 , 'mnhma' , 'bez2_wr' , 'Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55116 , 54001 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55117 , 54001 , 'mapeg' , 'datumstatt_wr' , 'Datum des MA-Gespr�chs' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');
update Webtext set text='Datum des MA-Gespr�chs' where webfedpk_wr = 55117 and geaendert = 0;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55118 , 54001 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55119 , 54001 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55120 , 54001 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55121 , 54001 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55122 , 54001 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55123 , 54001 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55124 , 54001 , 'MNHMA' , 'durchgefue_wr' , 'Ma�nahme stattgefunden' , 1 , 0 , 120 , 'MNHMA.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55125 , 54001 , '{wr zahlvorm(mnhma' , 'kosten_wr)}' , 'Kosten' , 1 , 0 , 70 , 'mnhma.kosten_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55126 , 54001 , 'case when mnhma' , 'ABGELEHNT1_WR is not null or ABGELEHNT2_WR is not null or ABGELEHNT3_WR is not null then ''Abgelehnt'' when mnhma.genehm1pk_wr >0 and mnhma.GENEHMIGT1_WR is null then ''1. Genehmiger'' when mnhma.genehm2pk_wr >0 and mnhma.GENEHMIGT2_WR is null then ''2. Genehmiger'' when mnhma.genehm3pk_wr >0 and mnhma.GENEHMIGT3_WR is null  then ''3. Genehmiger'' end' , 'Genehmiger' , 1 , 0 , 120 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55127 , 54001 , 'case when mnhma' , 'GENSTATUS_WR = 1 then ''Genehmigt'' when mnhma.GENSTATUS_WR=2 then ''Abgelehnt'' when mnhma.GENSTATUS_WR=3 then ''Nicht erforderlich'' else ''Offen'' end' , 'Status der Genehmigung' , 1 , 0 , 150 , 'mnhma.genstatus_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(55128 , 54001 , 'mnhma' , 'pk' , 'PK' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17785 , 17784 , '{wr ifnull(person' , 'name_wr,'''')} {wr +()} '', '' {wr +()} {wr ifnull(person.vorname_wr,'''')}' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17786 , 17784 , 'person' , 'strasse_wr' , 'Strasse' , 1 , 0 , 200 , 'person.strasse_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17787 , 17784 , '{wr ifnull(person' , 'plz_wr,'''')} {wr +()} '' '' {wr +()} {wr ifnull(person.ort_wr,'''')}' , 'Plz, Ort' , 1 , 0 , 200 , 'person.plz_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17788 , 17784 , 'bng' , 'eingdatum_wr' , 'Datum' , 1 , 0 , 100 , 'bng.eingdatum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17789 , 17784 , 'ukz' , 'text_wr' , 'Status' , 1 , 0 , 100 , 'ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17790 , 17784 , '(select max(ukz' , 'TEXT_WR) from (select WLDatum_WR datum,bng.pk,StelAbt_WR a from bng union select WLDatum2_WR datum,bng.pk,WLSteAbt2_WR a from bng union select WLDatum3_WR datum,bng.pk,WLSteAbt3_WR a from bng union select WLDatum4_WR datum,bng.pk,WLSteAbt4_WR a from bng union select WLDatum5_WR datum,bng.pk,WLSteAbt5_WR a from bng union select WLDatum6_WR datum,bng.pk,WLSteAbt6_WR a from bng union select WLDatum7_WR datum,bng.pk,WLSteAbt7_WR a from bng union select WLDatum8_WR datum,bng.pk,WLSteAbt8_WR a from bng union select WLDatum9_WR datum,bng.pk,WLSteAbt9_WR a from bng union select WLDatum10_WR datum,bng.pk,WLSteAbt10_WR a from bng ) b  left outer join ukz on a = ukz.pk where b.pk = bng.pk and b.datum = (select max(datum) from (select WLDatum_WR datum,bng.pk,StelAbt_WR a from bng union select WLDatum2_WR datum,bng.pk,WLSteAbt2_WR a from bng union select WLDatum3_WR datum,bng.pk,WLSteAbt3_WR a from bng union select WLDatum4_WR datum,bng.pk,WLSteAbt4_WR a from bng union select WLDatum5_WR datum,bng.pk,WLSteAbt5_WR a from bng union select WLDatum6_WR datum,bng.pk,WLSteAbt6_WR a from bng union select WLDatum7_WR datum,bng.pk,WLSteAbt7_WR a from bng union select WLDatum8_WR datum,bng.pk,WLSteAbt8_WR a from bng union select WLDatum9_WR datum,bng.pk,WLSteAbt9_WR a from bng union select WLDatum10_WR datum,bng.pk,WLSteAbt10_WR a from bng ) bb where pk = bng.pk and a > 0) )' , 'Stellungnahme' , 1 , 0 , 150 ,null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17791 , 17784 , 'bng' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17797 , 17794 , 'ost' , 'bez1_wr' , 'Offene Stelle' , 1 , 0 , 200 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17798 , 17794 , '{wr ifnull(person' , 'name_wr,'''')} {wr +()} '', '' {wr +()} {wr ifnull(person.vorname_wr,'''')}' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17799 , 17794 , 'person' , 'strasse_wr' , 'Strasse' , 1 , 0 , 200 , 'person.strasse_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17800 , 17794 , '{wr ifnull(person' , 'plz_wr,'''')} {wr +()} '' '' {wr +()} {wr ifnull(person.ort_wr,'''')}' , 'Plz, Ort' , 1 , 0 , 200 , 'person.ort_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17801 , 17794 , 'bng' , 'eingdatum_wr' , 'Datum' , 1 , 0 , 100 , 'bng.eingdatum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17802 , 17794 , 'ukz' , 'text_wr' , 'Status' , 1 , 0 , 100 , 'ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17803 , 17794 , '(select max(ukz' , 'TEXT_WR) from (select WLDatum_WR datum,bng.pk,StelAbt_WR a from bng union select WLDatum2_WR datum,bng.pk,WLSteAbt2_WR a from bng union select WLDatum3_WR datum,bng.pk,WLSteAbt3_WR a from bng union select WLDatum4_WR datum,bng.pk,WLSteAbt4_WR a from bng union select WLDatum5_WR datum,bng.pk,WLSteAbt5_WR a from bng union select WLDatum6_WR datum,bng.pk,WLSteAbt6_WR a from bng union select WLDatum7_WR datum,bng.pk,WLSteAbt7_WR a from bng union select WLDatum8_WR datum,bng.pk,WLSteAbt8_WR a from bng union select WLDatum9_WR datum,bng.pk,WLSteAbt9_WR a from bng union select WLDatum10_WR datum,bng.pk,WLSteAbt10_WR a from bng ) b  left outer join ukz on a = ukz.pk where b.pk = bng.pk and b.datum = (select max(datum) from (select WLDatum_WR datum,bng.pk,StelAbt_WR a from bng union select WLDatum2_WR datum,bng.pk,WLSteAbt2_WR a from bng union select WLDatum3_WR datum,bng.pk,WLSteAbt3_WR a from bng union select WLDatum4_WR datum,bng.pk,WLSteAbt4_WR a from bng union select WLDatum5_WR datum,bng.pk,WLSteAbt5_WR a from bng union select WLDatum6_WR datum,bng.pk,WLSteAbt6_WR a from bng union select WLDatum7_WR datum,bng.pk,WLSteAbt7_WR a from bng union select WLDatum8_WR datum,bng.pk,WLSteAbt8_WR a from bng union select WLDatum9_WR datum,bng.pk,WLSteAbt9_WR a from bng union select WLDatum10_WR datum,bng.pk,WLSteAbt10_WR a from bng ) bb where pk = bng.pk and a > 0) )' , 'Stellungnahme' , 1 , 0 , 150 ,null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17804 , 17794 , 'bng' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17806 , 17804 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17807 , 17804 , 'ost' , 'offenab_wr' , 'Seit' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17808 , 17804 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18950 , 18949 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18951 , 18949 , 'perkal' , 'datumvoN_wr' , 'Termin von' , 1 , 0 , 110 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18952 , 18949 , 'perkal' , 'datumbis_wr' , 'Termin bis' , 1 , 0 , 110 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18953 , 18949 , 'perkal' , 'atage_wr' , 'Urlaubstage' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18954 , 18949 , 'case when perkal' , 'halbertag_wr =1 then ''Ja'' else ''Nein'' end' , 'Halber Tag' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18955 , 18949 , 'abwart' , 'bez_wr' , 'Grund' , 1 , 0 , 180 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18963 , 18954 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18964 , 18954 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18965 , 18954 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18966 , 18954 , 'buchtn' , 'terwunsch_wr' , 'Terminwunsch' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19102 , 19103 , 'ltrim(ost' , 'OstNr_WR)' , 'Stellenr.' , 1 , 0 , 100 , 'ost.OstNr_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19104 , 19103 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , 'ost.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19105 , 19103 , 'ost' , 'offenab_wr' , 'Besetzung zum' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19106 , 19103 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19519 , 19510 , 'ltrim(ost' , 'OstNr_WR)' , 'Stellenr.' , 1 , 0 , 100 , 'ost.OstNr_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19520 , 19510 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , 'ost.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19521 , 19510 , 'ost' , 'offenab_wr' , 'Besetzung zum' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19522 , 19510 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19219 , 19210 , 'ltrim(ost' , 'OstNr_WR)' , 'Stellenr.' , 1 , 0 , 100 , 'ost.OstNr_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19220 , 19210 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , 'ost.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19221 , 19210 , 'ost' , 'offenab_wr' , 'Besetzung zum' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19222 , 19210 , null , '''Details''' , 'Info' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19223 , 19210 , null , '''Bewerben''' , 'Bewerben' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19224 , 19210 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19109 , 19110 , 'ltrim(ost' , 'OstNr_WR)' , 'Stellenr.' , 1 , 0 , 100 , 'ost.OstNr_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19111 , 19110 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , 'ost.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19112 , 19110 , 'ost' , 'offenab_wr' , 'Besetzung zum' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19113 , 19110 , null , '''Details''' , 'Info' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19114 , 19110 , null , '''Bewerben''' , 'Bewerben' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19115 , 19110 , null , '''Dokument''' , 'Dokumente' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19116 , 19110 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19312 , 19311 , 'ost' , 'bez1_wr' , 'Offene Stelle' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19313 , 19311 , 'bng' , 'datum_wr' , 'Bewerbung gespeichert am' , 1 , 0 , 200 , 'bng.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19314 , 19311 , 'bng' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19337 , 73 , 'doku' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19338 , 19336 , 'doku' , 'datumvon_wr' , 'Wann gespeichert' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19339 , 19336 , 'wrblob' , 'filename_wr' , 'Bezeichnung/Dateiname' , 1 , 0 , 200 , null);
update Webtext set seite ='Bezeichnung/Dateiname' where geaendert = 0 and webfedpk_wr = 19339;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19340 , 19336 , 'ukz' , 'text_wr' , 'Dokumentenart' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19500 , 19336 , 'wrblob' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19367 , 19366 , 'quali' , 'bez1_wr' , 'Qualifikation' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19368 , 19366 , 'quaaus' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19386 , 19382 , 'vgg' , 'datum_wr' , 'Datum' , 1 , 0 , 100 , 'vgg.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19387 , 19382 , 'ukz' , 'text_wr' , 'Vorgangsart' , 1 , 0 , 150 , 'ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19388 , 19382 , 'vgg' , 'bez_wr' , 'Details' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19389 , 19382 , 'uuser' , 'name_wr' , 'Bearbeiter' , 1 , 0 , 200 , 'uuser.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19437 , 19408 , 'llf' , 'datumvon_wr' , 'Von' , 1 , 0 , 100 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19438 , 19408 , 'llf' , 'datumbis_wr' , 'Bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19439 , 19408 , 'ukz' , 'text_wr' , 'Lebenslauf-Art' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19440 , 19408 , 'llf' , 'bez1_wr' , 'Details' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19787 , 19778 , 'semter' , 'UHRVON_WR {wr +()} '' - '' {wr +()} semter.UHRBIS_WR' , 'Uhrzeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19788 , 19778 , 'firma' , 'firma1_wr' , 'Veranstaltungsort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19791 , 19778 , 'semter' , 'TNMIN_WR' , 'TN MIN' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19792 , 19778 , 'semter' , 'TNMAX_WR' , 'TN MAX' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730550 , 730479 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730551 , 730479 , 'magh' , 'von_wr' , 'von' , 1 , 0 , 100 , 'magh.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730552 , 730479 , 'magh' , 'bis_wr' , 'bis' , 1 , 0 , 100 , 'magh.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730553 , 730479 , '{wr zahlvorm(magh' , 'gehalt_wr)}' , 'Gesamt brutto' , 1 , 0 , 150 , 'magh.gehalt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730554 , 730479 , '{wr zahlvorm(magh' , 'GGEHALT_WR)}' , 'Grundgehalt' , 1 , 0 , 150 , 'magh.GGEHALT_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730555 , 730479 , '{wr zahlvorm(magh' , 'ZULAGE1_WR)}' , 'Zulage 1' , 1 , 0 , 150 , 'magh.ZULAGE1_WR');
update webtext set text ='Zulage 1' where id ='730555' and webfedpk_wr = 730555 and text = 'Jahresabschlusspr�mie';
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730556 , 730479 , 'magh' , 'Zulage1Tex_WR' , 'Zulage 1 Text' , 1 , 0 , 150 , null);
update webtext set text ='Zulage 1 Text' where id ='730556' and webfedpk_wr = 730556 and text ='Bemerkung';
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730557 , 730479 , '{wr zahlvorm(magh' , 'ZULAGE2_WR)}' , 'Zulage 2' , 1 , 0 , 150 , 'magh.ZULAGE2_WR');
update webtext set text ='Zulage 2' where id ='730557' and webfedpk_wr = 730557 and text = 'JAP %';


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730561 , 730479 , 'magh' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10073 , 800001 , '{wr datetostring(p' , 'vertragvon_wr)}' , 'Vertrag von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10074 , 800001 , '{wr datetostring(p' , 'vertragbis_wr)}' , 'Vertrag bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(202772 , 22772 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(202775 , 22772 , 'cc' , 'datumvon_wr' , 'von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(202776 , 22772 , 'cc' , 'datumbis_wr' , 'bis' , 1 , 0 , 100 , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19574 , 19573 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 150 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19575 , 19573 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 300 , 'semtyp.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19578 , 19573 , 'semtyp' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19581 , 19579 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19582 , 19579 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19583 , 19579 , '{wr memotostring(semtyp' , 'semziel_wr)}' , 'Ziel' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19584 , 19579 , '{wr memotostring(semtyp' , 'voraussetz_wr)}' , 'Voraussetung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19585 , 19579 , '{wr memotostring(semtyp' , 'sembeschr_wr)}' , 'Beschreibung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19586 , 19579 , '{wr memotostring(semtyp' , 'seminh_wr)}' , 'Inhalt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19587 , 19579 , 'semtyp' , 'preisint_wr' , 'Preis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19623 , 19622 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19624 , 19622 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , 'semter.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19625 , 19622 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , 120 , 'semter.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19626 , 19622 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , 120 , 'semter.datumbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19627 , 19622 , 'firma' , 'firma1_wr' , 'Ort-Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19628 , 19622 , 'firma' , 'firma2_wr' , 'Ort-Bezeichnung2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19629 , 19622 , 'raum' , 'bez_wr' , 'Raum' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19630 , 19622 , 'semter' , 'tnmax_wr-(anzahl1_wr+anzahl2_wr)' , 'Freie Pl�tze' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19632 , 19622 , 'semter' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19680 , 19623 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19681 , 19623 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19682 , 19623 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , 120 , 'semter.datumvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19683 , 19623 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , 120 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19684 , 19623 , 'firma' , 'firma1_wr' , 'Ort-Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19685 , 19623 , 'firma' , 'firma2_wr' , 'Ort-Bezeichnung2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19686 , 19623 , 'raum' , 'bez_wr' , 'Raum' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19687 , 19623 , 'semter' , 'tnmax_wr-(anzahl1_wr+anzahl2_wr)' , 'Freie Pl�tze' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19688 , 19623 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19689 , 19623 , 'semter' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19690 , 19624 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19691 , 19624 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19692 , 19624 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , 120 , 'semter.datumvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19693 , 19624 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , 120 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19694 , 19624 , 'firma' , 'firma1_wr' , 'Ort-Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19695 , 19624 , 'firma' , 'firma2_wr' , 'Ort-Bezeichnung2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19696 , 19624 , 'raum' , 'bez_wr' , 'Raum' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19697 , 19624 , 'semter' , 'tnmax_wr-(anzahl1_wr+anzahl2_wr)' , 'Freie Pl�tze' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19698 , 19624 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19699 , 19624 , 'semter' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19728 , 19725 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19729 , 19725 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19730 , 19725 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , 120 , 'semter.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19731 , 19725 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , 120 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19732 , 19725 , 'firma' , 'firma1_wr' , 'Ort-Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19733 , 19725 , 'firma' , 'firma2_wr' , 'Ort-Bezeichnung2' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19734 , 19725 , 'raum' , 'bez_wr' , 'Raum' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19735 , 19725 , 'semter' , 'tnmax_wr-(anzahl1_wr+anzahl2_wr)' , 'Freie Pl�tze' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19737 , 19725 , 'semter' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19779 , 19778 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19780 , 19778 , 'semter' , 'semternr_wr' , 'Seminarnummer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19781 , 19778 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13982 , 13980 , 'ukonto' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 160 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13983 , 13980 , 'ukonto' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 160 , 'ukonto.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13984 , 13980 , 'ukonto' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , 'ukonto.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13985 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr else ukonto.urlaubsoll_wr end' , 'Urlaub akt. Jahr Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19750 , 19790 , 'semter' , 'thema_wr {wr +()} '' ('' {wr +()} ltrim(semternr_wr)  {wr +()} '')''' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19751 , 19790 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19752 , 19790 , 'semter' , 'uhrvon_wr' , 'Uhrzeit' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19753 , 19790 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19754 , 19790 , 'semter' , 'uhrbis_wr' , 'Uhrzeit' , 1 , 0 , null , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19799 , 18954 , '{wr datetostring(buchtn' , 'terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(buchtn.terminbis_wr)}' , 'Termin' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20791 , 20589 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20792 , 20589 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 120 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20793 , 20589 , 'semter' , 'semternr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , 'semter.semternr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20794 , 20589 , 'buchdo' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 90 , 'buchdo.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13986 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlvjsoll_wr else ukonto.urlaubvjso_wr end' , 'Rest Vorjahr' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13987 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr + hurlvjsoll_wr else ukonto.urlaubsoll_wr + urlaubvjso_wr end' , 'Gesamt Soll' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20795 , 20589 , 'buchdo' , 'zeitvon_wr' , 'Zeit von' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20796 , 20589 , 'buchdo' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 90 , 'buchdo.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20797 , 20589 , 'buchdo' , 'zeitbis_wr' , 'Zeit bis' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20819 , 20589 , 'semter' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20821 , 20820 , 'person' , 'persnr_wr' , 'Personen-Nr' , 1 , 0 , 120 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20822 , 20820 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20823 , 20820 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 180 , 'firma.firma1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20824 , 20820 , 'abt' , 'bez_wr' , 'OE Bezeichnung' , 1 , 0 , 200 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21230 , 21238 , 'quaart' , 'bez_wr' , 'Qualifikationsart' , 1 , 0 , 150 , 'quaart.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21231 , 21238 , 'quali' , 'bez1_wr' , 'Qualifikations-Bez.' , 1 , 0 , 250 , 'quali.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21232 , 21238 , 'quaaus' , 'bez1_wr' , 'Auspr�gungs-Bez.' , 1 , 0 , 250 , 'quaaus.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21233 , 21238 , 'mapro' , 'punkte_wr' , 'Punkte' , 1 , 0 , 50 , 'mapro.punkte_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21234 , 21238 , 'quaausma' , 'bez1_wr' , 'Auspr�gung Selbsteinsch�tzung' , 1 , 0 , 150 , 'quaausma.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21235 , 21238 , 'case when mapro' , 'ausqualier_wr = 1 then ''Ja'' else '' '' end' , 'Herkunft Quali.Erhebung' , 1 , 0 , 50 , 'mapro.ausqualier_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21236 , 21238 , 'mapro' , 'datumseit_wr' , 'Qualifikation seit' , 1 , 0 , 100 , 'mapro.datumseit_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21237 , 21238 , 'mapro' , 'gueltigbis_wr' , 'G�ltig bis' , 1 , 0 , 100 , 'mapro.gueltigbis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21238 , 21238 , 'QUALI' , 'QualiKurz_WR' , 'Qualifikationsk�rzel' , 1 , 0 , 100 , 'quali.qualikurz_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740007 , 21238 , 'mapro' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21259 , 21258 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21260 , 21258 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21263 , 21258 , 'person' , 'name_wr {wr +()} '' '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21278 , 21273 , 'lb' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21830 , 21826 , 'firma' , 'FIRMAnr_WR' , 'Firma-Nr.' , 1 , 0 , 80 , 'firma.FIRMAnr_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21831 , 21826 , 'Person' , 'name_wr' , 'Name' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(21832 , 21826 , 'Person' , 'vorname_wr' , 'Vorname' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22098 , 22096 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22099 , 22096 , 'semter' , 'datumvon_wr' , 'Von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22100 , 22096 , 'semter' , 'datumbis_wr' , 'Bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22101 , 22096 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22106 , 22097 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22107 , 22097 , 'semter' , 'datumvon_wr' , 'Von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22108 , 22097 , 'semter' , 'datumbis_wr' , 'Bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22109 , 22097 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22122 , 22118 , 'person' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22130 , 22126 , 'peron' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22770 , 22771 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22774 , 22771 , 'cc' , 'x' , 'aktuelle Abteilung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22775 , 22771 , 'cc' , 'datumvon_wr' , 'von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22776 , 22771 , 'cc' , 'datumbis_wr' , 'bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22799 , 22796 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22801 , 22796 , 'person' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22932 , 22931 , 'p1' , 'name_wr {wr +()} '', '' {wr +()} p1.vorname_wr' , 'Name des Betreuers' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22933 , 22931 , 'p1' , 'telefon1_wr /*ShowWhenBetrTelActive*/' , 'Telefon' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730900 , 730462 , 'case when perkal' , 'grund_wr = 0 then webpar.value_wr else ukz.text_wr end' , 'Grund' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730920 , 730505 , 'case when perkal' , 'grund_wr = 0 then webpar.value_wr else ukz.text_wr end' , 'Grund' , 1 , 0 , 150 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(22936 , 22931 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730540 , 730465 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730541 , 730465 , 'magh' , 'von_wr' , 'von' , 1 , 0 , 100 , 'magh.von_wr');


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730542 , 730465 , 'magh' , 'bis_wr' , 'bis' , 1 , 0 , 100 , 'magh.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730543 , 730465 , '{wr zahlvorm(magh' , 'gehalt_wr)}' , 'Gesamt brutto' , 1 , 0 , 150 , 'magh.gehalt_wr');


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730545 , 730465 , 'magh' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(23625 , 23624 , null , '{wr datetostring(aa)} {wr +()} '' - '' {wr +()} {wr datetostring(bb)}' , 'Termin von, bis' , 1 , 0 , 200 , 'aa');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(23627 , 23624 , null , 'pp' , 'personenpk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(23688 , 331123 , null , 'case when aa <= {fn now()} and bb >= {fn now()} or aa >= {fn now()} then ''1'' else ''0'' end' , 'Wann' , 1 , 0 , 0 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(23783 , 331198 , null , 'case when aa <= {fn now()} and bb >= {fn now()} or aa >= {fn now()} then ''1'' else ''0'' end' , 'Wann' , 1 , 0 , 0 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9124 , 331219 , 'ltrim(FIRMA' , 'FIRMA1_wr)' , 'Firma' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331305 , 331300 , 'mafkt' , 'terminvon_wr' , 'Von' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331306 , 331300 , 'mafkt' , 'terminbis_wr' , 'Bis' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331307 , 331300 , 'fkt' , 'bez1_wr' , 'Funktion' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331355 , 331350 , null , '{wr datetostring(llf.datumvon_wr)} ' , 'Von' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331356 , 331350 , null , '{wr datetostring(llf.datumbis_wr)}' , 'Bis' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331357 , 331350 , null , 'ukz.text_wr {wr +()}''\n''{wr +()} llf.bez1_wr {wr +()}''\n''{wr +()} llf.taetigkeit_wr {wr +()} case when firma1_wr is not null then '' \n '' {wr +()} firma1_wr else '' '' end' , 'Details' , 1 , 0 , 300 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331420 , 331400 , 'magh' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , 'magh.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331421 , 331400 , 'magh' , 'von_wr' , 'von' , 1 , 0 , 150 , 'magh.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331422 , 331400 , 'magh' , 'bis_wr' , 'bis' , 1 , 0 , 150 , 'magh.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331423 , 331400 , null , 'cast (magh.gehalt_wr as numeric(10,2))' , 'Gesamt brutto' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331424 , 331400 , 'magh' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331470 , 331450 , 'quaart' , 'Bez_WR' , 'Qualifikationart' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331471 , 331450 , 'quali' , 'bez1_wr' , 'Qualifikations-Bez.' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331472 , 331450 , 'quaaus' , 'bez1_wr' , 'Auspr�gungs-Bez.' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331473 , 331450 , 'mapro' , 'punkte_wr' , 'Punkte' , 1 , 0 , 150 , 'mapro.punkte_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331474 , 331450 , 'quaausma' , 'bez1_wr' , 'Auspr�gung Selbsteinsch�tzung' , 1 , 0 , 150 , 'quaausma.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331475 , 331450 , 'case when mapro' , 'ausqualier_wr = 1 then ''Ja'' else '' '' end' , 'Herkunft Quali.Erhebung' , 1 , 0 , 50 , 'mapro.ausqualier_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(331476 , 331450 , 'mapro' , 'datumseit_wr' , 'Qualifikation seit' , 1 , 0 , 100 , 'mapro.datumseit_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(51001 , 730477 , 'person' , 'pk' , 'PersonenPK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9125 , 331219 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , 199 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730500 , 730458 , 'maaz' , 'datum_wr' , 'Datum' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730501 , 730458 , '{fn dayname(maaz' , 'datum_wr) }' , 'Arbeitstag' , 1 , 0 , 150 , 'maaz.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730502 , 730458 , 'maaz' , 'WAZ_wr' , 'Weitere Arbeitszeit' , 1 , 0 , 150 , 'maaz.WAZ_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(729748 , 331231 , 'agrkal' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(729749 , 331237 , 'perkal' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(729750 , 331214 , 'algkal' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730097 , 730094 , 'firma' , 'FIRMAnr_WR' , 'Firma-Nr.' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730098 , 730094 , 'abt' , 'abtkurz_wr' , 'OE-K�rzel' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730099 , 730094 , 'Person' , 'name_wr' , 'Name' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730100 , 730094 , 'Person' , 'vorname_wr' , 'Vorname' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730405 , 730404 , 'webgruppen' , 'name_wr' , 'Name' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730406 , 730404 , 'webgruppen' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 400 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730419 , 730404 , 'webgruppen' , 'name_wr' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730426 , 730425 , '''\i type=\qcheckbox\q value=\q'' {wr +()} person' , 'persnr_wr {wr +()} ''\q\ii''' , 'Mitglieder' , 1 , 0 , 80 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730427 , 730425 , 'person' , 'persnr_wr' , 'Personalnr.' , 1 , 0 , 100 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730428 , 730425 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730429 , 730425 , 'person' , 'gebdatum_wr' , 'Geburtsdatum' , 1 , 0 , 100 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730430 , 730425 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730437 , 730425 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730461 , 730457 , 'person' , 'persnr_wr' , 'Personalnr.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730462 , 730457 , 'person' , 'name_wr {wr +()} '', '' {wr +()} {fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730463 , 730457 , '{wr datetostring(person' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730464 , 730457 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730465 , 730457 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730504 , 730458 , 'maaz' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730600 , 730459 , 'person' , 'name_wr {wr +()} '', ''  {wr +()} {fn ifnull(person.vorname_wr,'''')}' , 'Stellvertreter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730601 , 730459 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730602 , 730459 , '{wr datetostring(masv' , 'TerminVon_WR)}' , 'G�ltig von' , 1 , 0 , 110 , 'masv.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730603 , 730459 , '{wr datetostring(masv' , 'TerminBis_WR)}' , 'G�ltig bis' , 1 , 0 , 110 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730604 , 730459 , 'case when masv' , 'ONLINEGENE_WR = 0 then ''Nein'' else ''Ja'' end' , 'Online-Genehmigungen' , 1 , 0 , 200 , 'case when masv.ONLINEGENE_WR = 0 then �Nein� else �Ja� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730605 , 730459 , 'masv' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730700 , 730460 , 'person' , 'name_wr {wr +()} '', ''  {wr +()}{fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730701 , 730460 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 250 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730702 , 730460 , 'ltrim(person' , 'persnr_wr)' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730703 , 730460 , 'person' , 'pk' , 'pk2' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740700 , 740488 , 'person' , 'name_wr {wr +()} '', ''  {wr +()}{fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740701 , 740488 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 250 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740702 , 740488 , 'ltrim(person' , 'persnr_wr)' , 'pk' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740703 , 740488 , 'person' , 'pk' , 'pk2' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730800 , 730461 , 'person' , 'name_wr {wr +()} '', '' {wr +()} {fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , 'person.name_wr {wr +()} person.vorname_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730801 , 730461 , '{wr datetostring(person' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , 150 , 'person.gebdatum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730901 , 730462 , '{wr datetostring(perkal' , 'datumvon_wr)} {wr +()} '' -  ''  {wr +()} {wr datetostring(perkal.datumbis_wr)}' , 'Termin' , 1 , 0 , 200 , 'perkal.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730921 , 730505 , '{wr datetostring(perkal' , 'datumvon_wr)} {wr +()} '' -  ''  {wr +()} {wr datetostring(perkal.datumbis_wr)}' , 'Termin' , 1 , 0 , 200 , 'perkal.datumvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(100 , 800004 , 'person' , 'name_wr {wr +()} '', ''  {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(102 , 800004 , '{wr datetostring(mnhma' , 'von_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(mnhma.bis_wr)}' , 'Durchf�hrung' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(104 , 800004 , 'mnh' , 'bez1_wr' , 'Massnahmen-Art' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(106 , 800004 , 'mnhma' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24070 , 900004 , 'PK' , 'name_wr {wr +()} '', '' {wr +()} PK.vorname_wr' , 'Name, Vorname' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24071 , 900004 , 'PK' , 'text_wr' , 'Stellungnahme' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24060 , 900003 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24061 , 900003 , 'bng' , 'Datum_WR' , 'Bewerbungsdatum' , 1 , 0 , 150 , 'bng.Datum_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24062 , 900003 , 'ukz' , 'text_wr' , 'Status' , 1 , 0 , 100 , 'ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24063 , 900003 , 'person' , 'plz_wr {wr +()} '' '' {wr +()} person.ort_wr' , 'PLZ, Ort' , 1 , 0 , 200 , 'person.plz_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24064 , 900003 , 'bng' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20000 , 900002 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20001 , 900002 , 'ost' , 'offenab_wr' , 'Besetzung zum' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20002 , 900002 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 150 , 'firma.firma1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20003 , 900002 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20004 , 900002 , '(select count(bng' , 'pk) from bng where bng.dbaccount= ost.dbaccount and bng.ostnr_wr = ost.pk)' , 'Bewerbungen' , 1 , 0 , 100 , '(select count(bng.pk) from bng where bng.dbaccount= ost.dbaccount and bng.ostnr_wr = ost.pk)');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20005 , 900002 , 'ost' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9998 , 10000 , 'case when ukonto' , 'urleinheit_wr = ''S'' then case when (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) > 0 then ''%KontoIstAusreichend'' else ''%KontoNichtAusreichend'' end else case when (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) >0 then ''%KontoIstAusreichend'' else ''%KontoNichtAusreichend'' end end' , 'Konto Probleme' , 1 , 0 , 10 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9999 , 10000 , 'ltrim(person' , 'persnr_wr)' , 'Personal-Nr.' , 1 , 0 , 90 , '2');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10000 , 10000 , 'case when person' , 'titel_wr = 0 then'''' else utitel.text_wr {wr +()} '' '' end {wr +()} person.name_wr {wr +()} '', '' {wr +()} {wr ifnull(person.vorname_wr,'''')}' , 'Mitarbeiter' , 1 , 0 , 200 , '3');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10001 , 10000 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 200 , '4');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10002 , 10000 , 'case when perkal','datumvon_wr = perkal.datumbis_wr then {wr datetostring(perkal.datumvon_wr)} else {wr datetostring(perkal.datumvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(perkal.datumbis_wr)}  end' , 'Termin' , 1 , 0 , 200 , '5');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10003 , 10000 , 'ABWART' , 'bez_wr' , 'Grund' , 1 , 0 , 200 , '6');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10004 , 10000 , 'case when ukonto' , 'urleinheit_wr = ''S'' then {wr round(AnzAStd_wr,2)} {wr +()} '' Stunde(n)'' else {wr round(atage_wr,2)} {wr +()} '' Tag(e)'' end' , 'Abwesenheit' , 1 , 0 , 200 , '7');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10005 , 10000 , 'ver' , 'name_wr {wr +()} '', '' {wr +()} ver.vorname_wr' , 'Vertreter' , 1 , 0 , 200 , '8');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10006 , 10000 , 'perkal' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10007 , 10000 , 'perkal' , 'pk' , '�ndern Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10008 , 10000 , 'perkal' , 'pk' , 'Genehmigen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10009 , 10000 , 'perkal' , 'pk' , 'Ablehnen Icon' , 2, 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10010 , 10000, 'perkal' , 'pk' , 'L�schen Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10011 , 10000, 'ltrim(perkal' , 'bez_wr)' , 'Bezeichnung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10012 , 10000, '{wr memotostring(perkal' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10013 , 10000, 'case when perkal' , 'stablehnam_wr is not null and perkal.stbeantram_wr is not null then perkal.stbements_wr else perkal.GenBemerk1_WR end' , 'Gehnemigungsbemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10014 , 10000, 'perkal' , 'stgrbem_wr' , 'Stornobemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10015 , 10000, 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10016 , 10000, 'case when perkal' , 'stbeantram_wr is not null and perkal.StGenehmAm_wr is null and perkal.stablehnam_wr is null then 1 else 0 end' , 'storno' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9999 , 10005 , 'ltrim(person' , 'persnr_wr)' , 'Personal-Nr.' , 1 , 0 , 90 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10000 , 10005 , 'case when person' , 'titel_wr = 0 then'''' else utitel.text_wr {wr +()} '' '' end {wr +()} person.name_wr {wr +()} '', '' {wr +()} {wr ifnull(person.vorname_wr,'''')}' , 'Mitarbeiter' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10001 , 10005 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10002 , 10005 , 'case when perkal','datumvon_wr = perkal.datumbis_wr then {wr datetostring(perkal.datumvon_wr)} else {wr datetostring(perkal.datumvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(perkal.datumbis_wr)}  end' , 'Termin' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10003 , 10005 , 'ABWART' , 'bez_wr' , 'Grund' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10004 , 10005 , 'case when ukonto' , 'urleinheit_wr = ''S'' then {wr round(AnzAStd_wr,2)} {wr +()} '' Stunde(n)'' else {wr round(atage_wr,2)} {wr +()} '' Tag(e)'' end' , 'Abwesenheit' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10006 , 10005 , 'perkal' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10008 , 10005 , 'perkal' , 'pk' , 'Genehmigen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10009 , 10005 , 'perkal' , 'pk' , 'Ablehnen Icon' , 2, 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10011 , 10005, 'ltrim(perkal' , 'bez_wr)' , 'Bezeichnung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10012 , 10005, '{wr memotostring(perkal' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10015 , 10005, 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);

-- Manager Self Service -> Genehmigungen -> Seminarbedarf -> Ablehnen
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(601 , 600 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(602 , 600 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(603 , 600 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(604 , 600 , 'buchtn' , 'terwunsch_wr' , 'Terminwunsch' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(605 , 600 , '{wr datetostring(buchtn' , 'terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(buchtn.terminbis_wr)}' , 'Termin' , 1 , 0 , 150 , null);

-- Manager Self Service -> Genehmigungen -> Seminarbedarf -> Ablehnen
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(650 , 600 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , 'buchtn.pk = :seminarpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(651 , 600 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(652 , 600 , '{wr left outer join(tn,tn.persnr_wr = person.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(653 , 600 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(654 , 600 , '{wr left outer join(semtyp, semtyp.pk = buchtn.semtypnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6600 , 10005 , 'person {wr left outer join(perkal,perkal.persnr_wr = person.pk)}' , ':perkalSQL');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6601 , 10005 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6604 , 10005 , '{wr left outer join(ukonto,ukonto.pk = perkal.ukontovon_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6605 , 10005 , '{wr left outer join(ABWART,ABWART.pk = perkal.AbwArtKurz_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6607 , 10005 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6608 , 10005 , '{wr left outer join(utitel,utitel.pk = person.titel_wr )}' , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10101 , 10100 , 'person' , 'persnr_wr' , 'PersNr.' , 1 , 0 , 80 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10102 , 10100 , 'person' , 'name_wr' , 'Name' , 1 , 0 , 150 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10103 , 10100 , 'case when perkal' , 'abwartkurz_wr > 0 then abwart.bez_wr else u1.text_wr end' , 'Grund' , 1 , 0 , 150 , 'case when perkal.abwartkurz_wr > 0 then abwart.bez_wr else u1.text_wr end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10104 , 10100 , '{wr datetostring(perkal' , 'datumvon_wr)} {wr +()} '' -  ''  {wr +()} {wr datetostring(perkal.datumbis_wr)}' ,'Termin' , 1 , 0 , 200 , 'perkal.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10105 , 10100 , 'perkal' , 'atage_wr' , 'Abwesenheit' , 1 , 0 , 80 , 'perkal.atage_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10106 , 10100 , 'perkal' , 'pk' , 'Status' , 1 , 0 , 80 , 'pkalzb.genehmigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10107 , 10100 , 'perzb' , 'pk' , 'Bemerkung' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10108 , 10100 , 'perzb' , 'pk' , '�ndern' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10109 , 10100 , 'perzb' , 'pk' , 'L�schen' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10110 , 10100 , 'perzb' , 'pk' , '�bernehmen' , 1 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10111 , 10100 , 'perzb' , 'pk' , ' ' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30000 , 730595 , 'buchtn' , 'pk' , 'Seminar-Nr.' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30001 , 730595 , 'buchtn' , 'pk' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30002 , 730595 , 'buchtn' , 'pk' , 'Begr�ndung der Ablehnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30003 , 730595 , 'buchtn' , 'pk' , 'Dauer' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30004 , 730595 , 'buchtn' , 'pk' , 'Termin / Terminwunsch' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30005 , 730595 , 'buchtn' , 'pk' , 'Bemerkung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30006 , 730595 , 'buchtn' , 'pk' , 'Status' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30007 , 730595 , 'buchtn' , 'pk' , 'Genehmigen / Ablehnen' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30008 , 730595 , 'buchtn' , 'pk' , 'L�schen' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(749980 , 800003 , 'MABEUQ' , 'PK' , 'Bezeichnung 2' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(749990 , 800002 , 'MABEUQ' , 'PK' , 'Bezeichnung 2' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(750000 , 800002 , 'MABEUQ' , 'PK' , '�bernahme in Mitarbeiterprofil' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9052 , 331082 , 'p' , 'Name_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9053 , 331082 , 'p' , 'Vorname_wr' , 'Vorname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9054 , 331082 , 'p' , 'PK' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9056 , 331082 , 'p' , 'strasse_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9057 , 331082 , 'p' , 'plz_wr' , 'PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9058 , 331082 , 'p' , 'ort_wr' , 'Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9059 , 331082 , 'p' , 'telefonp_wr' , 'Telefon private' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9060 , 331082 , 'p' , 'tmobil_wr' , 'Telefon handy' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9061 , 331082 , 'p' , 'email_wr' , 'E-Mail' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9062 , 331082 , '{wr datetostring(p' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9063 , 331082 , 'p' , 'gebort_wr' , 'Geburtsort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9064 , 331082 , 'fb' , 'firma1_wr' , 'Bankname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9065 , 331082 , 'b' , 'blz_wr' , 'Bankleitzahl' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9066 , 331082 , 'p' , 'kontonr_wr' , 'Kontonummer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9067 , 331082 , 'f' , 'firma1_wr' , 'Betrieb' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9069 , 331082 , 'a' , 'bez_wr' , 'Abteilung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9070 , 331082 , 'stl' , 'bez1_wr' , 'Aktuelle Stelle' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9071 , 331082 , 'UKZPOS' , 'text_wr' , 'Position' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9072 , 331082 , '{wr datetostring(p' , 'eintritt_wr)}' , 'Eintritt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9073 , 331082 , '{wr datetostring(p' , 'vertragvon_wr)}' , 'Vertrag von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9074 , 331082 , '{wr datetostring(p' , 'vertragbis_wr)}' , 'Vertrag bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190701 , 331115 , 'p' , 'strasse_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190702 , 331115 , 'p' , 'strasse1_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190703 , 331115 , 'p' , 'hausnr_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190704 , 331115 , 'p' , 'plz_wr' , 'PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190705 , 331115 , 'p' , 'ort_wr' , 'Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190706 , 331115 , 'p' , 'telefonp_wr' , 'Televon privat' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190707 , 331115 , 'p' , 'tmobil_wr' , 'Handy' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(190708 , 331115 , 'p' , 'email_wr' , 'E-Mail Adresse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9081 , 331123 , '{wr datetostring(a' , 'aa)} {wr +()} '' - '' {wr +()} {wr datetostring(bb)}' , 'Termin von, bis' , 1 , 0 , 200 , 'aa');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9083 , 331134 , null , 'person.name_wr {wr +()} '', '' {wr +()}  person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9085 , 331134 , 'PERSON' , 'pk' , 'PersonenPK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9088 , 331141 , 'firma' , 'FIRMAnr_WR' , 'Firma-Nr.' , 1 , 0 , 80 , 'firma.FIRMAnr_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9089 , 331147 , null , 'person.name_wr {wr +()}'', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9091 , 331157 , 'p' , 'vorname_wr' , 'Vorname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9092 , 331157 , 'p' , 'name_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9093 , 331141 , 'abt' , 'abtkurz_wr' , 'OE-K�rzel' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9094 , 331163 , null , ''' ''' , 'Termin von, bis' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9096 , 331141 , 'Person' , 'name_wr' , 'Name' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9097 , 331141 , 'Person' , 'vorname_wr' , 'Vorname' , 1 , 0 , 130 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9100 , 331147 , 'ilb' , 'datumvon_wr' , 'Beginn' , 1 , 0 , 100 , 'ilb.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9101 , 331147 , 'ilb' , 'datumbis_wr' , 'Ende' , 1 , 0 , 100 , 'ilb.datumbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9103 , 331147 , 'lb' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9104 , 331147 , 'ilb' , 'persnr_wr' , 'persnr' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9114 , 331198 , null , '{wr datetostring(aa)} {wr +()} '' - '' {wr +()} {wr datetostring(bb)}' , 'Termin von, bis' , 1 , 0 , 200 , 'aa');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9116 , 331208 , null , ''' ''' , 'Termin von, bis' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9118 , 331214 , null , 'ukz.text_wr {wr +()} '':  '' {wr +()} algkal.bez_wr' , 'Bezeichner' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9119 , 331214 , 'algkal' , 'datumvon_wr' , 'Beginn' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9120 , 331214 , 'algkal' , 'datumbis_wr' , 'Ende' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9122 , 331219 , 'ilb' , 'datumvon_wr' , 'Beginn' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9123 , 331219 , 'case when ilb' , 'datumbis_wr <= (select {wr todatum(value_wr)} from webpar where key_wr =''EinsatzplanBisDatum'') then ilb.datumbis_wr else (select {wr todatum(value_wr)} from webpar where key_wr =''EinsatzplanBisDatum'') end' , 'Ende' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9126 , 331219 , 'ltrim(p1' , 'name_wr) {wr +()} '', '' {wr +()} ltrim(p1.vorname_wr)' , 'Betreuer' , 1 , 0 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30101 , 730476 , 'agr' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 250 , 'agr.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(30102 , 730476 , 'agr' , 'pk' , 'Agr' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9127 , 331231 , 'ukz' , 'text_wr' , 'Text' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9128 , 331231 , 'agrkal' , 'datumvon_wr' , 'Beginn' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9129 , 331231 , 'agrkal' , 'datumbis_wr' , 'Ende' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9130 , 331237 , null , 'case when perkal.grund_wr = 0 then ABWART.Bez_WR else ukz.text_wr end' , 'Text' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9131 , 331237 , 'perkal' , 'datumvon_wr' , 'Beginn' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9132 , 331237 , 'perkal' , 'datumbis_wr' , 'Ende' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9133 , 331123 , null , 'pp' , 'personenpk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(9134 , 331198 , null , 'pp' , 'personenpk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10263 , 10262 , 'vgg' , 'datum_wr' , 'Datum' , 1 , 0 , 100 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10264 , 10262 , 'ukz' , 'text_wr' , 'Vorgangsart' , 1 , 0 , 200 , 'ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10265 , 10262 , 'vgg' , 'bez_wr' , 'Vorgang' , 1 , 0 , 300 , 'vgg.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10266 , 10262 , null , 'case when erledigt_wr = 1 then ''Ja'' else ''Nein'' end' , 'Erl.' , 1 , 0 , 100 , 'case when erledigt_wr = 1 then �Ja� else �Nein� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10267 , 10262 , 'vgg' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10272 , 10271 , 'vgg' , 'erledigt_wr' , 'Erledigt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10273 , 10271 , 'vgg' , 'bez_wr' , 'Vorgang' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10274 , 10271 , 'vgg' , 'vggart_wr' , 'Vorgangs-Art' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10275 , 10271 , 'vgg' , 'vggtyp_wr' , 'Vorgangstyp' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10276 , 10271 , 'vgg' , 'prio_wr' , 'Priorit�t' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10277 , 10271 , 'vgg' , 'datum_wr' , 'Datum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10278 , 10271 , 'vgg' , 'zeit_wr' , 'Zeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10279 , 10271 , 'vgg' , 'dauer_wr' , 'Dauer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10282 , 10271 , null , '{wr memotostring(vgg.bemerkung_wr)}' , 'Bemerkung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10286 , 10285 , null , '{wr datetostring(datumvon_wr)} {wr +()} case when datumbis_wr is not null then '' - '' {wr +()} {wr datetostring(datumbis_wr)} else '' '' end' , 'Von - Bis' , 1 , 0 , 200 , 'llf.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10287 , 10285 , null , 'ukz.text_wr {wr +()}''\n''{wr +()} llf.bez1_wr {wr +()} case when firma1_wr is not null then '' \n '' {wr +()} firma1_wr else '' '' end' , 'Details' , 1 , 0 , 400 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10290 , 10289 , 'vgg' , 'datum_wr' , 'Datum' , 1 , 0 , 100 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10291 , 10289 , 'ukz' , 'text_wr' , 'Vorgangsart' , 1 , 0 , 200 , 'ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10292 , 10289 , 'vgg' , 'bez_wr' , 'Vorgang' , 1 , 0 , 300 , 'vgg.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10293 , 10289 , null , 'case when erledigt_wr = 1 then ''Ja'' else ''Nein'' end' , 'Erl.' , 1 , 0 , 100 , 'case when erledigt_wr = 1 then �Ja� else �Nein� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10294 , 10289 , 'vgg' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10299 , 10298 , 'vgg' , 'erledigt_wr' , 'Erledigt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10300 , 10298 , 'vgg' , 'bez_wr' , 'Vorgang' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10301 , 10298 , 'vgg' , 'vggart_wr' , 'Vorgangs-Art' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10302 , 10298 , 'vgg' , 'vggtyp_wr' , 'Vorgangstyp' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10303 , 10298 , 'vgg' , 'prio_wr' , 'Priorit�t' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10304 , 10298 , 'vgg' , 'datum_wr' , 'Datum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10305 , 10298 , 'vgg' , 'zeit_wr' , 'Zeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10306 , 10298 , 'vgg' , 'dauer_wr' , 'Dauer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10307 , 10298 , 'vgg' , 'persnr_wr' , 'Personen-Nr' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10308 , 10298 , 'vgg' , 'firmanr_wr' , 'Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10309 , 10298 , 'vgg' , 'abtkurz_wr' , 'abt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10310 , 10298 , null , '{wr memotostring(vgg.bemerkung_wr)}' , 'Bemerkung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10415 , 10314 , 'quaart' , 'bez_wr' , 'Qualifikationsart' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10416 , 10314 , 'quali' , 'bez1_wr' , 'Qualifikations-Bezeichnung' , 1 , 0 , 250 , 'quali.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10417 , 10314 , 'quaaus' , 'bez1_wr' , 'Auspr�gungs-Bezeichnung' , 1 , 0 , 250 , 'quaaus.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10418 , 10314 , 'mapro' , 'punkte_wr' , 'Punkte' , 1 , 0 , 150 , 'mapro.punkte_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10419 , 10314 , 'quaausma' , 'bez1_wr' , 'Auspr�gung Selbsteinsch�tzung' , 1 , 0 , 150 , 'quaausma.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10420 , 10314 , 'case when mapro' , 'ausqualier_wr = 1 then ''Ja'' else '' '' end' , 'Herkunft Quali.Erhebung' , 1 , 0 , 50 , 'mapro.ausqualier_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10421 , 10314 , 'mapro' , 'datumseit_wr' , 'Qualifikation seit' , 1 , 0 , 100 , 'mapro.datumseit_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10422 , 10314 , 'mapro' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10322 , 10320 , 'fkt' , 'bez1_wr' , 'Funktionsbezeichnung' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10323 , 10320 , 'mafkt' , 'terminvon_wr' , 'Funktion seit' , 1 , 0 , 200 , 'mafkt.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10324 , 10320 , 'mafkt' , 'terminbis_wr' , 'Funktion bis' , 1 , 0 , 200 , 'mafkt.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10326 , 10325 , 'distinct semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 180 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10327 , 10325 , 'case when semter' , 'pk > 0 then semter.thema_wr else semtyp.thema_wr end' , 'Typ-Ter-Thema' , 1 , 0 , 250 , 'semtyp.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10328 , 10325 , 'buchtn' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 150 , 'buchtn.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10329 , 10325 , 'buchtn' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 150 , 'buchtn.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10330 , 10325 , '{wr round(semter' , 'tntage_wr,1)}' , 'Tage' , 1 , 0 , 150 , '{wr round(semter.tntage_wr,1)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10342 , 10339 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10343 , 10339 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10344 , 10339 , 'stlma' , 'bez1_wr' , 'Stellen-Bezeichnung' , 1 , 0 , 250 , 'stlma.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10345 , 10339 , 'stlma' , 'von_wr' , 'Von' , 1 , 0 , 150 , 'stlma.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10346 , 10339 , 'stlma' , 'bis_wr' , 'Bis' , 1 , 0 , 150 , 'stlma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10347 , 10339 , '{wr round(stlma' , 'bvmj_wr,2)}' , 'MAK' , 1 , 0 , 100 , 'stlma.bvmj_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10349 , 10339 , 'ist' , 'bez1_wr' , 'Stellenbewertung' , 1 , 0 , 150 , 'ist.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10351 , 10339 , 'stlma' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10350 , 10339 , 'case when ABT' , 'ort_wr is not null then ABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when ABT.ort_wr is not null then ABT.ort_wr else firma.ort_wr end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10250 , 10348 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10251 , 10348 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10252 , 10348 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgef. PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10253 , 10348 , 'mnhma' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 150 , 'mnhma.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10254 , 10348 , 'mnhma' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 150 , 'mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10255 , 10348 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10256 , 10348 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10257 , 10348 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 150 , 'mnhma.durchgefue_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10258 , 10348 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10355 , 10354 , 'mapeg' , 'datum_wr' , 'Datum vorgesehen' , 1 , 0 , 150 , 'mapeg.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10356 , 10354 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , 200 , 'mapeg.betreff_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10357 , 10354 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden' , 1 , 0 , 180 , 'mapeg.datumstatt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10358 , 10354 , null , 'person.name_wr {wr +()}'', ''{wr +()}person.vorname_wr' , 'Name Gespr�chspartner' , 1 , 0 , 250 , 'person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10359 , 10354 , null , '#details' , 'Details' , 1 , 0 , 10 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10390 , 10354 , 'mapeg' , 'pk' , 'pk' , 0 , 1 , null, null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10363 , 10362 , 'maziel' , 'von_wr' , 'Geplant von' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10364 , 10362 , 'maziel' , 'bis_wr' , 'Geplant bis' , 1 , 0 , 150 , 'maziel.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10365 , 10362 , 'maziel' , 'grad_wr' , 'Erreichnungsgrad' , 1 , 0 , 180 , 'maziel.grad_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10366 , 10362 , 'maziel' , 'erreichtam_wr' , 'Erreicht am' , 1 , 0 , 150 , 'maziel.erreichtam_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10367 , 10362 , 'maziel' , 'vereinam_wr' , 'vereinbart am' , 1 , 0 , 150 , 'maziel.vereinam_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10368 , 10362 , 'persvm' , 'NAME_wr {wr +()}'', ''{wr +()} persvm.VORNAME_wr' , 'Vereinbart mit' , 1 , 0 , 250 , 'persvm.NAME_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10381 , 10362 , '{wr zahlvorm(maziel' , 'maxpraemie_wr)}' , 'Sollwert' , 1 , 0 , 150 , 'maziel.maxpraemie_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10382 , 10362 , '{wr zahlvorm(maziel' , 'zielpraemi_wr)}' , 'Istwert' , 1 , 0 , 150 , 'maziel.zielpraemi_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10374 , 10372 , 'materm' , 'datum_wr' , 'Termin am' , 1 , 0 , 150 , 'materm.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10375 , 10372 , 'materm' , 'zeitvon_wr' , 'Uhrzeit von' , 1 , 0 , 155 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13296 , 13295 , null , 'name_wr {wr +()} '', ''{wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13297 , 13295 , 'UKZPOS' , 'TEXT_WR' , 'Position' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24001 , 24000 , null , '{wr ifnull(p2.name_wr,'' '')} {wr +()} '', ''{wr +()} {wr ifnull(p2.vorname_wr,'' '')}' , 'F�hrungskraft' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24002 , 24000 , 'p2' , 'telefon1_wr' , 'Telefon Firma' , 1 , 0 , 150 , 'p2.telefon1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24003 , 24000 , 'abt' , 'BEZ_WR' , 'OE' , 1 , 0 , 200 , 'abt.BEZ_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24004 , 24000 , null , 'case when ma.ARBORTNR_WR >0 then f2.FIRMA1_WR {wr +()}''\n''{wr +()} arbort.arbortkurz_wr {wr +()} (case when arbort.bez_wr is null then '''' else '' - ''{wr +()} arbort.bez_wr end){wr +()}''\n''{wr +()} (case when arbort.STRASSE_WR is null then '''' else arbort.STRASSE_WR {wr +()}''\n'' end) {wr +()} (case when arbort.PLZ_WR is null then '''' else arbort.PLZ_WR end) {wr +()} (case when arbort.ORT_WR is null then '''' else '' ''{wr +()} arbort.ORT_WR end) else f1.FIRMA1_WR {wr +()}''\n''{wr +()} f1.STRASSE_WR {wr +()}''\n''{wr +()}  f1.PLZ_WR {wr +()} '' ''{wr +()} f1.ORT_WR end' , 'Arbeitsort' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24005 , 24000 , null , '''E-Mailanfrage''' , 'Anfrage' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24006 , 24000 , 'p1' , 'pk ' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13301 , 13300 , 'case when mabeu' , 'beurteil1d_wr is not null then ''%alt'' else ''%neu'' end' , 'Neu' , 1 , 0 , 10 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13302 , 13300 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13303 , 13300 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13304 , 13300 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13305 , 13300 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13306 , 13300 , 'mabeu' , 'beurteil1d_wr' , 'Beurteilt am' , 1 , 0 , 150 , 'mabeu.beurteil1d_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13307, 13300 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13308, 13300 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13312 , 13300 , 'beurteiler' , 'name_wr {wr +()} '', '' {wr +()} beurteiler.vorname_wr' , 'Beurteiler' , 1 , 0 , 200 , 'beurteiler.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13369 , 13300 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15801 , 14910 , 'case when mabeu' , 'beurteil1d_wr is not null then ''%alt'' else ''%neu'' end' , ' ' , 1 , 0 , 10 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15802 , 14910 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr {wr +()} person.vorname_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15803 , 14910 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15804 , 14910 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15805 , 14910 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15806 , 14910 , 'mabeu' , 'beurteil1d_wr' , 'Beurteilt am' , 1 , 0 , 150 , 'mabeu.beurteil1d_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15807, 14910 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15808, 14910 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15869 , 14910 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13371 , 13370 , 'QUALI' , 'BEZ1_WR' , 'Qualifikations-Bezeichnung' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13372 , 13370 , 'QUAAUS' , 'BEZ1_WR' , 'Auspr�gungs-Bezeichnung' , 1 , 0 , 200 , 'QUAAUS.BEZ1_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13373 , 13370 , 'mabeuq' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13407 , 13403 , 'quali' , 'pk' , 'qualipk' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13408 , 13403 , null , 'PERSON.NAME_WR {wr +()} '', ''{wr +()} PERSON.VORNAME_WR' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13409 , 13403 , 'MABEU' , 'BEZ1_WR' , 'Bezeichnung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13410 , 13403 , 'QUALI' , 'BEZ1_WR' , 'QualiBezeichnung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13411 , 13403 , 'mabeuq' , 'auskurz_wr' , 'auskurz' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13412 , 13403 , 'mabeuq' , 'AUSTEXTKUR_WR' , 'austextkur' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13413 , 13403 , 'mabeuq' , 'datum_wr' , 'Datum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13414 , 13403 , 'mabeuq' , 'punkte_wr' , 'Punkte' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13415 , 13403 , 'mabeuq' , 'note_wr' , 'Note' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13424 , 13403 , null , '{wr memotostring(mabeuq.bemerkung_wr)}' , 'Bemerkung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13461 , 13403 , 'mabeuq' , 'pk' , 'pk' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13470 , 13464 , null , 'PERSON.NAME_WR {wr +()} '', '' {wr +()} PERSON.VORNAME_WR' , 'Name' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13471 , 13464 , 'mabeu' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13604 , 13464 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13605 , 13464 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13606 , 13464 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13607 , 13464 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(201 , 200 , 'PERSON' , 'NAME_WR {wr +()} '', '' {wr +()} PERSON.VORNAME_WR' , 'F�hrungskraft' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(202 , 200 , 'mabeu' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(204 , 200 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(205 , 200 , '{wr datetostring(mabeu' , 'beubis_wr)}' , 'F�llig am' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(206 , 200 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(350 , 202 , 'mabeu' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(351 , 202 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(352 , 202 , '{wr datetostring(mabeu' , 'beubis_wr)}' , 'Beurteilt bis' , 1 , 0 , 150 ,'mabeu.beubis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(355 , 202 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(360 , 203 , 'mabeu' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(361 , 203 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(362 , 203 , '{wr datetostring(mabeu' , 'erledigt_wr)}' , 'Freigegeben am' , 1 , 0 , 150 ,'mabeu.erledigt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(365 , 203 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13959 , 13958 , null , 'PERSon.NAME_wr {wr +()}'', ''{wr +()}PERSon.VORNAME_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13960 , 13958 , null , 'case when perkal.grund_wr = 0 then ABWART.Bez_WR else ukz.text_wr end' , 'Grund' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13961 , 13958 , 'perkal' , 'datumvon_wr' , 'Datumvon' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13962 , 13958 , 'perkal' , 'datumbis_wr' , 'Datumbis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13967 , 13965 , null , 'ukz.text_wr {wr +()} '':  '' {wr +()} algkal.bez_wr' , 'Grund' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13968 , 13965 , 'algkal' , 'datumvon_wr' , 'Datumvon' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13969 , 13965 , 'algkal' , 'datumbis_wr' , 'Datumbis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14039 , 14036 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14040 , 14036 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14041 , 14036 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14042 , 14036 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14043 , 14036 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14044, 14036 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14045, 14036 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14046 , 14036 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14939 , 14900 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14940 , 14900 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14941 , 14900 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14942 , 14900 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14943 , 14900 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14944, 14900 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14945, 14900 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14946 , 14900 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24939 , 24900 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'F�hrungskraft' , 1 , 0 , 200 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24940 , 24900 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24941 , 24900 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24942 , 24900 , '{wr datetostring(mabeu' , 'beubis_wr)}' , 'Beurteilung bis' , 1 , 0 , 150 , 'mabeu.beubis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24944 , 24900 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24951 , 24950 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'F�hrungskraft' , 1 , 0 , 200 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24952 , 24950 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24953 , 24950 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24954 , 24950 , '{wr datetostring(mabeu' , 'beubis_wr)}' , 'Beurteilung bis' , 1 , 0 , 150 , 'mabeu.beubis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24955 , 24950 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14046 , 10372 , 'materm' , 'zeitbis_wr' , 'Uhrzeit bis' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14047 , 10372 , 'materm' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14058 , 14058 , 'case when perkal' , 'WebAktNr_WR = ''1'' or perkal.dbaccount = 999999998 then ''<img width="16" height="16" src="../bilder/th_dn.gif">'' else ''<img width="16" height="16" src="../bilder/M_red.gif">'' end' , ' ' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14059 , 14058 , 'PERKAL' , 'datumvon_wr' , 'Termin von' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14060 , 14058 , 'perkal' , 'datumbis_wr' , 'Termin bis' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14061 , 14058 , 'perkal' , 'zeitvon_wr' , 'Zeit von' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14062 , 14058 , 'perkal' , 'zeitbis_wr' , 'Zeit bis' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14063 , 14058 , 'case when perkal', 'grund_wr =0 then ABWART.bez_wr else ukz.text_wr end' , 'Grund' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14064 , 14058 , '{wr memotostring(perkal' , 'genehmbem_wr)}' , 'Begr�ndung der Ablehnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14065 , 14058 , 'case when ukonto' , 'urleinheit_wr = ''S'' then {wr round(AnzAStd_wr,2)} {wr +()} '' Stunde(n)'' else {wr round(atage_wr,2)} {wr +()} '' Tag(e)'' end' , 'Abwesenheit' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14066 , 14058 , 'case when perkal' , 'WebAktNr_WR = ''1'' then ''Vertreter abgelehnt'' when perkal.dbaccount = 999999998 then ''abgelehnt'' when perkal.dbaccount = 999999999 then ''beantragt'' when perkal.dbaccount = 999999996 then ''beim Vertreter'' else '' '' end ' , 'Status' , 1 , 0 , 90 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14067 , 14058 , 'perkal' , 'pk' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14068 , 14058 , 'perkal' , 'pk' , 'L�schen' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14070 , 14058 , 'ltrim(perkal' , 'bez_wr)' , 'Bezeichnung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14071 , 14058 , '{wr memotostring(perkal' , 'bemerkung_wr)}' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14072 , 14058 , 'case when perkal' , 'stablehnam_wr is not null and perkal.stbeantram_wr is not null then perkal.stbements_wr else perkal.GenBemerk1_WR end' , 'Gehnemigungsbemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14073 , 14058 , 'perkal' , 'stgrbem_wr' , 'Stornobemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14074 , 14058 , 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14075 , 14058 , 'case when perkal' , 'stbeantram_wr is not null and perkal.StGenehmAm_wr is null and perkal.stablehnam_wr is null then 1 else 0 end' , 'storno' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14058 , 16058 , 'case when perkal' , 'WebAktNr_WR = ''1'' or perkal.dbaccount = 999999998 then ''<img width="16" height="16" src="../bilder/th_dn.gif">'' else ''<img width="16" height="16" src="../bilder/M_red.gif">'' end' , ' ' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14059 , 16058 , 'PERKAL' , 'datumvon_wr' , 'Termin von' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14060 , 16058 , 'perkal' , 'datumbis_wr' , 'Termin bis' , 1 , 0 , 75 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14061 , 16058 , 'perkal' , 'zeitvon_wr' , 'Zeit von' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14062 , 16058 , 'perkal' , 'zeitbis_wr' , 'Zeit bis' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14063 , 16058 , 'case when perkal', 'grund_wr =0 then ABWART.bez_wr else ukz.text_wr end' , 'Grund' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14064 , 16058 , '{wr memotostring(perkal' , 'genehmbem_wr)}' , 'Begr�ndung der Ablehnung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14065 , 16058 , 'case when ukonto' , 'urleinheit_wr = ''S'' then {wr round(AnzAStd_wr,2)} {wr +()} '' Stunde(n)'' else {wr round(atage_wr,2)} {wr +()} '' Tag(e)'' end' , 'Abwesenheit' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14066 , 16058 , 'case when perkal' , 'WebAktNr_WR = ''1'' then ''Vertreter abgelehnt'' when perkal.dbaccount = 999999998 then ''abgelehnt'' when perkal.dbaccount = 999999999 then ''beantragt'' when perkal.dbaccount = 999999996 then ''beim Vertreter'' else '' '' end ' , 'Status' , 1 , 0 , 90 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14067 , 16058 , 'perkal' , 'pk' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14068 , 16058 , 'perkal' , 'pk' , 'L�schen' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14070 , 16058 , 'ltrim(perkal' , 'bez_wr)' , 'Bezeichnung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14071 , 16058 , '{wr memotostring(perkal' , 'bemerkung_wr)}' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14072 , 16058 , 'case when perkal' , 'stablehnam_wr is not null and perkal.stbeantram_wr is not null then perkal.stbements_wr else perkal.GenBemerk1_WR end' , 'Gehnemigungsbemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14073 , 16058 , 'perkal' , 'stgrbem_wr' , 'Stornobemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14074 , 16058 , 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14075 , 16058 , 'case when perkal' , 'stbeantram_wr is not null and perkal.StGenehmAm_wr is null and perkal.stablehnam_wr is null then 1 else 0 end' , 'storno' , 0 , 1 , null , null);




insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14223 , 10372 , 'ukz' , 'text_wr' , 'Anlass' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14224 , 10372 , 'firma' , 'firma1_wr' , 'Ort' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14225 , 10372 , 'raum' , 'bez_wr' , 'Raum' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14368 , 14361 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 180 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14369 , 14361 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , 'firma.firma1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14370 , 14361 , 'STLABT' , 'BEZ_WR' , 'OE-Bezeichnung' , 1 , 0 , 110 , 'STLABT.BEZ_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14371 , 14361 , 'stlma' , 'bez1_wr' , 'Stellenbezeichnung' , 1 , 0 , 170 , 'stlma.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14372 , 14361 , 'stlma' , 'von_wr' , 'Von' , 1 , 0 , 70 , 'stlma.von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14373 , 14361 , 'stlma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'stlma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14374 , 14361 , '{wr round(stlma' , 'bvmj_wr,2)}' , 'BV in MJ' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19507 , 14361 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19508 , 14361 , 'g1' , 'bez1_wr' , 'Stellenbewertung' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19512 , 14361 , 'stlma' , 'pk' , 'pk' , 0 , 1 , 0 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19509 , 14361 , 'case when STLABT' , 'ort_wr is not null then STLABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when STLABT.ort_wr is not null then STLABT.ort_wr else firma.ort_wr end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19510 , 14361 , 'STLABT' , 'AbtKurz_WR' , 'OE-K�rzel' , 1 , 0 , 150 , 'STLABT.abtkurz_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19511 , 14361 , 'STL' , 'StlKurz_WR' , 'Stellenk�rzel' , 1 , 0 , 150 , 'STLma.StlKurz_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19512 , 14361 , 'stlma' , 'bez2_wr' , 'Stellen-Bezeichnung 2' , 1 , 0 , 250 ,'stlma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19513 , 14361 , 'stl' , 'frei1_wr' , 'Stellen Freifeld 1' , 1 , 0 , 200 ,'stl.frei1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19514 , 14361 , 'stl' , 'frei2_wr' , 'Stellen Freifeld 2' , 1 , 0 , 200 ,'stl.frei2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19515 , 14361 , 'stl' , 'frei3_wr' , 'Stellen Freifeld 3' , 1 , 0 , 200 ,'stl.frei3_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19516 , 14361 , 'stl' , 'frei4_wr' , 'Stellen Freifeld 4' , 1 , 0 , 200 ,'stl.frei4_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19517 , 14361 , 'stl' , 'frei5_wr' , 'Stellen Freifeld 5' , 1 , 0 , 200 ,'stl.frei5_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19518 , 14361 , 'stl' , 'frei6_wr' , 'Stellen Freifeld 6' , 1 , 0 , 200 ,'stl.frei6_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19519 , 14361 , 'stl' , 'frei7_wr' , 'Stellen Freifeld 7' , 1 , 0 , 200 ,'stl.frei7_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19520 , 14361 , 'stl' , 'frei8_wr' , 'Stellen Freifeld 8' , 1 , 0 , 200 ,'stl.frei8_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19521 , 14361 , 'stl' , 'frei9_wr' , 'Stellen Freifeld 9' , 1 , 0 , 200 ,'stl.frei9_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19522 , 14361 , 'stl' , 'frei10_wr' , 'Stellen Freifeld 10' , 1 , 0 , 200 ,'stl.frei10_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19523 , 14361 , 'stlma' , 'pk' , 'PK' , 0 , 1 , null , null);


update Webtext set webfedpk_wr = 5028 where webfedpk_wr = 5013;
update Webtext set webfedpk_wr = 5029 where webfedpk_wr = 5014;
update Webtext set webfedpk_wr = 5030 where webfedpk_wr = 5015;
update Webtext set webfedpk_wr = 5031 where webfedpk_wr = 5016;
update Webtext set webfedpk_wr = 5032 where webfedpk_wr = 5017;
update Webtext set webfedpk_wr = 5033 where webfedpk_wr = 5018;
update Webtext set webfedpk_wr = 5034 where webfedpk_wr = 5019;
update Webtext set webfedpk_wr = 5035 where webfedpk_wr = 5020;
update Webtext set webfedpk_wr = 5036 where webfedpk_wr = 5021;
update Webtext set webfedpk_wr = 5037 where webfedpk_wr = 5022;
update Webtext set webfedpk_wr = 5038 where webfedpk_wr = 5023;
update Webtext set webfedpk_wr = 5039 where webfedpk_wr = 5024;
update Webtext set webfedpk_wr = 5040 where webfedpk_wr = 5025;
update Webtext set webfedpk_wr = 5041 where webfedpk_wr = 5026;

delete from webtext where webfedpk_wr in (19507,14374);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5010 , 14431 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5011 , 14431 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr:person.vorname_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5012 , 14431 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5027 , 14431 , 'mnhma' , 'bez2_wr' , 'Ma�nahmen-Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5028 , 14431 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5029 , 14431 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5030 , 14431 , 'mnhma' , 'Von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.Von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5031 , 14431 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5032 , 14431 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5033 , 14431 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5034 , 14431 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5035 , 14431 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5036 , 14431 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5037 , 14431 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5038 , 14431 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5039 , 14431 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5040 , 14431 , 'mnhma' , 'MnhStatus_WR' , 'Status der Ma�nahme' , 1 , 0 , 150 , 'mnhma.MnhStatus_WR');
delete from webtext where webfedpk_wr = 5040;

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5041 , 14431 , '{wr zahlvorm(MNHMA' , 'Kostenplan_wr )}' , 'Kosten Plan' , 1 , 0 , 100 , 'mnhma.Kostenplan_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5042 , 14431 , '{wr zahlvorm(MNHMA' , 'Kosten_wr )}' , 'Kosten Ist' , 1 , 0 , 100 , 'mnhma.Kosten_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5043 , 14431 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7010 , 14435 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7011 , 14435 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr:person.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7012 , 14435 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7027 , 14435 , 'mnhma' , 'bez2_wr' , 'Ma�nahmen-Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7028 , 14435 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7029 , 14435 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7030 , 14435 , 'mnhma' , 'Von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.Von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7031 , 14435 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7032 , 14435 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7033 , 14435 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7034 , 14435 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7035 , 14435 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7036 , 14435 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7037 , 14435 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7038 , 14435 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7039 , 14435 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7040 , 14435 , '{wr zahlvorm(MNHMA' , 'Kostenplan_wr )}' , 'Kosten Plan' , 1 , 0 , 100 , 'mnhma.Kostenplan_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7041 , 14435 , '{wr zahlvorm(MNHMA' , 'Kosten_wr )}' , 'Kosten Ist' , 1 , 0 , 100 , 'mnhma.Kosten_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(7042 , 14435 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24683 , 14435 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , 'person.vorgesetzt_wr = :benutzer and person.aktpassiv_wr in( ''1'',''3'')');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24684 , 14435 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , ':mehr');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24685 , 14435 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24686 , 14435 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24687 , 14435 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24688 , 14435 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24689 , 14435 , '{wr left outer join(mp,mp.PK = mnhma.MPKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24690 , 14435 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24691 , 14435 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24692 , 14435 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17010 , 14436 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17011 , 14436 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr:person.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17012 , 14436 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17027 , 14436 , 'mnhma' , 'bez2_wr' , 'Ma�nahmen-Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17028 , 14436 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17029 , 14436 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17030 , 14436 , 'mnhma' , 'Von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.Von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17031 , 14436 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17032 , 14436 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17033 , 14436 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17034 , 14436 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17035 , 14436 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17036 , 14436 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17037 , 14436 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17038 , 14436 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17039 , 14436 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17040 , 14436 , '{wr zahlvorm(MNHMA' , 'Kostenplan_wr )}' , 'Kosten Plan' , 1 , 0 , 100 , 'mnhma.Kostenplan_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17041 , 14436 , '{wr zahlvorm(MNHMA' , 'Kosten_wr )}' , 'Kosten Ist' , 1 , 0 , 100 , 'mnhma.Kosten_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17042 , 14436 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34683 , 14436 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , ':wer and person.aktpassiv_wr in( ''1'',''3'')');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34684 , 14436 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , ':mehr');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34685 , 14436 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34686 , 14436 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34687 , 14436 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34688 , 14436 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34689 , 14436 , '{wr left outer join(mp,mp.PK = mnhma.MPKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34690 , 14436 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34691 , 14436 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(34692 , 14436 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6010 , 10002 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6011 , 10002 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr:person.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6012 , 10002 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6013 , 10002 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6014 , 10002 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6015 , 10002 , 'mnhma' , 'Von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.Von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6016 , 10002 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6017 , 10002 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6018 , 10002 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6019 , 10002 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6020 , 10002 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6021 , 10002 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6022 , 10002 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6023 , 10002 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6024 , 10002 , 'mnhma' , 'extsemnr_wr' , 'externe Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6025 , 10002 , '{wr zahlvorm(mnhma' , 'kosten_wr)}' , 'Kosten' , 1 , 0 , 70 , 'mnhma.kosten_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6026 , 10002 , 'mnhma' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6027 , 10002 , 'mnhma' , 'pk' , 'Genehmigen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6028 , 10002 , 'mnhma' , 'pk' , 'Ablehnen Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6029 , 10002, '{wr memotostring(mnhma' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6030 , 10002 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14701 , 14697 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 120 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14702 , 14697 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 150 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14703 , 14697 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 100 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14704 , 14697 , 'perkal' , 'datumvoN_wr' , 'Termin von' , 1 , 0 , 120 , 'perkal.datumvoN_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14705 , 14697 , 'perkal' , 'datumbis_wr' , 'Termin bis' , 1 , 0 , 110 , 'perkal.datumbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14706 , 14697 , 'ukz' , 'text_wr' , 'Grund' , 1 , 0 , 100 , 'ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14707 , 14697 , 'perkal' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , 'perkal.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14708 , 14697 , 'perkal' , 'atage_wr' , 'Urlaubstage' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14709 , 14697 , 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14718 , 14717 , 'd' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 110 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14719 , 14717 , 'd' , 'name_wr {wr +()} '', '' {wr +()} d.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'd.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14720 , 14717 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14721 , 14717 , 'mapeg' , 'datum_wr' , 'Datum vorgesehen' , 1 , 0 , 120 , 'mapeg.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14722 , 14717 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , 200 , 'mapeg.betreff_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14723 , 14717 , 'mapeg' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24101 , 24100 , 'd' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 110 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24102 , 24100 , 'd' , 'name_wr {wr +()} '', '' {wr +()} d.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'd.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24103 , 24100 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24104 , 24100 , 'mapeg' , 'datum_wr' , 'Datum vorgesehen' , 1 , 0 , 120 , 'mapeg.datum_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24105 , 24100 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24106 , 24100 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , 200 , 'mapeg.betreff_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24108 , 24100 , null , '''#details''' , 'Details' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24109 , 24100 , 'mapeg' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14772 , 14770 , 'mapeg' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14773 , 14770 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14774 , 14770 , 'mapeg' , 'datum_wr' , 'Datum von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14775 , 14770 , 'mapeg' , 'datumstatt_wr' , 'Datum Stattgefunden' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14776 , 14770 , 'ma' ,'persnr_wr' , 'PE Gespr�chsteilnehmer' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14778 , 14770 , 'mapeg' , 'inhalt_wr' , 'Inhalt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14779 , 14770 , 'mapeg' ,'bemerkung_wr' , 'Bemerkung' , 1 , 0 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800101 , 800100 , 'mapeg' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800102 , 800100 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800103 , 800100 , 'mapeg' , 'datum_wr' , 'Datum von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800104 , 800100 , 'mapeg' , 'datumstatt_wr' , 'Datum Stattgefunden' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800105 , 800100 , null , 'case when person.titel_wr = 0 then '''' else utitel.text_wr {wr +()} '' '' end {wr +()} person.name_wr {wr +()} '', '' {wr +()} person.vorname_wr {wr +()} '' ('' {wr +()} person.persnr_wr {wr +()} '')''' , 'Gespr�chspartner der PE' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800106 , 800100 , null , '{wr memotostring(mapeg.inhalt_wr)}' , 'Inhalt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800107 , 800100 , null , '{wr memotostring(mapeg.bemerkung_wr)}' , 'Bemerkung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14785 , 14781 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 110 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14786 , 14781 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14787 , 14781 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14788 , 14781 , '{wr datetostring(maziel' , 'von_wr)}' , 'Geplant von' , 1 , 0 , 120 , 'maziel.von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14789 , 14781 , '{wr datetostring(maziel' , 'bis_wr)}' , 'Geplant bis' , 1 , 0 , 120 , 'maziel.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14790 , 14781 , 'maziel' , 'grad_wr' , 'Erreichungsgrad' , 1 , 0 , 120 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14791 , 14781 , 'maziel' , 'vereinam_wr' , 'Vereinbart am' , 1 , 0 , 120 , 'maziel.vereinam_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14798 , 14781 , 'maziel' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14867 , 14864 , 'ma' , 'pk' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14868 , 14864 , 'maziel' , 'vereinam_wr' , 'Vereinbart am' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14869 , 14864 , 'maziel' , 'von_wr' , 'Von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14870 , 14864 , 'maziel' , 'bis_wr' , 'Bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14871 , 14864 , 'maziel' , 'erreichtam_wr' , 'Ereicht am' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14872 , 14864 , 'maziel' , 'grad_wr' , 'Grad' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14873 , 14864 , 'maziel' , 'maxpraemie_wr' , 'Max Pr�mie' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14874 , 14864 , 'maziel' , 'praemienvo_wr' , 'Pr�mieenvorschlag' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14875 , 14864 , 'maziel' , 'ziel_wr' , 'Ziel' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14876 , 14864 , 'maziel' , 'zielpraemi_wr' , 'Zielpr�mie' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14881 , 14864 , null , '{wr memotostring(maziel.inhalte_wr)}' , 'Inhalte' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14882 , 14864 , null , '{wr memotostring(maziel.bemerkung_wr)}' , 'Bemerkung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14883 , 14864 , null , '{wr memotostring(maziel.steimunter_wr)}' , 'Zu erreichende Stellung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14884 , 14864 , null , '{wr memotostring(maziel.taetigkeit_wr)}' , 'T�tigkeit' , 1 , 0 , null , null);

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(14888 , 10325 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 150 , 'case when buchtn.status_wr = 1 then ��Angemeldet�� when buchtn.status_wr = 2 then ��Eingeladen�� when buchtn.status_wr = 3 then ��Auomatikbuchung�� when buchtn.status_wr = 4 then ��Warteliste�� when buchtn.status_wr = 5 then ��Storno/R�cktritt�� else ��Teilgenommen�� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15201 , 15200 , 'p' , 'Name_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15202 , 15200 , 'p' , 'Vorname_wr' , 'Vorname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15203 , 15200 , 'p' , 'PK' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15204 , 15200 , 'p' , 'PK' , 'PKpi' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15205 , 15200 , 'p' , 'strasse_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15206 , 15200 , 'p' , 'plz_wr' , 'PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15207 , 15200 , 'p' , 'ort_wr' , 'Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15208 , 15200 , 'p' , 'telefonp_wr' , 'Telefon private' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15209 , 15200 , 'p' , 'tmobil_wr' , 'Telefon handy' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15210 , 15200 , 'p' , 'email_wr' , 'E-Mail' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15211 , 15200 , '{wr datetostring(p' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15212 , 15200 , 'p' , 'gebort_wr' , 'Geburtsort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15213 , 15200 , 'fb' , 'firma1_wr' , 'Bankname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15214 , 15200 , 'b' , 'blz_wr' , 'Bankleitzahl' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15215 , 15200 , 'p' , 'kontonr_wr' , 'Kontonummer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15216 , 15200 , 'f' , 'firma1_wr' , 'Betrieb' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15217 , 15200 , 'a' , 'bez_wr' , 'Abteilung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15218 , 15200 , 'stl' , 'bez1_wr' , 'Aktuelle Stelle' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15219 , 15200 , 'UKZPOS' , 'text_wr' , 'Position' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15220 , 15200 , '{wr datetostring(p' , 'eintritt_wr)}' , 'Eintritt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15221 , 15200 , '{wr datetostring(p' , 'vertragvon_wr)}' , 'Vertrag von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15222 , 15200 , '{wr datetostring(p' , 'vertragbis_wr)}' , 'Vertrag bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15223 , 15200 , 'utitel' , 'text_wr' , 'Titel' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15224 , 15200 , 'UZUSWO' , 'text_wr' , 'Zusatzwort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15225 , 15200 , 'UVORWO' , 'text_wr' , 'Vorsatzwort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15226 , 15200 , 'p' , 'email2_wr' , 'E-Mail Privat' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15227 , 15200 , 'p' , 'telefon1_wr' , 'Telefon Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15228 , 15200 , 'p' , 'telefon2_wr' , 'Telefon2 Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15229 , 15200 , 'f' , 'Strasse_WR' , 'Firma Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15230 , 15200 , 'f' , 'PLZ_WR' , 'Firma PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15231 , 15200 , 'f' , 'Ort_WR' , 'Firma Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15232 , 15200 , 'a' , 'Strasse_WR' , 'OE Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15233 , 15200 , 'a' , 'PLZ_WR' , 'OE PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15234 , 15200 , 'a' , 'Ort_WR' , 'OE Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15235 , 15200 , 'UKZSTAATSANG' , 'text_wr' , 'Staatsangeh�rigkeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15236 , 15200 , 'p' , 'ErstEintri_WR' , 'Ersteintritt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15237 , 15200 , ' WRSYS_MA_BETRIEBSZUGEH' , 'BetriebsZugeh_wr' , 'Betriebszugeh�rigkeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15238 , 15200 , ' p' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15239 , 15200 , ' ma' , 'TechEintr_WR' , 'technischer Eintritt' , 1 , 0 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15240 , 15200 , ' ma' , 'DienstZeit_WR' , 'Dienstzeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15747 , 15745 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15748 , 15745 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15749 , 15745 , 'semtyp' , 'thema2_wr' , 'Thema 2' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15750 , 15745 , 'semtyp' , 'dauer_wr' , 'Dauer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15751 , 15745 , 'semtyp' , 'uhrvonreg_wr {wr +()} '' - '' {wr +()} uhrbisreg_wr' , 'Beginn - Ende' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15752 , 15745 , null , '{wr memotostring(sembeschr_wr)}' , 'Beschreibung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15753 , 15745 , null , '{wr memotostring(voraussetz_wr)}' , 'Voraussetzungen' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15754 , 15745 , null , '{wr memotostring(semziel_wr)}' , 'SeminarZiele' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15755 , 15745 , null , '{wr memotostring(seminh_wr)}' , 'SeminarInhalt' , 1 , 0 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15757 , 15756 , 'ltrim(person' , 'persnr_wr)' , 'Personal.Nr.' , 1 , 0 , 100 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15758 , 15756 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15760 , 15756 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 100 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15761 , 15756 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , 'semtyp.semtypnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15762 , 15756 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , 'semtyp.thema_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15763 , 15756 , '{wr zahlvorm(semtyp' , 'preisint_wr)}' , 'Seminarkosten (intern)' , 1 , 0 , 200 , 'semtyp.preisint_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15764 , 15756 , '{wr zahlvorm(semtyp' , 'preisext_wr)}' , 'Seminarkosten (extern)' , 1 , 0 , 200 , 'semtyp.preisext_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15765 , 15756 , 'case when buchtn','terminvon_wr is null then {wr datetostring(buchtn.terwunsch_wr)} else {wr datetostring(buchtn.terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(buchtn.terminbis_wr)} end' , 'Termin / Terminwunsch' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15766 , 15756 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15771 , 15756 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'AZ-Ant.' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15772 , 15756 , 'buchtn' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15774 , 15756 , 'buchtn' , 'pk' , 'Genehmigen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15775 , 15756 , 'buchtn' , 'pk' , 'Ablehnen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15776 , 15756 , 'buchtn' , 'pk' , 'L�schen Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15777 , 15756, '{wr memotostring(buchtn' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15778 , 15756, 'case when buchtn' , 'genehmigt2_WR is not null and buchtn.Genehm2PK_WR > 0 then buchtn.GenBemerk2_WR else buchtn.GenBemerk1_WR end' , 'Gehnemigungsbemerkung' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19798 , 15756 , 'buchtn' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15764 , 15756 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , ':buchtnSQL');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15765 , 15756 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15766 , 15756 , '{wr left outer join(tn,tn.persnr_wr = person.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15767 , 15756 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15768 , 15756 , '{wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15769 , 15756 , '{wr left outer join(ukz ukzazant,ukzazant.pk = semtyp.azant_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15770 , 15756 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15771 , 15756 , '{wr left outer join(ma,ma.persnr_wr = person.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15772 , 15756 , '{wr left outer join(ma ma2,ma2.pk = ma.ueberma_wr)}' , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25757 , 15758 , 'person' , 'persnr_wr' , 'Personal.Nr.' , 1 , 0 , 100 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25758 , 15758 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25760 , 15758 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 100 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25761 , 15758 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , 'semtyp.semtypnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25762 , 15758 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , 'semtyp.thema_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25763 , 15758 , '{wr zahlvorm(semtyp' , 'preisint_wr)}' , 'Seminarkosten (intern)' , 1 , 0 , 200 , 'semtyp.preisint_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25764 , 15758 , '{wr zahlvorm(semtyp' , 'preisext_wr)}' , 'Seminarkosten (extern)' , 1 , 0 , 200 , 'semtyp.preisext_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25765 , 15758 , 'buchtn' , 'terwunsch_wr' , 'Termin / Terminwunsch' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25766 , 15758 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 100 , 'case when buchtn.status_wr = 1 then ��Angemeldet�� when buchtn.status_wr = 2 then ��Eingeladen�� when buchtn.status_wr = 3 then ��Auomatikbuchung�� when buchtn.status_wr = 4 then ��Warteliste�� when buchtn.status_wr = 5 then ��Storno/R�cktritt�� else ��Teilgenommen�� end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25767 , 15758 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'AZ-Ant.' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25768 , 15758 , 'buchtn' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25769 , 15758 , 'buchtn' , 'pk' , 'Genehmigen Icon' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25770 , 15758 , 'buchtn' , 'pk' , 'Ablehnen Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25771 , 15758, '{wr memotostring(buchtn' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25776 , 15758 , 'buchtn' , 'pk' , 'Ablehnen' , 0 , 1 , null , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25764 , 15758 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , '(semter.PK = 0 or (semter.pk > 0 and semter.stornostat_wr =''N'')) and buchtn.dbaccount = 999999996');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25765 , 15758 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , 'buchtn.genehmigt1_wr is null and buchtn.genehm1pk_wr = :benutzer ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25766 , 15758 , '{wr left outer join(tn,tn.persnr_wr = person.pk)}' , '(buchtn.frei1_wr = '':benutzer'')');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25767 , 15758 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , ':einschraenkung');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25768 , 15758 , '{wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25769 , 15758 , '{wr left outer join(ukz ukzazant,ukzazant.pk = semtyp.azant_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25770 , 15758 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16247 , 16246 , 'stl' , 'stlkurz_wr' , 'Stellen-K�rzel' , 1 , 0 , 140 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16248 , 16246 , 'stl' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16249 , 16246 , 'mastlw' , 'von_wr' , 'Von' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16250 , 16246 , 'mastlw' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16251 , 16246 , null , 'case when mastlw.VorgWunsch_WR = 1 then ''Ja'' else ''Nein'' end' , 'Vorschlag Vorg.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16252 , 16246 , null , 'case when mastlw.mawunsch_wr = 1 then ''Ja'' else ''Nein'' end' , 'Wunsch MA' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16253 , 16246 , null , 'case when mastlw.rueckzug_wr = 1 then ''Ja'' else ''Nein'' end' , 'G�ltig' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16262 , 16261 , 'fkt' , 'fktkurz_wr' , 'Funktions-K�rzel' , 1 , 0 , 140 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16263 , 16261 , 'fkt' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16264 , 16261 , 'mafktw' , 'von_wr' , 'Von' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16265 , 16261 , 'mafktw' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16266 , 16261 , null , 'case when MAFKTW.vorgwunsch_wr = 1 then ''Ja'' else ''Nein''end' , 'Vorschlag Vorg.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16267 , 16261 , null , 'case when mawunsch_wr = 1 then ''Ja'' else ''Nein'' end' , 'Wunsch MA' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16268 , 16261 , null , 'case when rueckzug_wr = 1 then ''Ja'' else ''Nein'' end' , 'G�ltig' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16301 , 16297 , 'quali' , 'qualikurz_wr' , 'Qualifikations-K�rzel' , 1 , 0 , 140 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16302 , 16297 , 'quali' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16303 , 16297 , 'MAQW' , 'von_wr' , 'Von' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16304 , 16297 , 'maqw' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16305 , 16297 , null , 'case when vorgwunsch_wr = 1 then ''Ja'' else ''Nein''end' , 'Vorschlag Vorg.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16306 , 16297 , null , 'case when mawunsch_wr = 1 then ''Ja'' else ''Nein'' end' , 'Wunsch MA' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16307 , 16297 , null , 'case when rueckzug_wr = 1 then ''Ja'' else ''Nein'' end' , 'G�ltig' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17287 , 16432 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17288 , 16432 , 'semter' , 'datumvon_wr' , 'Von' , 1 , 0 , 100 , 'semter.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17289 , 16432 , 'semter' , 'datumbis_wr' , 'Bis' , 1 , 0 , 100 , 'semter.datumbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17292 , 16432 , 'buchtn' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17294 , 17293 , 'distinct beuart' , 'bez_wr' , 'Beurteilungsart' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17295 , 17293 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17296 , 17293 , 'semter' , 'semternr_wr' , 'Seminar-Nr.' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17297 , 17293 , 'semter' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17298 , 17293 , 'semter' , 'datumvon_wr' , 'Von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17299 , 17293 , 'semter' , 'datumbis_wr' , 'Bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17512 , 17511 , 'ost' , 'bez1_wr' , 'Stelle' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17513 , 17511 , 'ost' , 'offenab_wr' , 'Seit' , 1 , 0 , 100 , 'ost.offenab_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17514 , 17511 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17522 , 17521 , 'ost' , 'ostnr_wr' , 'Stellen-Nr.' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17523 , 17521 , 'ost' , 'bez1_wr' , 'Bezeichnung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17524 , 17521 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17525 , 17521 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17526 , 17521 , 'ggr' , 'bez1_wr' , 'GGrBezeichnung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17527 , 17521 , '{wr memotostring(ost' , 'stlbesch_wr)}' , 'Besch�ftigt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17528 , 17521 , '{wr memotostring(ost' , 'stlanf_wr)}' , 'Anfang' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17529 , 17521 , '{wr memotostring(ost' , 'stlkomp_wr)}' , 'Komp' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17780 , 17784 , 'ost' , 'bez1_wr' , 'Offene Stelle' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730511 , 730466 , 'cast(({wr todate(maaz' , 'bis1_wr)} - {wr todate(von1_wr)} +{wr todate(bis2_wr)} - {wr todate(von2_wr)}+{wr todate(bis3_wr)} - {wr todate(von3_wr)}+{wr todate(bis4_wr)} - {wr todate(von4_wr)}+{wr todate(bis5_wr)} - {wr todate(von5_wr)}+{wr todate(bis6_wr)} - {wr todate(von6_wr)}+{wr todate(bis7_wr)} - {wr todate(von7_wr)}+{wr todate(bis8_wr)} - {wr todate(von8_wr)}+{wr todate(bis9_wr)} - {wr todate(von9_wr)}+{wr todate(bis10_wr)} - {wr todate(von10_wr)}+{wr todate(bis11_wr)} - {wr todate(von11_wr)}+{wr todate(bis12_wr)} - {wr todate(von12_wr)})*24 +case when waz_wr is null then 0.0 else waz_wr end as numeric(4,2))' , 'Gesamte Arbeitszeit' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730621 , 730620 , 'stlma' , 'von_wr' , 'Von' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730622 , 730620 , 'stlma' , 'bis_wr' , 'Bis' , 1 , 0 , 150 , 'stlma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730623 , 730620 , 'stlma' , 'bez1_wr' , 'Stellen-Bezeichnung' , 1 , 0 , 250 , 'stlma.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730624 , 730620 , 'abt' , 'bez_wr' , 'Abteilung' , 1 , 0 , 200 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730625 , 730620 , 'case when ABT' , 'ort_wr is not null then ABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when ABT.ort_wr is not null then ABT.ort_wr else firma.ort_wr end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78999 , 730467 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 200 , 'firma.firma1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79000 , 730467 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 250 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79001 , 730467 , 'stlma' , 'bez1_wr' , 'Stellen-Bezeichnung' , 1 , 0 , 250 , 'stlma.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79002 , 730467 , 'stlma' , 'von_wr' , 'Von' , 1 , 0 , 150 , 'stlma.von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79003 , 730467 , 'stlma' , 'bis_wr' , 'Bis' , 1 , 0 , 150 , 'stlma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79004 , 730467 , '{wr round(stlma' , 'bvmj_wr,2)}' , 'MAK' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79005 , 730467 , 'ist' , 'bez1_wr' , 'Entgeld' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79006 , 730467 , 'case when ABT' , 'ort_wr is not null then ABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when ABT.ort_wr is not null then ABT.ort_wr else firma.ort_wr end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79007 , 730467 , 'abt' , 'AbtKurz_WR' , 'OE-K�rzel' , 1 , 0 , 150 , 'abt.abtkurz_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79008 , 730467 , 'STL' , 'StlKurz_WR' , 'Stellenk�rzel' , 1 , 0 , 150 , 'STL.StlKurz_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79009 , 730467 , 'stlma' , 'bez2_wr' , 'Stellen-Bezeichnung 2' , 1 , 0 , 250 ,'stlma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79010 , 730467 , 'stl' , 'frei1_wr' , 'Stellen Freifeld 1' , 1 , 0 , 200 ,'stl.frei1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79011 , 730467 , 'stl' , 'frei2_wr' , 'Stellen Freifeld 2' , 1 , 0 , 200 ,'stl.frei2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79012 , 730467 , 'stl' , 'frei3_wr' , 'Stellen Freifeld 3' , 1 , 0 , 200 ,'stl.frei3_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79013 , 730467 , 'stl' , 'frei4_wr' , 'Stellen Freifeld 4' , 1 , 0 , 200 ,'stl.frei4_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79014 , 730467 , 'stl' , 'frei5_wr' , 'Stellen Freifeld 5' , 1 , 0 , 200 ,'stl.frei5_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79015 , 730467 , 'stl' , 'frei6_wr' , 'Stellen Freifeld 6' , 1 , 0 , 200 ,'stl.frei6_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79016 , 730467 , 'stl' , 'frei7_wr' , 'Stellen Freifeld 7' , 1 , 0 , 200 ,'stl.frei7_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79017 , 730467 , 'stl' , 'frei8_wr' , 'Stellen Freifeld 8' , 1 , 0 , 200 ,'stl.frei8_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79018 , 730467 , 'stl' , 'frei9_wr' , 'Stellen Freifeld 9' , 1 , 0 , 200 ,'stl.frei9_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(79019 , 730467 , 'stl' , 'frei10_wr' , 'Stellen Freifeld 10' , 1 , 0 , 200 ,'stl.frei10_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740015 , 730467 , 'stlma' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730820 , 730468 , 'stlpla' , 'bez1_wr' , 'Stellenplan' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730821 , 730468 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730822 , 730468 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730823 , 730468 , 'stlpla' , 'gueltigvon_wr' , 'von' , 1 , 0 , 100 , 'stlpla.gueltigvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730824 , 730468 , 'stlpla' , 'gueltigbis_wr' , 'bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730825 , 730468 , 'MAPLST' , 'PAMA_WR' , 'PA/MA' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20363 , 730469 , 'maziel' , 'von_wr' , 'Geplant von' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20364 , 730469 , 'maziel' , 'bis_wr' , 'Geplant bis' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20365 , 730469 , 'maziel' , 'grad_wr' , 'Erreichnungsgrad' , 1 , 0 , 180 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20366 , 730469 , 'maziel' , 'erreichtam_wr' , 'Erreicht am' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20367 , 730469 , 'maziel' , 'vereinam_wr' , 'vereinbart am' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20368 , 730469 , null , 'PERSVM.NAME_wr {wr +()}'', ''{wr +()}PERSVM.VORNAME_wr' , 'Vereinbart mit' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20355 , 730470 , 'mapeg' , 'datum_wr' , 'Datum vorgesehen' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20356 , 730470 , 'mapeg' , 'betreff_wr' , 'Betreff' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20357 , 730470 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden' , 1 , 0 , 180 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20358 , 730470 , null , 'person.name_wr {wr +()}'', ''{wr +()}person.vorname_wr' , 'Name Gespr�chspartner' , 1 , 0 , 250 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20359 , 730470 , null , '''Details''' , 'Details' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24039 , 730471 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24040 , 730471 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24041 , 730471 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24042 , 730471 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24043 , 730471 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24044 , 730471 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20349 , 730472 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 250 , 'mnhma.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20350 , 730472 , 'mnhma' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 150 , 'mnhma.von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20351 , 730472 , 'mnhma' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 150 , 'mnhma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20352 , 730472 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 150 , 'mnhma.durchgefue_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20353 , 730472 , 'MNH' , 'MnhKurz_WR' , 'Ma�nahmen-Arten K�rzel' , 1 , 0 , 150 , 'mnh.mnhkurz_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20354 , 730472 , 'mnhma' , 'bez2_wr' , 'Ma�nahmen-Bezeichnung 2' , 1 , 0 , 250 , 'mnhma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740002 , 730472 , 'mnhma' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20326 , 730473 , 'distinct semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 180 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20327 , 730473 , 'case when semter' , 'pk > 0 then semter.thema_wr else semtyp.thema_wr end' , 'Typ-Ter-Thema' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20328 , 730473 , 'buchtn' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 150 , 'buchtn.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(200100 , 730474 , 'quali' , 'bez1_wr' , 'Qualifikation' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730802 , 730461 , '{wr alter(person' , 'gebdatum_wr)}' , 'Alter' , 1 , 0 , 100 ,'{wr alter(person.gebdatum_wr)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730803 , 730461 , '{wr daysuntil(person' , 'gebdatum_wr)}' , 'Tage bis Geburtstag' , 1 , 0 , 150 , '{wr daysuntil(person.gebdatum_wr)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20329 , 730473 , 'buchtn' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20330 , 730473 , 'semter' , 'tntage_wr' , 'Tage' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24888 , 730473 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(200101 , 730474 , 'quaaus' , 'bez1_wr' , 'Auspr�gung' , 1 , 0 , 200 , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(40000 , 730475 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 250 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(40002 , 730475 , null , '''''' , 'aktuelle Abteilung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(40003 , 730475 , null , '''''' , 'von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(40004 , 730475 , null , '''''' , 'bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(51000 , 730477 , 'person' , 'name_wr {wr +()} '', '' {wr +()} {fn ifnull(vorname_wr,'''')}' , 'Name' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730010 , 730480 , 'doku' , 'datumvon_wr' , 'Wann gespeichert' , 1 , 0 , 200 , 'doku.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730011 , 730480 , 'doku' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 200 , 'doku.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730012 , 730480 , 'ukz' , 'text_wr' , 'Dokuart' , 1 , 0 , 200 , 'ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730013 , 730480 , 'person' , 'vorname_wr {wr +()} '' '' {wr +()} person.name_wr' , 'Hochgeladen von' , 1 , 0 , 200 , 'person.vorname_wr {wr +()} '' '' {wr +()} person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730014 , 730480 , 'case when doku' , 'OnlineHoch_WR = ''J'' then ''Ja'' else ''Nein'' end' , 'Online hochgeladen' , 1 , 0 , 100 , 'case when doku.OnlineHoch_WR = ''J'' then ''Ja'' else ''Nein'' end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730015 , 730480 , 'doku' , 'OnlineFrei_WR' , 'Freigabe am' , 1 , 0 , 100 , 'doku.OnlineFrei_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730016 , 730480 , 'uuser' , 'VORNAME_WR {wr +()} '' '' {wr +()} uuser.name_wr' , 'Freigabe durch' , 1 , 0 , 200 , 'uuser.VORNAME_WR {wr +()} '' '' {wr +()} uuser.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730017 , 730480 , 'wrblob' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20010 , 730481 , 'doku' , 'datumvon_wr' , 'Wann gespeichert' , 1 , 0 , 200 , 'doku.datumvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20011 , 730481 , 'doku' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 200 , 'doku.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20012 , 730481 , 'ukz' , 'text_wr' , 'Dokuart' , 1 , 0 , 200 , 'ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20013 , 730481 , 'person' , 'vorname_wr {wr +()} '' '' {wr +()} person.name_wr' , 'Hochgeladen von' , 1 , 0 , 200 , 'person.vorname_wr {wr +()} '' '' {wr +()} person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20014 , 730481 , 'case when doku' , 'OnlineHoch_WR = ''J'' then ''Ja'' else ''Nein'' end' , 'Online hochgeladen' , 1 , 0 , 100 , 'case when doku.OnlineHoch_WR = ''J'' then ''Ja'' else ''Nein'' end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20015 , 730481 , 'doku' , 'OnlineFrei_WR' , 'Freigabe am' , 1 , 0 , 100 , 'doku.OnlineFrei_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20016 , 730481 , 'uuser' , 'VORNAME_WR {wr +()} '' '' {wr +()} uuser.name_wr' , 'Freigabe durch' , 1 , 0 , 200 , 'uuser.VORNAME_WR {wr +()} '' '' {wr +()} uuser.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20017 , 730481 , 'wrblob' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15060 , 730482 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15061 , 730482 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15062 , 730482 , 'p' , 'vorname_wr {wr +()} '' '' {wr +()} p.name_wr' , 'Beurteiler' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15063 , 730482 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15064 , 730482 , 'mabeu' , 'Erledigt_WR' , 'beurteilt am' , 1 , 0 , 150 , 'mabeu.anschsedat_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15065, 730482 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15066, 730482 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15067, 730482 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(110 , 22 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(111 , 22 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(112 , 22 , 'mabeu' , 'Erledigt_WR' , 'Freigabe am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(113, 22 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14400 , 730483 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14401 , 730483 , null , ' {wr datetostring(mabeu.VeranAm_WR)} {wr +()} '' - '' {wr +()} {wr datetostring(mabeu.Veranlasst_WR)}' , 'Termin von - bis' , 1 , 0 , 130 , 'mabeu.VeranAm_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14402 , 730483 , 'p' , 'vorname_wr {wr +()} '' '' {wr +()} p.name_wr' , 'Beurteiler' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14403 , 730483 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14404, 730483 , '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0))}' , 'Gesamtpunkte' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTE_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTE_WR > 0)' );
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14405, 730483, '{wr zahlvormohneEuro((SELECT SUM(MABEUQ' , 'PUNKTEMa_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0))}' , 'Gesamtpunkte Ma' , 1 , 0 , 200 ,'(SELECT SUM(MABEUQ.PUNKTEma_WR)FROM MABEUQ WHERE MaBeuQ.LFDBEUNR_WR = MaBeu.PK AND MaBeuQ.PUNKTEma_WR > 0)' );


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14406 , 730483 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80000 , 800000 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp_nr.' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80001 , 800000 , 'semter' , 'thema_wr' , 'Typ-Ter-Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80002 , 800000 , 'buchtn' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14100 , 730484 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14101 , 730484 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14102 , 730484 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14103 , 730484 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14104 , 730484 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14105 , 730484 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14110 , 730485 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14111 , 730485 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13988 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then hurlist_wr + hurlvjist_wr else urlaubist_wr + urlaubvjis_wr end' , 'Urlaubskonto abgebucht' , 1 , 0 , 100 , null);
update webtext set webfedpk_wr = 13990 where webfedpk_wr = 13989;
delete from webtext where webfedpk_wr = 13989;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13989 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then HURLVJSOLL_WR-HURLVJIST_WR-HURLVJVE_WR else UrlaubVJSo_WR-UrlaubVJIs_WR-UrlaubVJVe_WR end' , 'Resturlaub Vorjahr aktuell' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13990 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlver_wr+hurlvjve_wr) else (urlaubver_wr+urlaubvjve_wr) end' , 'Verfallen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14026 , 14024 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr {wr +()} '' ('' {wr +()} ltrim(person.persnr_wr) {wr +()} '')''' , 'Mitarbeiter' , 1 , 0 , 350 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14028 , 14024 , 'ukonto' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14029 , 14024 , 'ukonto' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14030 , 14024 , 'ukonto' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14031 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr else ukonto.urlaubsoll_wr end' , 'Urlaub akt. Jahr Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14032 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlvjsoll_wr else ukonto.urlaubvjso_wr end' , 'Rest Vorjahr' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14033 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr + hurlvjsoll_wr else ukonto.urlaubsoll_wr + urlaubvjso_wr end' , 'Gesamt Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14034 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then hurlist_wr + hurlvjist_wr else urlaubist_wr + urlaubvjis_wr end' , 'Urlaubskonto abgebucht' , 1 , 0 , 100 , null);
update webtext set webfedpk_wr = 14036 where webfedpk_wr = 14035;
delete from webtext where webfedpk_wr = 14035;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14035 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then HURLVJSOLL_WR-HURLVJIST_WR-HURLVJVE_WR else UrlaubVJSo_WR-UrlaubVJIs_WR-UrlaubVJVe_WR end' , 'Resturlaub Vorjahr aktuell' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14036 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlver_wr+hurlvjve_wr) else (urlaubver_wr+urlaubvjve_wr) end' , 'Verfallen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14047 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) else (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) end' , 'Rest' , 1 , 0 , 60 , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14049 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Geplant' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14050 , 14024 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Genommen' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14051 , 14024 , 'abt' , 'bez_wr', 'Abteilung' , 1 , 0 , 350 , 'abt.bez_wr');


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14050 , 14048 , 'ukonto' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 90 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14051 , 14048 , 'ukonto' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 90 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14052 , 14048 , 'ukonto' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 160 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14053 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr else ukonto.urlaubsoll_wr end' , 'Urlaub akt. Jahr Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14054 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlvjsoll_wr else ukonto.urlaubvjso_wr end' , 'Rest Vorjahr' , 1 , 0 , 85 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14055 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr + hurlvjsoll_wr else ukonto.urlaubsoll_wr + urlaubvjso_wr end' , 'Gesamt Soll' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14056 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then hurlist_wr + hurlvjist_wr else urlaubist_wr + urlaubvjis_wr end' , 'Urlaubskonto abgebucht' , 1 , 0 , 75 , null);
update webtext set webfedpk_wr = 14058 where webfedpk_wr = 14057;
delete from webtext where webfedpk_wr = 14057;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14057 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then HURLVJSOLL_WR-HURLVJIST_WR-HURLVJVE_WR else UrlaubVJSo_WR-UrlaubVJIs_WR-UrlaubVJVe_WR end' , 'Resturlaub Vorjahr aktuell' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14058 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlver_wr+hurlvjve_wr) else (urlaubver_wr+urlaubvjve_wr) end' , 'Verfallen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14067 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) else (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) end' , 'Rest' , 1 , 0 , 35 , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14068 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Geplant' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14069 , 14048 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Genommen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78000 , 730463 , 'ukonto' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 90 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78001 , 730463 , 'ukonto' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 90 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78002 , 730463 , 'ukonto' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 160 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78003 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr else ukonto.urlaubsoll_wr end' , 'Urlaub akt. Jahr Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78004 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlvjsoll_wr else ukonto.urlaubvjso_wr end' , 'Rest Vorjahr' , 1 , 0 , 85 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78005 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then ukonto.hurlsoll_wr + hurlvjsoll_wr else ukonto.urlaubsoll_wr + urlaubvjso_wr end' , 'Gesamt Soll' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78006 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then hurlist_wr + hurlvjist_wr else urlaubist_wr + urlaubvjis_wr end' , 'Urlaubskonto abgebucht' , 1 , 0 , 75 , null);
update webtext set webfedpk_wr = 78008 where webfedpk_wr = 78007;
delete from webtext where webfedpk_wr = 78007;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78007 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then HURLVJSOLL_WR-HURLVJIST_WR-HURLVJVE_WR else UrlaubVJSo_WR-UrlaubVJIs_WR-UrlaubVJVe_WR end' , 'Resturlaub Vorjahr aktuell' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78008 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlver_wr+hurlvjve_wr) else (urlaubver_wr+urlaubvjve_wr) end' , 'Verfallen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78017 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) else (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) end' , 'Rest' , 1 , 0 , 35 , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78018 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Geplant' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(78019 , 730463 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Genommen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19000 , 730494 , 'person' , 'name_wr {wr +()} '','' {wr +()} person.vorname_wr {wr +()} '' ('' {wr +()} ltrim(person.persnr_wr) {wr +()} '')''' , 'Mitarbeiter' , 1 , 0 , 350 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19001 , 730494 , 'ukonto' , 'von_wr' , 'Zeitraum von' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19002 , 730494 , 'ukonto' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19003 , 730494 , 'ukonto' , 'bez_wr' , 'Bezeichnung' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19004 , 730494 , 'ukonto' , 'urlaubsoll_wr' , 'Urlaub akt. Jahr Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19005 , 730494 , 'ukonto' , 'urlaubvjso_wr' , 'Rest Vorjahr' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19006 , 730494 , 'ukonto' , 'urlaubsoll_wr + urlaubvjso_wr' , 'Gesamt Soll' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19007 , 730494 , null , 'urlaubist_wr + urlaubvjis_wr' , 'Urlaubskonto abgebucht' , 1 , 0 , 100 , null);
update webtext set webfedpk_wr = 19009 where webfedpk_wr = 19008;
delete from webtext where webfedpk_wr = 19008;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19008 , 730494 , 'case when ukonto' , 'urleinheit_wr = ''S'' then HURLVJSOLL_WR-HURLVJIST_WR-HURLVJVE_WR else UrlaubVJSo_WR-UrlaubVJIs_WR-UrlaubVJVe_WR end' , 'Resturlaub Vorjahr aktuell' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19009 , 730494 , null , '(urlaubver_wr+urlaubvjve_wr)' , 'Verfallen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19018 , 730494 , null , '(urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr)' , 'Rest' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19019 , 730494 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Geplant' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19020 , 730494 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Genommen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(13999 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) else (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) end' , 'Rest' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14000 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL left outer join ABWART on ABWART.pk = perkal.abwartkurz_wr WHERE abwart.resturlaub_wr = 1 and PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR > {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Geplant' , 1 , 0 , 60 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14001 , 13980 , 'case when ukonto' , 'urleinheit_wr = ''S'' then CAST((SELECT SUM(PERKAL.USTD_WR) as USTDPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999996) ) AS  DECIMAL(10,2) ) else cast((SELECT case when SUM(PERKAL.UTAGE_WR) is null then 0 else SUM(PERKAL.UTAGE_WR) end as UTAGEPLAN_WR FROM PERKAL WHERE PERKAL.UKONTOVON_WR = UKONTO.PK AND PERKAL.DATUMVON_WR <= {fn now()} AND PERKAL.DBACCOUNT not in (999999990,999999998,999999997) ) AS  DECIMAL(10,2) ) end' , 'Genommen' , 1 , 0 , 60 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19576 , 19573 , '(select case when count(semter' , 'pk) >0  then ''Termin'' else '''' end from semter where semter.semtypnr_wr = semtyp.pk and semter.datumvon_wr > {fn now()} and semter.stornostat_wr =''N'' and semter.ONLINEINTE_WR = ''J'' and ((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr is null) or  (schaltungv_wr is null and schaltungb_wr >= {fn now()}) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()})))' , 'Termin' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19577 , 19573 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19631 , 19622 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19736 , 19725 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19479 , 19478 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19480 , 19478 , 'person' , 'strasse_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19481 , 19478 , 'person' , 'plz_wr {wr +()} '' '' {wr +()} person.ort_wr' , 'Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19482 , 19478 , 'person' , 'telefonp_wr' , 'telefon' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19483 , 19478 , 'person' , 'tmobil_wr' , 'mobil' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19484 , 19478 , null , 'case when person.email2_wr is not null then person.email2_wr else person.email_wr end' , 'email' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19485 , 19478 , '{wr datetostring(person' , 'gebdatum_wr)}' , 'gebtag' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19486 , 19478 , 'person' , 'gebort_wr' , 'gebort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19487 , 19478 , 'stl' , 'bez1_wr' , 'aktstelle' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19488 , 19478 , 'abt' , 'bez_wr' , 'oebez' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19489 , 19478 , 'ma' , 'wazeit_wr' , 'arbeitszeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19490 , 19478 , 'ggr' , 'bez1_wr' , 'Gehalt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19491 , 19478 , 'ost' , 'bez1_wr' , 'Bewerbung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19492 , 19478 , '{wr datetostring(bng' , 'eingdatum_wr)}' , 'Eingangsdatum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19493 , 19478 , 'ukza' , 'text_wr' , 'Status' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19494 , 19478 , 'firma' , 'firma1_wr' , 'Medium' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19495 , 19478 , 'ost' , 'stlbesch_wr' , 'Anzeige' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19496 , 19478 , '{wr datetostring(ost' , 'offenab_wr)}' , 'Besetzung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19497 , 19478 , '{wr datetostring(bng' , 'eintrfrueh_wr)}' , 'Eintritt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19498 , 19478 , 'bng' , 'gehvortxt_WR' , 'Gehaltserwartung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19499 , 19478 , 'ber' , 'StAngTxt_WR' , 'Staatsangeh�rigkeit' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19501 , 19478 , 'person' , 'arbeitserl_wr' , 'Arbeitserlaubnis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19502 , 19478 , 'bng' , 'pk' , 'pk' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19782 , 19778 , '{wr memotostring(semtyp' , 'SemInh_WR)}' , 'Inhalt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19783 , 19778 , 'person' , 'vorname_wr {wr +()} '' '' {wr +()} person.name_wr' , 'Dozent' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19785 , 19778 , 'semter' , 'datumvon_wr' , 'Datum von' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19786 , 19778 , 'semter' , 'datumbis_wr' , 'Datum bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14112 , 730485 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14113 , 730485 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14114 , 730485 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14115 , 730485 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24050 , 730486 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24051 , 730486 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24052 , 730486 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24053 , 730486 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24054 , 730486 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24055 , 730486 , null , '''Details''' , 'Details' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(24056 , 730486 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800201 , 910007 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800202 , 910007 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800203 , 910007 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800204 , 910007 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800205 , 910007 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800206 , 910007 , null , '''Details''' , 'Details' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(800207 , 910007 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730520 , 730487 , 'person' , 'name_wr {wr +()} '', ''  {wr +()}{fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730521 , 730487 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 250 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730522 , 730487 , 'ltrim(person' , 'email_wr)' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730523 , 730487 , 'person' , 'pk' , 'pk2' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730804 , 730488 , 'person' , 'name_wr {wr +()} '', ''  {wr +()}{fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730805 , 730488 , 'person' , 'email_wr' , 'E-Mail' , 1 , 0 , 250 , 'person.email_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730806 , 730488 , 'person' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730807 , 730488 , 'person' , 'pk' , 'pk2' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730530 , 730489 , 'person' , 'name_wr {wr +()} '', '' {wr +()} {fn ifnull(person.vorname_wr,'''')}' , 'Name' , 1 , 0 , 250 , 'person.name_wr {wr +()} person.vorname_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730531 , 730489 , '{wr datetostring(person' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , 150 , '{wr dayofyear(person.gebdatum_wr)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730532 , 730489 , '{wr alter(person' , 'gebdatum_wr)}' , 'Alter' , 1 , 0 , 100 , '{wr alter(person.gebdatum_wr)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730533 , 730489 , '{wr daysuntil(person' , 'gebdatum_wr)}' , 'Tage bis Geburtstag' , 1 , 0 , 150 , '{wr daysuntil(person.gebdatum_wr)}');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15000 , 14887 , 'person' , 'persnr_wr' , 'Personal_Nr.' , 1 , 0 , 110 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25000 , 911000 , 'person' , 'persnr_wr' , 'Personal_Nr.' , 1 , 0 , 110 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15001 , 14887 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25001 , 911000 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80003 , 800000 , 'buchtn' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15003 , 14887 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25003 , 911000 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15004 , 14887 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 120 , 'semtyp.semtypnr_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25004 , 911000 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 120 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15005 , 14887 , 'case when semter' , 'pk > 0 then semter.thema_wr else semtyp.thema_wr end' , 'Typ-Ter-Thema' , 1 , 0 , 250 , 'semtyp.thema_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25005 , 911000 , 'case when semter' , 'pk > 0 then semter.thema_wr else semtyp.thema_wr end' , 'Typ-Ter-Thema' , 1 , 0 , 250 , 'semtyp.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15006 , 14887 , null , ' {wr datetostring(terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(terminbis_wr)}' , 'Termin von - bis' , 1 , 0 , 130 , 'buchtn.terminvon_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25006 , 911000 , null , ' {wr datetostring(terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(terminbis_wr)}' , 'Termin von - bis' , 1 , 0 , 130 , 'buchtn.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80004 , 800000 , 'semter' , 'dauer_wr' , 'Tage' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(80005 , 800000 , 'case when buchtn' , 'status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Automatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' when buchtn.status_wr = 6 then ''Teilgenommen'' end' , 'Status' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(15009 , 14887 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 100 , 'case when buchtn.status_wr = 1 then ��Angemeldet�� when buchtn.status_wr = 2 then ��Eingeladen�� when buchtn.status_wr = 3 then ��Auomatikbuchung�� when buchtn.status_wr = 4 then ��Warteliste�� when buchtn.status_wr = 5 then ��Storno/R�cktritt�� else ��Teilgenommen�� end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(25009 , 911000 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 100 , 'case when buchtn.status_wr = 1 then ��Angemeldet�� when buchtn.status_wr = 2 then ��Eingeladen�� when buchtn.status_wr = 3 then ��Auomatikbuchung�� when buchtn.status_wr = 4 then ��Warteliste�� when buchtn.status_wr = 5 then ��Storno/R�cktritt�� else ��Teilgenommen�� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14894 , 730490 , 'person' , 'persnr_wr' , 'Personal_Nr.' , 1 , 0 , 110 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14895 , 730490 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14899 , 730490 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14900 , 730490 , 'semtyp' , 'semtypnr_wr' , 'Seminartyp-Nr.' , 1 , 0 , 120 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14903 , 730490 , 'semtyp' , 'thema_wr' , 'Typ-Ter-Thema' , 1 , 0 , 250 , 'semtyp.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14904 , 730490 , null , ' {wr datetostring(buchtn.terminvon_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(buchtn.terminbis_wr)}' , 'Termin von - bis' , 1 , 0 , 140 , 'buchtn.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14907 , 730490 , null , 'case when buchtn.status_wr = 1 then ''Angemeldet'' when buchtn.status_wr = 2 then ''Eingeladen'' when buchtn.status_wr = 3 then ''Auomatikbuchung'' when buchtn.status_wr = 4 then ''Warteliste'' when buchtn.status_wr = 5 then ''Storno/R�cktritt'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 100 , 'case when buchtn.status_wr = 1 then ��Angemeldet�� when buchtn.status_wr = 2 then ��Eingeladen�� when buchtn.status_wr = 3 then ��Auomatikbuchung�� when buchtn.status_wr = 4 then ��Warteliste�� when buchtn.status_wr = 5 then ��Storno/R�cktritt�� else ��Teilgenommen�� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16000 , 730491 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16001 , 730491 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16002 , 730491 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16003 , 730491 , 'mnhma' , 'Von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.Von_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16004 , 730491 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , '5');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16005 , 730491 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16006 , 730491 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(16007 , 730491 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17000 , 730492 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 180 , '1');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17001 , 730492 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , 'firma.firma1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17002 , 730492 , 'STLABT' , 'BEZ_WR' , 'Stellenbezeichnung' , 1 , 0 , 110 , 'STLABT.BEZ_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17003 , 730492 , 'stlma' , 'bez1_wr' , 'Stellenbezeichnung' , 1 , 0 , 170 , 'stlma.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17004 , 730492 , 'stlma' , 'von_wr' , 'Von' , 1 , 0 , 70 , 'stlma.von_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17005 , 730492 , 'stlma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'stlma.bis_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17006 , 730492 , '{wr round(stlma' , 'bvmj_wr,2)}' , 'BV in MJ' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17007 , 730492 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17008 , 730492 , 'g1' , 'bez1_wr' , 'Stellenbewertung' , 1 , 0 , 150 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17012 , 730492 , 'stlma' , 'pk' , 'pk' , 0 , 1 , 0 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17009 , 730492 , 'case when STLABT' , 'ort_wr is not null then STLABT.ort_wr else firma.ort_wr end' , 'Arbeitsort' , 1 , 0 , 250 , 'case when STLABT.ort_wr is not null then STLABT.ort_wr else firma.ort_wr end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17010 , 730492 , 'STLABT' , 'AbtKurz_WR' , 'OE-K�rzel' , 1 , 0 , 150 , 'STLABT.abtkurz_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17011 , 730492 , 'STL' , 'StlKurz_WR' , 'Stellenk�rzel' , 1 , 0 , 150 , 'STLma.StlKurz_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17012 , 730492 , 'stlma' , 'bez2_wr' , 'Stellen-Bezeichnung 2' , 1 , 0 , 250 ,'stlma.bez2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17013 , 730492 , 'stl' , 'frei1_wr' , 'Stellen Freifeld 1' , 1 , 0 , 200 ,'stl.frei1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17014 , 730492 , 'stl' , 'frei2_wr' , 'Stellen Freifeld 2' , 1 , 0 , 200 ,'stl.frei2_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17015 , 730492 , 'stl' , 'frei3_wr' , 'Stellen Freifeld 3' , 1 , 0 , 200 ,'stl.frei3_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17016 , 730492 , 'stl' , 'frei4_wr' , 'Stellen Freifeld 4' , 1 , 0 , 200 ,'stl.frei4_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17017 , 730492 , 'stl' , 'frei5_wr' , 'Stellen Freifeld 5' , 1 , 0 , 200 ,'stl.frei5_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17018 , 730492 , 'stl' , 'frei6_wr' , 'Stellen Freifeld 6' , 1 , 0 , 200 ,'stl.frei6_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17019 , 730492 , 'stl' , 'frei7_wr' , 'Stellen Freifeld 7' , 1 , 0 , 200 ,'stl.frei7_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17020 , 730492 , 'stl' , 'frei8_wr' , 'Stellen Freifeld 8' , 1 , 0 , 200 ,'stl.frei8_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17021 , 730492 , 'stl' , 'frei9_wr' , 'Stellen Freifeld 9' , 1 , 0 , 200 ,'stl.frei9_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17022 , 730492 , 'stl' , 'frei10_wr' , 'Stellen Freifeld 10' , 1 , 0 , 200 ,'stl.frei10_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17023 , 730492 , 'stlma' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18000 , 730493 , 'person' , 'name_wr {wr +()} '', '' {wr +()} vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18001 , 730493 , 'mabeu' , 'bez1_wr' , 'Bezeichnung 1' , 1 , 0 , 200 , 'mabeu.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18002 , 730493 , 'mabeu' , 'bez2_wr' , 'Bezeichnung 2' , 1 , 0 , 150 , 'mabeu.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18003 , 730493 , '{wr datetostring(mabeu' , 'faellig_wr)}' , 'F�llig am' , 1 , 0 , 150 , 'mabeu.faellig_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18004 , 730493 , 'mabeu' , 'erledigt_wr' , 'Erledigt am' , 1 , 0 , 150 , 'mabeu.erledigt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(18005 , 730493 , 'mabeu' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10383 , 10362 , 'maziel' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(11111 , 730495 , 'person' , 'name_wr  {wr +()} '', ''  {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 300 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(11112 , 730495 , '{wr zahlvorm(magh' , 'ggehalt_wr)}' , 'Grundgehalt' , 1 , 0 , 200 , 'magh.ggehalt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(11113 , 730495 , 'magh' , 'gehsteigpr_wr' , 'Total %' , 1 , 0 , 150 , 'magh.gehsteigpr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(73100 , 730496 , '{wr datetostring(vge' , 'datum_wr)}' , 'Datum des Gespr�chs' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(73101 , 730496 , 'vge' , 'Zeit_WR' , 'Zeit von' , 1 , 0 , 100 , 'vge.Zeit_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(73102 , 730496 , 'vge' , 'ZeitBis_WR' , 'Zeit bis' , 1 , 0 , 100 , 'vge.ZeitBis_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(73103 , 730496 , 'vge' , 'Eingeladen_WR' , 'Eingeladen am' , 1 , 0 , 150 , 'vge.Eingeladen_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730104 , 730496 , 'case when vge' , 'status_wr = ''A'' then ''Angemeldet/Eingeladen'' when vge.status_wr =''Z'' then ''Best�tigt/Zugesagt'' when vge.status_wr = ''S'' then ''Storno/Absage'' else ''Teilgenommen'' end' , 'Status' , 1 , 0 , 200 , 'case when vge.status_wr = �A� then �Angemeldet/Eingeladen� when vge.status_wr =�Z� then �Best�tigt/Zugesagt� when vge.status_wr = �S� then �Storno/Absage� else �Teilgenommen� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730105 , 730496 , 'p1' , 'name_wr  {wr +()} '', ''  {wr +()} p1.vorname_wr' , 'Ansprechpartner 1' , 1 , 0 , 200 , 'p1.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730106 , 730496 , 'p2' , 'name_wr  {wr +()} '', ''  {wr +()} p2.vorname_wr' , 'Ansprechpartner 2' , 1 , 0 , 200 , 'p2.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730107 , 730496 , 'p3' , 'name_wr  {wr +()} '', ''  {wr +()} p3.vorname_wr' , 'Ansprechpartner 3' , 1 , 0 , 200 , 'p3.name_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730108 , 730496 , 'firma' , 'firma1_wr' , 'Veranstaltungsort' , 1 , 0 , 200 , 'firma.firma1_wr');


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74100 , 740496 , 'ost' , 'bez1_wr' , 'Offene Stelle' , 1 , 0 , 200 , 'ost.bez1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74101 , 740496 , 'person' , 'name_wr {wr +()} '' , '' {wr +()} person.vorname_wr' , 'Name, Vorname' , 1 , 0 , 200 , 'person.name_wr {wr +()} '', '' {wr +()} person.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74102 , 740496 , '{wr datetostring(vge' , 'datum_wr)}' , 'Datum des Gespr�chs' , 1 , 0 , 150 , '{wr datetostring(vge.datum_wr)}');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74103 , 740496 , 'vge' , 'Zeit_WR' , 'Zeit von' , 1 , 0 , 100 , 'vge.Zeit_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74104 , 740496 , 'vge' , 'ZeitBis_WR' , 'Zeit bis' , 1 , 0 , 100 , 'vge.ZeitBis_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74105 , 740496 , 'p1' , 'name_wr  {wr +()} '', ''  {wr +()} p1.vorname_wr' , 'Ansprechpartner 1' , 1 , 0 , 200 , 'p1.name_wr {wr +()} '', ''  {wr +()} p1.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74106 , 740496 , 'p2' , 'name_wr  {wr +()} '', ''  {wr +()} p2.vorname_wr' , 'Ansprechpartner 2' , 1 , 0 , 200 , 'p2.name_wr {wr +()} '', ''  {wr +()} p2.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74107 , 740496 , 'p3' , 'name_wr  {wr +()} '', ''  {wr +()} p3.vorname_wr' , 'Ansprechpartner 3' , 1 , 0 , 200 , 'p3.name_wr {wr +()} '', ''  {wr +()} p3.vorname_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74108 , 740496 , 'firma' , 'firma1_wr' , 'Veranstaltungsort' , 1 , 0 , 200 , 'firma.firma1_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74109 , 740496 , 'raum' , 'bez_WR' , 'Raum' , 1 , 0 , 150 , 'raum.bez_WR');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74110 , 740496 , 'case when vge' , 'status_wr = ''A'' then ''Angemeldet/Eingeladen'' when vge.status_wr =''Z'' then ''Best�tigt/Zugesagt'' when vge.status_wr = ''S'' then ''Storno/Absage'' else ''Teilgenommen'' end' , 'Vorstellungsgespr�ch-Status' , 1 , 0 , 200 , 'case when vge.status_wr = �A� then �Angemeldet/Eingeladen� when vge.status_wr =�Z� then �Best�tigt/Zugesagt� when vge.status_wr = �S� then �Storno/Absage� else �Teilgenommen� end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74111 , 740496 , 'ukz' , 'text_wr' , 'Status' , 1 , 0 , 100 , 'ukz.text_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(74120 , 740496 , 'vge' , 'BngNr_WR' , 'PK' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17531 , 17521 , '{wr datetostring(ost' , 'OffenAb_WR)}' , 'zu besetzen ab' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(17532 , 17521 , '{wr datetostring(ost' , 'EingFrist_WR)}' , 'Bewerbungsfrist bis' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10052 , 800001 , 'p' , 'Name_wr' , 'Name' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10053 , 800001 , 'p' , 'Vorname_wr' , 'Vorname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10054 , 800001 , 'p' , 'PK' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10056 , 800001 , 'p' , 'strasse_wr' , 'Strasse' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10057 , 800001 , 'p' , 'plz_wr' , 'PLZ' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10058 , 800001 , 'p' , 'ort_wr' , 'Ort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10059 , 800001 , 'p' , 'telefonp_wr' , 'Telefon privat' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10060 , 800001 , 'p' , 'tmobil_wr' , 'Telefon handy' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10061 , 800001 , 'p' , 'email2_wr' , 'E-Mail' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10062 , 800001 , '{wr datetostring(p' , 'gebdatum_wr)}' , 'Geburtsdatum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10063 , 800001 , 'p' , 'gebort_wr' , 'Geburtsort' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10064 , 800001 , 'fb' , 'firma1_wr' , 'Bankname' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10065 , 800001 , 'b' , 'blz_wr' , 'Bankleitzahl' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10066 , 800001 , 'p' , 'kontonr_wr' , 'Kontonummer' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10067 , 800001 , 'f' , 'firma1_wr' , 'Betrieb' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10069 , 800001 , 'a' , 'bez_wr' , 'Abteilung' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10070 , 800001 , 'stl' , 'bez1_wr' , 'Aktuelle Stelle' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10071 , 800001 , 'UKZPOS' , 'text_wr' , 'Position' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10072 , 800001 , '{wr datetostring(p' , 'eintritt_wr)}' , 'Eintritt' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730503 , 730458 , 'cast(({wr todate(maaz' , 'bis1_wr)} - {wr todate(von1_wr)} +{wr todate(bis2_wr)} - {wr todate(von2_wr)}+{wr todate(bis3_wr)} - {wr todate(von3_wr)}+{wr todate(bis4_wr)} - {wr todate(von4_wr)}+{wr todate(bis5_wr)} - {wr todate(von5_wr)}+{wr todate(bis6_wr)} - {wr todate(von6_wr)}+{wr todate(bis7_wr)} - {wr todate(von7_wr)}+{wr todate(bis8_wr)} - {wr todate(von8_wr)}+{wr todate(bis9_wr)} - {wr todate(von9_wr)}+{wr todate(bis10_wr)} - {wr todate(von10_wr)}+{wr todate(bis11_wr)} - {wr todate(von11_wr)}+{wr todate(bis12_wr)} - {wr todate(von12_wr)})*24 +case when waz_wr is null then 0.0 else waz_wr end as numeric(4,2))' , 'Gesamte Arbeitszeit' , 1 , 0 , 150 , '4');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730902 , 730462 , 'perkal' , 'atage_wr' , 'Tage' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730903 , 730462 , 'case when perkal' , 'dbaccount in (999999999,999999996) then ''noch nicht genehmigt'' when perkal.dbaccount = 999999990 then ''Stornierung genehmigt'' when perkal.dbaccount = 999999998 then ''nicht genehmigt'' when w.key_wr =''12'' then ''gebucht'' else ''genehmigt'' end' , 'Status' , 1 , 0 , 120 , '4');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730904 , 730462 , 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730905 , 730462 , 'case when ukz' , 'key_wr =''U'' or ukz.key_wr =''SU'' then perkal.pk else 0 end' , 'pk2' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730922 , 730505 , 'perkal' , 'atage_wr' , 'Tage' , 1 , 0 , 80 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730923 , 730505 , 'case when perkal' , 'dbaccount = 999999999 then ''noch nicht genehmigt'' when perkal.dbaccount = 999999990 then ''Stornierung genehmigt'' when perkal.dbaccount = 999999998 then ''nicht genehmigt'' when w.key_wr =''12'' then ''gebucht'' else ''genehmigt'' end' , 'Status' , 1 , 0 , 120 , '4');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730924 , 730505 , 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730925 , 730505 , 'case when ukz' , 'key_wr =''U'' or ukz.key_wr =''SU'' then perkal.pk else 0 end' , 'pk2' , 0 , 1 , null , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730810 , 730464 , 'stlpla' , 'bez1_wr' , 'Stellenplan' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730811 , 730464 , 'abt' , 'bez_wr' , 'OE' , 1 , 0 , 150 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730812 , 730464 , 'ggr' , 'bez1_wr' , 'Gehaltsgruppe' , 1 , 0 , 150 , 'ggr.bez1_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730813 , 730464 , 'stlpla' , 'gueltigvon_wr' , 'von' , 1 , 0 , 100 , 'stlpla.gueltigvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730814 , 730464 , 'stlpla' , 'gueltigbis_wr' , 'bis' , 1 , 0 , 100 , 'stlpla.gueltigbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730815 , 730464 , 'MAPLST' , 'PAMA_WR' , 'PA/MA' , 1 , 0 , 100 , 'MAPLST.PAMA_WR');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730510 , 730466 , 'maaz' , 'datum_wr' , 'Datum' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19789 , 19778 , 'raum' , 'bez_wr {wr +()} '' ('' {wr +()} raum.raumnr_wr {wr +()} '')''' , 'Raum' , 1 , 0 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10150 , 900001 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10151 , 900001 , 'UKZ' , 'text_wr' , 'Status' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10152 , 900001 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10153 , 900001 , '{wr datetostring(mnhma' , 'von_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(mnhma.bis_wr)}' , 'Durchf�hrung' , 1 , 0 , 200 , 'mnhma.von_wr;mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10154 , 900001 , 'mnhma' , 'bis_wr' , 'Zeitraum bis' , 1 , 0 , 150 , 'mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10155 , 900001 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10156 , 900001 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10157 , 900001 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10158 , 900001 , '{wr zahlvorm(mnhma' , 'kosten_wr)}' , 'Kosten' , 1 , 0 , 90 , 'mnhma.kosten_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10159 , 900001 , 'mnh' , 'bez1_wr' , 'Ma�nahmen-Art' , 1 , 0 , 200 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(10160 , 900001 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14792 , 14781 , '{wr zahlvorm(maziel' , 'maxpraemie_wr)}' , 'Sollwert' , 1 , 0 , 150 , 'maziel.maxpraemie_wr');


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(14793 , 14781 , '{wr zahlvorm(maziel' , 'Zielpraemi_wr)}' , 'Istwert' , 1 , 0 , 150 , 'maziel.Zielpraemi_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20369 , 730469 , '{wr zahlvorm(maziel' , 'maxpraemie_wr)}' , 'Sollwert' , 1 , 0 , 150 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(20370 , 730469 , '{wr zahlvorm(maziel' , 'Zielpraemi_wr)}' , 'Istwert' , 1 , 0 , 150 , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730399 , 730515 , 'case when perkal' , 'grund_wr = 0 then ABWART.Bez_WR else ukz.text_wr end' , 'Grund' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730400 , 730515 , '{wr datetostring(perkal' , 'datumvon_wr)} {wr +()} '' -  ''  {wr +()} {wr datetostring(perkal.datumbis_wr)}' , 'Termin' , 1 , 0 , 200 , 'perkal.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730401 , 730515 , 'perkal' , 'atage_wr' , 'Tage' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730402 , 730515 , 'case when perkal' , 'dbaccount = 999999999 then ''noch nicht genehmigt'' when perkal.dbaccount = 999999998 then ''nicht genehmigt'' else ''genehmigt'' end' , 'Status' , 1 , 0 , 120 , 'case when perkal.dbaccount = 999999999 then �noch nicht genehmigt� when perkal.dbaccount = 999999998 then �nicht genehmigt� else �genehmigt� end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730403 , 730515 , 'case when perkal' , 'dbaccount = 999999999 then ''noch nicht genehmigt'' when perkal.dbaccount = 999999998 then ''nicht genehmigt'' else ''genehmigt'' end' , 'Vertreter' , 1 , 0 , 120 , 'case when perkal.dbaccount = 999999999 then �noch nicht genehmigt� when perkal.dbaccount = 999999998 then �nicht genehmigt� else �genehmigt� end');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730404 , 730515 , 'perkal' , 'pk' , 'Bemerkung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730405 , 730515 , 'perkal' , 'pk' , '�ndern' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730406 , 730515 , 'perkal' , 'pk' , 'L�schen' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730407 , 730515 , 'perkal' , 'pk' , 'Genehmigen/Ablehnen' , 1 , 0 , 20 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740000 , 730470 , 'mapeg' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740001 , 730469 , 'maziel' , 'pk' , 'PK' , 0 , 1 , null , null);



insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740003 , 730468 , 'stlpla' , 'pk' , 'PK' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740005 , 730463 , 'ukonto' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740006 , 14887 , 'person' , 'pk' , 'PK' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(840006 , 911000 , 'person' , 'pk' , 'PK' , 0 , 1 , null , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740008 , 10325 , 'buchtn' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(740009 , 730473 , 'buchtn' , 'pk' , 'PK' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730399 , 730514 , 'case when perkal' , 'grund_wr = 0 then ABWART.Bez_WR else ukz.text_wr end' , 'Grund' , 1 , 0 , 150 , '1');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730400 , 730514 , '{wr datetostring(perkal' , 'datumvon_wr)} {wr +()} '' -  ''  {wr +()} {wr datetostring(perkal.datumbis_wr)}' , 'Termin' , 1 , 0 , 200 , 'perkal.datumvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730401 , 730514 , 'perkal' , 'atage_wr' , 'Tage' , 1 , 0 , 80 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730402 , 730514 , 'case when perkal' , 'dbaccount = 999999999 then ''noch nicht genehmigt'' when perkal.dbaccount = 999999998 then ''nicht genehmigt'' else ''genehmigt'' end' , 'Status' , 1 , 0 , 120 , 'case when perkal.dbaccount = 999999999 then �noch nicht genehmigt� when perkal.dbaccount = 999999998 then �nicht genehmigt� else �genehmigt� end');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730404 , 730514 , 'perkal' , 'pk' , 'Bemerkung' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730405 , 730514 , 'case when ukz' , 'key_wr =''U'' or ukz.key_wr =''SU'' then perkal.pk else 0 end' , '�ndern' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730403 , 730514 , 'case when ukz' , 'key_wr =''U'' or ukz.key_wr =''SU'' then perkal.pk else 0 end' , 'Vertrter' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730406 , 730514 , 'perkal' , 'pk' , 'L�schen' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(730407 , 730514 , 'perkal' , 'pk' , 'Genehmigen / Ablehnen' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19674 , 19673 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 150 , 'semtyp.semtypnr_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19675 , 19673 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 300 ,'semtyp.thema_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19678 , 19673 , 'semtyp' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19676 , 19673 , '(select case when count(semter' , 'pk) >0  then ''Termin'' else '''' end from semter where semter.semtypnr_wr = semtyp.pk and semter.datumvon_wr > {fn now()} and semter.stornostat_wr =''N'' and semter.ONLINE_WR = ''J'' and ((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr is null) or  (schaltungv_wr is null and schaltungb_wr >= {fn now()}) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()})))' , 'Termin' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19677 , 19673 , 'ukzazant' , 'text_wr /*ShowWhenAzAntIsActive*/' , 'Arbeitszeitanteil' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6000 , 900005 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Mitarbeiter' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6001 , 900005 , 'semtyp' , 'semtypnr_wr' , 'Seminar-Nr.' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6002 , 900005 , 'semtyp' , 'thema_wr' , 'Thema' , 1 , 0 , 200 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6003 , 900005 , 'case when buchtn' , 'terwunsch_wr is null then {wr datetostring(buchtn.terminvon_wr)} {wr +()} ''-'' {wr +()} {wr datetostring(buchtn.terminbis_wr)} else terwunsch_wr end' , 'Termin / Terminwunsch' , 1 , 0 , 100 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50001 , 910000 , 'QUALI' , 'BEZ1_WR {wr +()} case when mabeuq.webpflicht_wr = ''1'' then ''*'' else '' '' end' , 'Qualifikation' , 1 , 0 , 200 , 'mabeuq.rf_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50002 , 910000 , 'QUALI' , 'BEZ2_WR' , 'Bezeichnung 2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50003 , 910000 , 'quaaus' , 'pk' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50004 , 910000 , '{wr zahlvormohneEuro(mabeuq' , 'punkte_wr)}' , 'Numerischer Wert' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50005 , 910000 , 'ukz' , 'pk' , 'Note' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50006 , 910000 , 'case when mabeuq' , 'unmapro_wr = 1 then ''Ja'' else ''Nein'' end' , '�bernahme in Mitarbeiterprofil' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(50007 , 910000 , 'mabeuq' , 'pk' , 'Bemerkung' , 0 , 1 , 200 , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53300 , 910000 , 'mabeuq {wr left outer join(quali,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'quali.online_wr =''J'' and MABEUQ.LFDBEUNR_WR= :mabeuqpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53301 , 910000 , '{wr left outer join(quaaus,quaaus.pk = mabeuq.auskurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53302 , 910000 , '{wr left outer join(ukz,ukz.pk = mabeuq.note_wr)}' , null);


insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(300 , 910005 , 'QUALI' , 'BEZ1_WR' , 'Qualifikation' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(301 , 910005 , 'QUALI' , 'BEZ2_WR' , 'Bezeichnung 2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(302 , 910005 , 'quaaus' , 'Bez1_WR' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(303 , 910005 , '{wr zahlvormohneEuro(mabeuq' , 'punkte_wr)}' , 'Numerischer Wert' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(304 , 910005 , 'ukz' , 'text_wr' , 'Note' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(305 , 910005 , 'mabeuq' , 'pk' , 'Bemerkung Icon' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(306 , 910005 , '{wr memotostring(MABEUQ' , 'bemerkung_wr)}' , 'Bemerkung Tooltip' , 2 , 0 , 20 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(307 , 910005 , 'mabeuq' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(300 , 910005 , 'mabeuq {wr left outer join(quali,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'quali.online_wr =''J'' and MABEUQ.LFDBEUNR_WR= :mabeuqpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(301 , 910005 , '{wr left outer join(quaaus,quaaus.pk = mabeuq.auskurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(302 , 910005 , '{wr left outer join(ukz,ukz.pk = mabeuq.note_wr)}' , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(301 , 910006 , 'QUALI' , 'BEZ1_WR {wr +()} case when mabeuq.webpflicht_wr = ''1'' then ''*'' else '' '' end' , 'Qualifikation' , 1 , 0 , 200 , 'mabeuq.rf_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(302 , 910006 , 'QUALI' , 'BEZ2_WR' , 'Bezeichnung 2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(303 , 910006 , 'quaaus' , 'pk' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(304 , 910006 , '{wr zahlvormohneEuro(mabeuq' , 'punkte_wr)}' , 'Numerischer Wert' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(305 , 910006 , 'ukz' , 'pk' , 'Note' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(307 , 910006 , 'mabeuq' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(310 , 910006 , 'quali' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(300 , 910006 , 'mabeuq {wr left outer join(quali,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'quali.online_wr =''J'' and MABEUQ.LFDBEUNR_WR= :mabeuqpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(301 , 910006 , '{wr left outer join(quaaus,quaaus.pk = mabeuq.auskurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(302 , 910006 , '{wr left outer join(ukz,ukz.pk = mabeuq.note_wr)}' , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53300 , 52000 , 'QUALI' , 'BEZ1_WR {wr +()} case when mabeuq.webpflicht_wr = ''1'' then ''*'' else '' '' end' , 'Qualifikation' , 1 , 0 , 200 , 'mabeuq.rf_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53301 , 52000 , 'QUALI' , 'BEZ2_WR' , 'Bezeichnung 2' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53302 , 52000 , 'quaaus' , 'pk' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53303 , 52000 , '{wr zahlvormohneEuro(mabeuq' , 'punkte_wr)}' , 'Numerischer Wert' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53304 , 52000 , 'ukz' , 'pk' , 'Note' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53305 , 52000 , 'case when mabeuq' , 'unmapro_wr = 1 then ''Ja'' else ''Nein'' end' , '�bernahme in Mitarbeiterprofil' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53306 , 52000 , 'q' , 'pk' , 'Auspr�gung' , 1 , 0 , 200 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53307 , 52000 , '{wr zahlvormohneEuro(mabeuq' , 'PunkteMa_WR)}' , 'Numerischer Wert' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53308 , 52000 , 'u' , 'pk' , 'Note' , 1 , 0 , 100 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53309 , 52000 , 'mabeuq' , 'pk' , 'Bemerkung' , 0 , 1 , null , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(53310 , 52000 , 'quali' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53300 , 52000 , 'mabeuq {wr left outer join(quali,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'quali.online_wr =''J'' and MABEUQ.LFDBEUNR_WR= :mabeuqpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53301 , 52000 , '{wr left outer join(quaaus,quaaus.pk = mabeuq.auskurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53302 , 52000 , '{wr left outer join(ukz,ukz.pk = mabeuq.note_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53303 , 52000 , '{wr left outer join(ukz u,u.pk = mabeuq.NoteMa_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(53304 , 52000 , '{wr left outer join(quaaus q,q.pk = mabeuq.AusKurzMa_WR)}' , null);


update Webtext set webfedpk_wr = 5068 where webfedpk_wr = 5053;
update Webtext set webfedpk_wr = 5069 where webfedpk_wr = 5054;
update Webtext set webfedpk_wr = 5070 where webfedpk_wr = 5055;
update Webtext set webfedpk_wr = 5071 where webfedpk_wr = 5056;
update Webtext set webfedpk_wr = 5072 where webfedpk_wr = 5057;
update Webtext set webfedpk_wr = 5073 where webfedpk_wr = 5058;
update Webtext set webfedpk_wr = 5074 where webfedpk_wr = 5059;
update Webtext set webfedpk_wr = 5075 where webfedpk_wr = 5060;
update Webtext set webfedpk_wr = 5076 where webfedpk_wr = 5061;
update Webtext set webfedpk_wr = 5077 where webfedpk_wr = 5062;
update Webtext set webfedpk_wr = 5078 where webfedpk_wr = 5063;
update Webtext set webfedpk_wr = 5079 where webfedpk_wr = 5064;
update Webtext set webfedpk_wr = 5080 where webfedpk_wr = 5065;
update Webtext set webfedpk_wr = 5081 where webfedpk_wr = 5066;

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5050 , 14432 , 'person' , 'persnr_wr' , 'Personal-Nr.' , 1 , 0 , 130 , '1');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5051 , 14432 , 'person' , 'name_wr {wr +()} '', '' {wr +()} person.vorname_wr' , 'Name' , 1 , 0 , 180 , 'person.name_wr;person.vorname_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5052 , 14432 , 'mnhma' , 'bez_wr' , 'Ma�nahmen-Bezeichnung' , 1 , 0 , 200 , 'mnhma.bez_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5067 , 14432 , 'mnhma' , 'bez2_wr' , 'Ma�nahmen-Bezeichnung2' , 1 , 0 , 200 , 'mnhma.bez2_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5068 , 14432 , 'UKZ' , 'text_wr' , 'Status der Ma�nahme' , 1 , 0 , 70 , 'ukz.FREI1NUM_WR;ukz.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5069 , 14432 , 'mapeg' , 'datumstatt_wr' , 'Datum stattgefunden PE-Gespr�ch' , 1 , 0 , 120 , 'mapeg.datumstatt_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5070 , 14432 , 'mnhma' , 'von_wr' , 'Von' , 1 , 0 , 70 , 'mnhma.von_wr');

insert into WEBFed (PK,WebAbPK_wr,TabelleAl_wr,Feldname_wr,Darname_wr,Anzeige_wr,Benoetigt_wr,Breite_wr,SortFeld_wr ) values(5071 , 14432 , 'mnhma' , 'bis_wr' , 'Bis' , 1 , 0 , 70 , 'mnhma.bis_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5072 , 14432 , 'mnhma' , 'terminvon_wr' , 'Termin von' , 1 , 0 , 70 , 'mnhma.terminvon_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5073 , 14432 , 'mnhma' , 'terminbis_wr' , 'Termin bis' , 1 , 0 , 70 , 'mnhma.terminbis_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5074 , 14432 , 'mnhma' , 'durchgefue_wr' , 'Durchgef�hrt am' , 1 , 0 , 100 , 'mnhma.durchgefue_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5075 , 14432 , 'mp' , 'bez_wr' , 'Ma�nahmenprogramm' , 1 , 0 , 100 , 'mp.bez_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5076 , 14432 , 'firma' , 'firma1_wr' , 'Firma' , 1 , 0 , 160 , 'firma.firma1_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5077 , 14432 , 'abt' , 'bez_wr' , 'OE-K�rzel' , 1 , 0 , 110 , 'abt.bez_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5078 , 14432 , 'ukz2' , 'text_wr' , 'Seminartyp-Kategorie' , 1 , 0 , 70 , 'ukz2.text_wr');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5079 , 14432 , 'mnhma' , 'extsemnr_wr' , 'externe  Seminarnummer' , 1 , 0 , 70 , 'mnhma.extsemnr_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5080 , 14432 , 'mnhma' , 'MnhStatus_WR' , 'Status der Ma�nahme' , 1 , 0 , 150 , 'mnhma.MnhStatus_WR');
delete from webtext where webfedpk_wr = 5080;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5081 , 14432 , '{wr zahlvorm(MNHMA' , 'Kostenplan_wr )}' , 'Kosten Plan' , 1 , 0 , 100 , 'mnhma.Kostenplan_wr');
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5082 , 14432 , '{wr zahlvorm(MNHMA' , 'Kosten_wr )}' , 'Kosten Ist' , 1 , 0 , 100 , 'mnhma.Kosten_wr');

insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(5083 , 14432 , 'mnhma' , 'pk' , 'pk' , 0 , 1 , null , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6597 , 900700 , 'case when ukonto' , 'urleinheit_wr = ''S'' then case when (hurlsoll_wr+hurlvjsoll_wr)-(hurlist_wr+hurlvjist_wr)-(hurlver_wr+hurlvjve_wr) > 0 then ''%KontoIstAusreichendneu'' else ''%KontoNichtAusreichend'' end else case when (urlaubsoll_wr+urlaubvjso_wr)-(urlaubist_wr+urlaubvjis_wr)-(urlaubver_wr+urlaubvjve_wr) >0 then ''%KontoIstAusreichend'' else ''%KontoNichtAusreichend'' end end' , 'Konto Probleme' , 1 , 0 , 10 , '1');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6598 , 900700 , 'case when perkal' , 'stbeantram_wr is not null and perkal.StGenehmAm_wr is null and perkal.stablehnam_wr is null then ''Stornoantrag'' else ''Urlaubsantrag'' end' , 'Art' , 1 , 0 , 150 , '1');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6599 , 900700 , '{wr datetostring(perkal' , 'datumvoN_wr)} {wr +()} '' - '' {wr +()} {wr datetostring(perkal.datumbis_wr)}' , 'Termin' , 1 , 0 , 150 , 'perkal.datumvon_wr');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6600 , 900700, 'case when perkal', 'grund_wr =0 then ABWART.bez_wr else ukz.text_wr end' , 'Grund' , 1 , 0 , 200 , '2');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6601 , 900700, 'case when ukonto' , 'urleinheit_wr = ''S'' then {wr round(AnzAStd_wr,2)} {wr +()} '' Stunde(n)'' else {wr round(atage_wr,2)} {wr +()} '' Tag(e)'' end' , 'Abwesenheit' , 1 , 0 , 150 , '1');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6602 , 900700, 'ver' , 'name_wr {wr +()} '', '' {wr +()} ver.vorname_wr' , 'Vertreter' , 1 , 0 , 150 , '1');
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6603 , 900700, 'perkal' , 'pk' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6604 , 900700, 'perkal' , 'pk' , '�ndern' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6605 , 900700, 'perkal' , 'pk' , 'Genehmigen' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6606 , 900700, 'perkal' , 'pk' , 'Ablehnen' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6607 , 900700, 'perkal' , 'pk' , 'L�schen' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6608 , 900700, 'ltrim(perkal' , 'bez_wr)' , 'Bezeichnung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6609 , 900700, '{wr memotostring(perkal' , 'bemerkung_wr)}' , 'Bemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6610 , 900700, 'case when perkal' , 'stablehnam_wr is not null and perkal.stbeantram_wr is not null then perkal.stbements_wr else perkal.GenBemerk1_WR end' , 'Gehnemigungsbemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6611 , 900700, 'perkal' , 'stgrbem_wr' , 'Stornobemerkung' , 2 , 0 , 20 , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6612 , 900700, 'perkal' , 'pk' , 'pk' , 0 , 1 , null , null);
insert into WEBFed (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(6613 , 900700, 'case when perkal' , 'stbeantram_wr is not null and perkal.StGenehmAm_wr is null and perkal.stablehnam_wr is null then 1 else 0 end' , 'storno' , 0 , 1 , null , null);


insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(35000 , 730630 , 'berpro {wr left outer join(quali, quali.pk = berpro.qualikurz_wr)}' , 'quali.pk not in (select qualikurz_wr from ostpro where ostpro.ostnr_wr = :ostnr )');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(35001 , 730630 , '{wr left outer join(quaaus,berpro.auskurz_wr = quaaus.pk)}' , 'ber.persnr_wr = :bewerber :anzeige');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(35002 , 730630 , '{wr left outer join(ber,berpro.persnr_wr = ber.pk)}' , '');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(35003 , 730630 , '{wr left outer join(ukz u1,berpro.note1_wr = u1.pk)}' , '');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(35004 , 730630 , '{wr left outer join(quaart,quaart.pk = QUALI.QualiArt_WR)}' , '');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54000 , 54000 , 'mnhma {wr left outer join(ma,mnhma.persnr_wr = ma.pk)}' , ':mehr and mnhma.pk > 0');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54001 , 54000 , '{wr left outer join(person,person.pk = ma.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54002 , 54000 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54003 , 54000 , '{wr left outer join(utitel,utitel.pk = person.titel_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54004 , 54000 , '{wr left outer join(mnh,mnh.pk = mnhma.mnhkurz_wr)}' ,null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54005 , 54000 , '{wr left outer join(mp,mp.PK =mnhma.MPKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54006 , 54000 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54007 , 54000 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54008 , 54000 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54100 , 54001 , 'mnhma {wr left outer join(ma,mnhma.persnr_wr = ma.pk)}' , ':mehr and mnhma.pk > 0');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54101 , 54001 , '{wr left outer join(person,person.pk = ma.persnr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54102 , 54001 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54103 , 54001 , '{wr left outer join(utitel,utitel.pk = person.titel_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54104 , 54001 , '{wr left outer join(mnh,mnh.pk = mnhma.mnhkurz_wr)}' ,null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54105 , 54001 , '{wr left outer join(mp,mp.PK =mnhma.MPKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54106 , 54001 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54107 , 54001 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(54108 , 54001 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730732 , 331123 , ')a' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730752 , 23624 , 'select agrkal.datumvon_wr aa,case when agrkal.datumbis_wr <= :einsatzplan then agrkal.datumbis_wr else :einsatzplan end bb,' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730753 , 23624 , '''Ausfallgrund: '' {wr +()} ukz.text_wr  {wr +()} ''\n''  {wr +()} ''Bezeichnung: '' {wr +()} agrkal.bez_wr cc,person.pk pp' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730754 , 23624 , 'from agrkal {wr left outer join(ukz,ukz.pk = agrkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730758 , 23624 , 'union',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730759 , 23624 , 'select algkal.datumvon_wr aa,algkal.datumbis_wr bb, ''Ausfallgrund: '' {wr +()} case when algkal.belegbar_wr = 1 then ''Feiertag'' when algkal.halberft_wr = 1 then ''halber Feiertag'' when ALGKAL.GRUND_wr > 0 then ukz.text_wr else ''sonstige Tage'' end {wr +()} ''\n'' {wr +()} ''Bezeichnung: '' {wr +()} algkal.bez_wr cc,0  pp',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730760 , 23624 , 'from algkal',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730761 , 23624 , '{wr left outer join(ukz,ukz.pk = algkal.grund_wr)} where 1=1',null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730762 , 23624 , 'union',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730763 , 23624 , 'select firkal.datumvon_wr aa,firkal.datumbis_wr bb, ''Ausfallgrund: '' {wr +()} case when firkal.ft_wr = 1 then ''Feiertag'' when firkal.halberft_wr = 1 then ''halber Feiertag'' when firKAL.GRUND_wr > 0 then ukz.text_wr else ''sonstige Tage'' end {wr +()} ''\n'' {wr +()} ''Bezeichnung: '' {wr +()} firkal.bez_wr cc,person.pk  pp',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730764 , 23624 , 'from firkal',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730765 , 23624 , '{wr left outer join(ukz,ukz.pk = firkal.grund_wr)}',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730766 , 23624 , '{wr left outer join(person,person.firmanr_wr = firkal.firmanr_wr)} where 1=1',null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730767 , 23624 , 'union',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730768 , 23624 , 'select abtkal.datumvon_wr aa,abtkal.datumbis_wr bb, ''Ausfallgrund: '' {wr +()} case when abtkal.ft_wr = 1 then ''Feiertag'' when abtkal.halberft_wr = 1 then ''halber Feiertag'' when abtKAL.GRUND_wr > 0 then ukz.text_wr else ''sonstige Tage'' end {wr +()} ''\n'' {wr +()} ''Bezeichnung: '' {wr +()} abtkal.bez_wr cc,person.pk  pp',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730769 , 23624 , 'from abtkal',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730770 , 23624 , '{wr left outer join(ukz,ukz.pk = abtkal.grund_wr)}',null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730771 , 23624 , '{wr left outer join(person,person.firmanr_wr = abtkal.firmanr_wr)} where abtkal.abtkurz_wr = person.abtkurz_wr )a',null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730800 , 730458 , 'maaz' , 'persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730900 , 730459 , 'masv {wr left outer join(person,person.pk = masv.SVPERSNR_WR)}' , 'masv.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730901 , 730459 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(731000 , 730460 , 'ma {wr left outer join(person,person.pk = ma.persnr_wr)}' , 'person.pk <> 0 and upper(person.name_wr) :name   :oe');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(741000 , 740488 , 'person' , 'person.pk <> 0 and upper(person.name_wr) :name   :oe');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(741001 , 740488 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732000 , 730461 , 'person' , 'person.gebdatum_wr is not null and person.aktpassiv_wr in( ''1'',''3'') :uebma');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77100 , 730464 , 'planst {wr left outer join(STLPLA,stlpla.pk = planst.StlplaKurz_WR)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77101 , 730464 , '{wr left outer join(abt,abt.pk = stlpla.AbtKurz_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77102 , 730464 , '{wr left outer join(maplst,planst.pk = MAPLST.planstkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77103 , 730464 , '{wr left outer join(ggr,ggr.pk = planst.ggrkurz_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77104 , 730464 , '{wr left outer join(ma,ma.pk = maplst.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77200 , 730465 , 'magh {wr left outer join(ggr,magh.ggrkurz_wr = ggr.pk)}' , 'ONLINE_WR = 1');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77201 , 730465 , '{wr left outer join(ma,ma.pk = magh.persnr_wr)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730801 , 730466 , 'maaz' , 'persnr_wr = :personenpk and {fn year(maaz.datum_wr)} = :jahr and {fn month(maaz.datum_wr)} = :monat');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79000 , 730467 , 'STLMA {wr left outer join(MA,MA.PK = STLMA.PERSNR_wr)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79001 , 730467 , '{wr left outer join(BTR,BTR.PK = STLMA.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79002 , 730467 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79003 , 730467 , '{wr left outer join(person,person.PK = ma.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79005 , 730467 , '{wr left outer join(abt,abt.PK = stl.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79004 , 730467 , '{wr left outer join(stl,stl.PK = stlma.stlkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(79006 , 730467 , '{wr left outer join(ggr ist,ist.PK = stl.ggrkurzist_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77200 , 730468 , 'planst {wr left outer join(STLPLA,stlpla.pk = planst.StlplaKurz_WR)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77201 , 730468 , '{wr left outer join(abt,abt.pk = stlpla.AbtKurz_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77202 , 730468 , '{wr left outer join(maplst, planst.pk = MAPLST.planstkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77203 , 730468 , '{wr left outer join(ggr,ggr.pk = planst.ggrkurz_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77204 , 730468 , '{wr left outer join(ma,ma.pk = maplst.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20369 , 730469 , 'MAZIEL {wr left outer join(MA,MA.PK = MAZIEL.PERSNR_wr)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20370 , 730469 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20371 , 730469 , '{wr left outer join(PERSON PERSVM,PERSVM.PK = MAZIEL.VERMIT_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20359 , 730470 , 'MAPEG {wr left outer join(MA a,a.PK = MAPEG.PERSNR_wr)}' , 'a.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20360 , 730470 , '{wr left outer join(ma b,b.pk = mapeg.persnrpe_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20361 , 730470 , '{wr left outer join(person,person.pk = b.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24038 , 730471 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'ERLEDIGT_WR is not null and beurteil1_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20353 , 730472 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_wr)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20354 , 730472 , '{wr left outer join(MNH,MNH.pk = mnhma.mnhkurz_wr)}' , ':mehr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20331 , 730473 , 'buchtn {wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , 'tn.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20332 , 730473 , '{wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24889 , 730473 , '{wr left outer join(semter,buchtn.semternr_wr = semter.pk)}' , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25000 , 730474 , 'berpro {wr left outer join(quali, quali.pk = berpro.qualikurz_wr)}' , 'quali.pk not in (select qualikurz_wr from ostpro where ostpro.ostnr_wr = :ostnr )');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25001 , 730474 , '{wr left outer join(quaaus,berpro.auskurz_wr = quaaus.pk)}' , 'ber.persnr_wr = :bewerber :unzeige');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(25002 , 730474 , '{wr left outer join(ber,berpro.persnr_wr = ber.pk)}' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(25004 , 730474 , '{wr left outer join(quaart,quaart.pk = QUALI.QualiArt_WR)}' , '');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(22105 , 22097 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730010 , 730480 , 'doku {wr left outer join(wrblob,wrblob.pk = doku.wrblobpk_wr)}' , 'doku.persnr_wr = :benutzer :dokart');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730011 , 730480 , '{wr left outer join(ukz,ukz.pk = doku.dokuart_wr)}' , 'doku.wrblobpk_wr > 0 ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730012 , 730480 , '{wr left outer join(person,person.pk = doku.PersNrHoch_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730013 , 730480 , '{wr left outer join(uuser,uuser.pk = doku.freigdurch_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20010 , 730481 , 'doku {wr left outer join(wrblob,wrblob.pk = doku.wrblobpk_wr)}' , 'doku.persnr_wr = :personenpk :dokart');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20011 , 730481 , '{wr left outer join(ukz,ukz.pk = doku.dokuart_wr)}' , 'doku.wrblobpk_wr > 0 ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20012 , 730481 , '{wr left outer join(person,person.pk = doku.PersNrHoch_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20013 , 730481 , '{wr left outer join(uuser,uuser.pk = doku.freigdurch_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24040 , 730486 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''M'' and online_wr = ''J'' and ((BEUART7_WR = ''1'' and ERLEDIGT_WR is not null) or (beurteil1_wr > 0 and Beurteil1D_WR is not null and (beurteil2_wr = 0 or (beurteil2_wr > 0 and beurteil2d_wr is not null)) and (beurteil3_wr = 0 or (beurteil3_wr > 0 and beurteil3d_wr is not null)) )) and person.pk = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(800200 , 910007 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''F'' and online_wr = ''J'' and erledigt_wr is not null and person.pk = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738000 , 730487 , 'ma {wr left outer join(person,person.pk = ma.persnr_wr)}' , 'person.email_wr is not null and person.pk <> 0 and upper(person.name_wr) :name   :oe');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15050 , 730482 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''M'' and online_wr = ''J'' and (:zusatz beuart7_wr =''1'' or ((beurteil1_wr = 0 or (beurteil1_wr is not null and beurteil1d_wr is not null)) and (beurteil2_wr = 0 or (beurteil2_wr is not null and beurteil2d_wr is not null)) and (beurteil3_wr = 0 or (beurteil3_wr is not null and beurteil3d_wr is not null)))) and erledigt_wr is not null and mabeu.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15051 , 730482 , '{wr left outer join(person p,p.pk = mabeu.beurteil1_wr)}' , ':archiv');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15052 , 730482 , '{wr left outer join(abt,abt.pk = p.abtkurz_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(110 , 22 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''F'' and online_wr = ''J'' and (beuart7_wr =''1'' or ((beurteil1_wr = 0 or (beurteil1_wr is not null and beurteil1d_wr is not null)) and (beurteil2_wr = 0 or (beurteil2_wr is not null and beurteil2d_wr is not null)) and (beurteil3_wr = 0 or (beurteil3_wr is not null and beurteil3d_wr is not null)))) and erledigt_wr is not null and mabeu.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(300 , 900300 , 'person left outer join ma on ma.persnr_wr = person.pk' , ':mas');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(301 , 900300 , 'left outer join WRSYS_MA_BETRIEBSZUGEH on WRSYS_MA_BETRIEBSZUGEH.mapk = ma.pk' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(302 , 900300 , 'left outer join ABT on abt.PK =person.ABTKURZ_wr' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(300 , 900301 , 'person left outer join ma on ma.persnr_wr = person.pk' , ':mas');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(301 , 900301 , 'left outer join ABT on abt.PK =person.ABTKURZ_wr' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15001 , 730483 , 'mabeu left outer join person on person.pk = mabeu.persnr_wr' , 'mabeu.auspraegun_wr =''M'' and online_wr = ''J''  and (:zusatz beuart7_wr =''1'' or SELBSTPAR_WR = 1 or ((beurteil1_wr = 0 or (beurteil1_wr is not null and beurteil1d_wr is not null)) and (beurteil2_wr = 0 or (beurteil2_wr is not null and beurteil2d_wr is not null)) and (beurteil3_wr = 0 or (beurteil3_wr is not null and beurteil3d_wr is not null))))  and  erledigt_wr is  null and mabeu.faellig_wr <= {fn now()} and mabeu.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15002 , 730483 , 'left outer join person p on p.pk = mabeu.beurteil1_wr' , ':archiv');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15003 , 730483 , 'left outer join abt on abt.pk = p.abtkurz_wr' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738001 , 730487 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738002 , 730488 , 'ma {wr left outer join(person,person.pk = ma.persnr_wr)}' , 'person.pk in (select p.vorgesetzt_wr from person p where p.vorgesetzt_wr = person.pk and p.vorgesetzt_wr <> 0) and person.pk <> 0 and upper(person.name_wr) :name   :oe');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738003 , 730488 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732001 , 730489 , 'person {wr left outer join(ma,ma.persnr_wr = person.pk)}' , 'person.gebdatum_wr is not null and person.aktpassiv_wr in( ''1'',''3'') and person.pk in (select mitarbeiter_wr from webvorgesetzter where vorgesetzter_wr = :benutzer and um_wr = 1) ');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14888 , 730490 , 'buchtn {wr left outer join(semtyp,buchtn.semtypnr_wr = semtyp.pk)}' , ':uebma :filter');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14890 , 730490 , '{wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14891 , 730490 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14892 , 730490 , '{wr left outer join(person,person.pk = tn.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14893 , 730490 , '{wr left outer join(firma,firma.pk = person.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14894 , 730490 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14895 , 730490 , '{wr left outer join(ma,ma.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16000 , 730491 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , 'ma.ueberma_wr = (select ma.pk from person {wr left outer join(ma,ma.persnr_wr = person.pk)} where person.pk = :benutzer )');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16001 , 730491 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16002 , 730491 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16003 , 730491 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16004 , 730491 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16005 , 730491 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17000 , 730492 , 'STLMA {wr left outer join(MA,MA.PK = STLMA.PERSNR_WR)}' , ':uebma ');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17001 , 730492 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , ':aktpassiv and stlma.von_wr <= {fn now()} and (stlma.bis_wr is null or stlma.bis_wr >= {fn now()} )');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17002 , 730492 , '{wr left outer join(BTR,BTR.PK = STLMA.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17003 , 730492 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17004 , 730492 , '{wr left outer join(STL,STL.PK = STLMA.STLKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17005 , 730492 , '{wr left outer join(ABT STLABT,STLABT.PK = STL.ABTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17006 , 730492 , '{wr left outer join(ggr,ggr.pk = ma.ggrkurzist_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17007 , 730492 , '{wr left outer join(ggr g1,g1.pk = stl.ggrkurzist_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(80000 , 800000 , 'buchtn {wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , 'tn.persnr_wr = :personpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100000 , 730496 , 'vge {wr left outer join(person p1,p1.PK = vge.AnsprechP_WR)}' , 'BngNr_WR = :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100002 , 730496 , '{wr left outer join(person p3,p3.PK = vge.AnsprechP3_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100003 , 730496 , '{wr left outer join(ber,ber.PK = vge.persnr_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100004 , 730496 , '{wr left outer join(firma,firma.PK = vge.verort_WR)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140000 , 740496 , 'vge {wr left outer join(person p1,p1.PK = vge.AnsprechP_WR)}' , ':filter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140001 , 740496 , '{wr left outer join(person p2,p2.PK = vge.AnsprechP2_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140002 , 740496 , '{wr left outer join(person p3,p3.PK = vge.AnsprechP3_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140003 , 740496 , '{wr left outer join(ber,ber.PK = vge.persnr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140004 , 740496 , '{wr left outer join(firma,firma.PK = vge.verort_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140005 , 740496 , '{wr left outer join(person,person.PK = ber.persnr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140006 , 740496 , '{wr left outer join(raum,raum.PK = vge.raumnr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140007 , 740496 , '{wr left outer join(ost,ost.PK = vge.ostnr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140008 , 740496 , '{wr left outer join(bng,vge.BngNr_WR = BNG.pk)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(140009 , 740496 , '{wr left outer join(UKZ,UKZ.PK = BNG.BNGSTATUS_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(80001 , 800000 , '{wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , 'terminvon_wr :tvon and terminbis_wr :tbis');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(80002 , 800000 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(80003 , 800000 , null , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10136 , 800001 , 'person p {wr left outer join(bank b, b.PK = p.BLZ_wr)}' , 'p.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10137 , 800001 , '{wr left outer join(FIRMA  fb,b.FIRMANR_wr = fb.PK)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10138 , 800001 , '{wr left outer join(FIRMA f, f.PK = p.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10139 , 800001 , '{wr left outer join(UKZ  UKZTAET,UKZTAET.PK = p.TAETIGKEIT_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10140 , 800001 , '{wr left outer join(ABT a, a.PK =p.ABTKURZ_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10141 , 800001 , '{wr left outer join(UKZ UKZPOS, UKZPOS.PK = p.POSITION_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10142 , 800001 , '{wr left outer join(ma, ma.persnr_wr = p.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10143 , 800001 , '{wr left outer join(stl, stl.pk = ma.iststl_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(203150 , 22772 , 'union select ukz.text_wr x,perkal.datumvon_wr,perkal.datumbis_wr, person.pk' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(203151 , 22772 , 'from perkal {wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(203152 , 22772 , '{wr left outer join(person,person.pk = perkal.persnr_wr)} where 1 = 1' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(203154 , 22772 , 'union select ukz.text_wr x,agrkal.datumvon_wr,agrkal.datumvon_wr,person.pk' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(203157 , 22772 , '{wr left outer join(UKZ,UKZ.PK = agrkal.GRUND_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738003 , 331237 , '{wr left outer join(ABWART,ABWART.PK = PERKAL.abwartkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(738004 , 13958 , '{wr left outer join(abwart,abwart.pk = perkal.abwartkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(11111 , 730495 , 'person {wr left outer join(ma,person.pk = ma.persnr_wr)}' , ':person and online_wr = 1');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(11112 , 730495 , '{wr left outer join(magh,ma.pk = magh.persnr_wr)}' , '{wr year(magh.von_wr)} = :von and {wr month(magh.von_wr)} = :monat');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100001 , 730496 , '{wr left outer join(person p2,p2.PK = vge.AnsprechP2_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13981 , 13980 , 'ukonto' , 'persnr_wr = :benutzer :zusatz');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14025 , 14024 , 'person {wr left outer join(ukonto,person.pk = ukonto.persnr_wr)}' , '1=1 :aktpassiv');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14026 , 14024 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14049 , 14048 , 'ukonto' , '{wr year(ukonto.von_wr)} >= {wr yeara()} and persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77000 , 730463 , 'ukonto' , '{wr year(ukonto.von_wr)} >= {wr yeara()} and persnr_wr = :personenpk :zusatz');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18000 , 730494 , 'person {wr left outer join(ukonto,ukonto.persnr_wr = person.pk )}' , '1=1 :aktpassiv');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18001 , 730494 , '{wr left outer join(ma,ma.persnr_wr = person.pk)}' , ':uebma');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19578 , 19573 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19632 , 19622 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , 'stornostat_wr =''N'' ');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19728 , 19725 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , 'stornostat_wr =''N'' ');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19790 , 19778 , '{wr left outer join(doz,semter.Betreuer_WR = doz.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19791 , 19778 , '{wr left outer join(person,doz.persnr_WR = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77203 , 730479 , 'magh {wr left outer join(ggr,magh.ggrkurz_wr = ggr.pk)}' , 'ONLINE_WR = 1');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(77204 , 730479 , '{wr left outer join(ma,ma.pk = magh.persnr_wr)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9136 , 331082 , 'person p {wr left outer join(bank b, b.PK = p.BLZ_wr)}' , 'p.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9137 , 331082 , '{wr left outer join(FIRMA  fb,b.FIRMANR_wr = fb.PK)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9138 , 331082 , '{wr left outer join(FIRMA f, f.PK = p.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9139 , 331082 , '{wr left outer join(UKZ  UKZTAET,UKZTAET.PK = p.TAETIGKEIT_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9140 , 331082 , '{wr left outer join(ABT a, a.PK =p.ABTKURZ_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9141 , 331082 , '{wr left outer join(UKZ UKZPOS, UKZPOS.PK = p.POSITION_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9142 , 331082 , '{wr left outer join(ma, ma.persnr_wr = p.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9143 , 331082 , '{wr left outer join(stl, stl.pk = ma.iststl_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9144 , 331115 , 'person p' , 'p.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9145 , 331123 , '(select ilb.datumvon_wr aa,case when ilb.datumbis_wr <= :einsatzplan then ilb.datumbis_wr else :einsatzplan end bb,' , '(pp = :persnr or pp = 0) and bb is not null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(30000 , 900003 , 'bng {wr left outer join(ber,ber.pk = bng.persnr_wr)}' , ' bng.ostnr_wr = :ostnr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(30001 , 900003 , '{wr left outer join(person,person.pk = ber.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(30002 , 900003 , '{wr left outer join(UKZ,UKZ.PK = BNG.BNGSTATUS_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40000 , 900004 , 'bng, (select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WeiterAnPe_WR = person.pk left outer join ukz on BNG.StelAbt_WR = ukz.pk where bng.WeiterAnPe_WR > 0' , ' bng.pk = PK.pk and PK.pk = :bngpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40001 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr2_WR = person.pk left outer join ukz on BNG.WLSteAbt2_WR = ukz.pk where bng.WLPersNr2_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40002 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr3_WR = person.pk left outer join ukz on BNG.WLSteAbt3_WR = ukz.pk where bng.WLPersNr3_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40003 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr4_WR = person.pk left outer join ukz on BNG.WLSteAbt4_WR = ukz.pk where bng.WLPersNr4_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40004 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr5_WR = person.pk left outer join ukz on BNG.WLSteAbt5_WR = ukz.pk where bng.WLPersNr5_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40005 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr6_WR = person.pk left outer join ukz on BNG.WLSteAbt6_WR = ukz.pk where bng.WLPersNr6_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40006 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr7_WR = person.pk left outer join ukz on BNG.WLSteAbt7_WR = ukz.pk where bng.WLPersNr7_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40007 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr8_WR = person.pk left outer join ukz on BNG.WLSteAbt8_WR = ukz.pk where bng.WLPersNr8_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40008 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr9_WR = person.pk left outer join ukz on BNG.WLSteAbt9_WR = ukz.pk where bng.WLPersNr9_WR > 0' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(40009 , 900004 , 'union all select bng.dbaccount,bng.dbcountry,bng.dbcontract,person.name_wr,person.vorname_wr,ukz.text_wr,bng.pk from bng left outer join person on bng.WLPersNr10_WR = person.pk left outer join ukz on BNG.WLSteAbt10_WR = ukz.pk where bng.WLPersNr10_WR > 0) PK' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20000 , 900002 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , ' onlineinte_wr =''J'' and ((QS_wr is null or ( QS_wr is not null and QSOK_wr = 1)) or (QS_wr =0 or ( QS_wr <> 0 and QSOK_wr = 1)))  :ukzpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20001 , 900002 , '{wr left outer join(firma,firma.pk = ost.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20002 , 900002 , '{wr left outer join(abt,abt.pk = ost.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20003 , 900002 , '{wr left outer join(stl,stl.pk = ost.stlkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14892 , 14887 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24892 , 911000 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14893 , 14887 , '{wr left outer join(person,person.pk = tn.persnr_wr)}' , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24893 , 911000 , '{wr left outer join(person,person.pk = tn.persnr_wr)}' , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14896 , 14887 , '{wr left outer join(firma,firma.pk = person.firmanr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24896 , 911000 , '{wr left outer join(firma,firma.pk = person.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14897 , 14887 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24897 , 911000 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15237 , 15200 , 'person p {wr left outer join(BANK b, b.PK = p.BLZ_wr)}' , 'p.pk = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15238 , 15200 , '{wr left outer join(FIRMA  fb, b.FIRMANR_wr = fb.PK)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15239 , 15200 , '{wr left outer join(FIRMA f, f.PK = p.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15240 , 15200 , '{wr left outer join(UKZ  UKZTAET,UKZTAET.PK = p.TAETIGKEIT_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15241 , 15200 , '{wr left outer join(ABT a, a.PK =p.ABTKURZ_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15242 , 15200 , '{wr left outer join(UKZ UKZPOS, UKZPOS.PK = p.POSITION_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15243 , 15200 , '{wr left outer join(ma, ma.persnr_wr = p.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15244 , 15200 , '{wr left outer join(stl, stl.pk = ma.iststl_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15245 , 15200 , '{wr left outer join(UTITEL, UTITEL.pk = p.titel_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15246 , 15200 , '{wr left outer join(UZUSWO, UZUSWO.pk = p.zusatzwort_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15247 , 15200 , '{wr left outer join(UVORWO, UVORWO.pk = p.vorsatzwor_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15248 , 15200 , '{wr left outer join(UKZ UKZSTAATSANG, UKZSTAATSANG.pk = p.staatsang_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15249 , 15200 , '{wr left outer join(WRSYS_MA_BETRIEBSZUGEH, WRSYS_MA_BETRIEBSZUGEH.mapk = ma.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15746 , 15745 , 'semtyp' , 'pk = :seminarpk');



insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16254 , 16246 , 'MASTLW {wr left outer join(MA,MA.PK = MASTLW.PERSNR_WR)}' , 'person.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16255 , 16246 , '{wr left outer join(STL,STL.PK = MASTLW.STLKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16256 , 16246 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16269 , 16261 , 'MAFKTW {wr left outer join(MA,MA.PK = MAFKTW.PERSNR_WR)}' , 'person.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16270 , 16261 , '{wr left outer join(FKT,FKT.PK = MAFKTW.FKTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16271 , 16261 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16298 , 16297 , 'MAQW {wr left outer join(MA,MA.PK = MAQW.PERSNR_WR)}' , 'person.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16299 , 16297 , '{wr left outer join(QUALI,QUALI.PK = MAQW.QUALIKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(16300 , 16297 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17290 , 16432 , 'buchtn {wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , 'tn.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17291 , 16432 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , '0<(select count(pk) from buele where buele.semternr_wr = buchtn.semternr_wr and buchtn.persnr_wr = buele.persnr_wr and buchtn.beurueck_wr = 0)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17300 , 17293 , 'buchtn {wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , 'buchtn.pk = :sempk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17301 , 17293 , '{wr left outer join(buele,buele.semternr_wr = buchtn.semternr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17302 , 17293 , '{wr left outer join(beuart,beuart.pk = buele.beuartkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17303 , 17293 , '{wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17515 , 17511 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , '(onlineinte_wr =''J'' or online_wr =''J'') and QS_wr= :benutzer and QSOK_wr = 0');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17531 , 17521 , 'ost {wr left outer join(abt,abt.pk = ost.abtkurz_wr)}' , 'ost.pk = :ostpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17532 , 17521 , '{wr left outer join(firma,firma.pk = ost.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17533 , 17521 , '{wr left outer join(ggr,ost.ggrkurz_wr = ggr.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17791 , 17784 , 'bng {wr left outer join(ber,ber.pk = bng.persnr_wr)}' , '((bng.weiteranpe_wr = :benutzer and bng.stelabt_wr = 0) or (bng.wlpersnr2_wr = :benutzer and bng.wlsteabt2_wr = 0 ) or (bng.wlpersnr3_wr = :benutzer and bng.wlsteabt3_wr = 0 ) or (bng.wlpersnr4_wr = :benutzer and bng.wlsteabt4_wr = 0 ) or (bng.wlpersnr5_wr = :benutzer and bng.wlsteabt5_wr = 0 ) or (bng.wlpersnr6_wr = :benutzer and bng.wlsteabt6_wr = 0 ) or (bng.wlpersnr7_wr = :benutzer and bng.wlsteabt7_wr = 0 ) or (bng.wlpersnr8_wr = :benutzer and bng.wlsteabt8_wr = 0 ) or (bng.wlpersnr9_wr = :benutzer and bng.wlsteabt9_wr = 0 ) or (bng.wlpersnr10_wr = :benutzer and bng.wlsteabt10_wr = 0) ) :bngbed');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17792 , 17784 , '{wr left outer join(person,person.pk = ber.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17793 , 17784 , '{wr left outer join(UKZ,UKZ.PK = BNG.BNGSTATUS_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17900 , 17784 , '{wr left outer join(ost,ost.PK = BNG.OSTNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17795 , 17794 , 'bng {wr left outer join(ber,ber.pk = bng.persnr_wr)}' , '((bng.weiteranpe_wr = :benutzer and bng.stelabt_wr <> 0) or (bng.wlpersnr2_wr = :benutzer and bng.wlsteabt2_wr <> 0 ) or (bng.wlpersnr3_wr =  :benutzer and bng.wlsteabt3_wr <> 0 ) or (bng.wlpersnr4_wr = :benutzer and bng.wlsteabt4_wr<> 0 ) or (bng.wlpersnr5_wr = :benutzer and bng.wlsteabt5_wr <> 0 ) or (bng.wlpersnr6_wr = :benutzer and bng.wlsteabt6_wr <> 0 ) or (bng.wlpersnr7_wr = :benutzer and bng.wlsteabt7_wr <> 0 ) or (bng.wlpersnr8_wr = :benutzer and bng.wlsteabt8_wr <> 0 ) or (bng.wlpersnr9_wr = :benutzer and bng.wlsteabt9_wr <> 0 ) or (bng.wlpersnr10_wr = :benutzer and bng.wlsteabt10_wr <> 0 )):bngbed');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17796 , 17794 , '{wr left outer join(person,person.pk = ber.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17797 , 17794 , '{wr left outer join(UKZ,UKZ.PK = BNG.BNGSTATUS_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17798 , 17794 , '{wr left outer join(ost,ost.PK = BNG.OSTNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(17805 , 17804 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , 'onlineinte_wr =''J'' and (QS_wr = :benutzer and QSOK_wr = 0)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18955 , 18954 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , 'buchtn.pk = :seminarpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18956 , 18954 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18957 , 18954 , '{wr left outer join(tn,tn.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18958 , 18954 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18959 , 18954 , '{wr left outer join(semtyp, semtyp.pk = buchtn.semtypnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18960 , 18949 , 'perkal {wr left outer join(person,perkal.persnr_wr = person.pk)}' , 'perkal.pk = :nokpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18961 , 18949 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18962 , 18949 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(18963 , 18949 , '{wr left outer join(ABWART,ABWART.pk = perkal.ABWARTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19107 , 19103 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , 'onlineinte_wr =''J'' and ((QS_wr is null or ( QS_wr is not null and QSOK_wr = 1)) or (QS_wr =0 or ( QS_wr <> 0 and QSOK_wr = 1)))  :ukzpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19220 , 19210 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , 'onlineinte_wr =''J'' and ((QS_wr is null or ( QS_wr is not null and QSOK_wr = 1)) or (QS_wr =0 or ( QS_wr <> 0 and QSOK_wr = 1)))  :ukzpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19116 , 19110 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , 'online_wr =''J'' and ((QS_wr is null or ( QS_wr is not null and QSOK_wr = 1)) or (QS_wr =0 or ( QS_wr <> 0 and QSOK_wr = 1)))  :ukzpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19520 , 19510 , 'ost {wr left outer join(ukz,ukz.pk = ost.ostzielgrp_wr)}' , 'online_wr =''J'' and ((QS_wr is null or ( QS_wr is not null and QSOK_wr = 1)) or (QS_wr =0 or ( QS_wr <> 0 and QSOK_wr = 1)))  :ukzpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19315 , 19311 , 'bng {wr left outer join(ber,ber.pk = bng.persnr_wr)}' , 'ber.persnr_wr = :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19316 , 19311 , '{wr left outer join(ost,ost.pk = bng.ostnr_wr)}' , 'bng.dbaccount = 999999997');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19340 , 19336 , 'doku {wr left outer join(wrblob,doku.wrblobpk_wr = wrblob.pk)}' , 'persnr_wr = :bewerber and online_wr =''J'' ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19341 , 19336 , '{wr left outer join(ukz,ukz.pk = doku.dokuart_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19369 , 19366 , 'ostpro {wr left outer join(quali,quali.pk = ostpro.qualikurz_wr)}' , 'ber.persnr_wr = :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19370 , 19366 , '{wr left outer join(berpro,berpro.qualikurz_wr = quali.pk)}' , 'ostpro.online_wr = ''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19371 , 19366 , '{wr left outer join(ber,ber.pk = berpro.persnr_wr)}' , 'ostnr_wr = :ostnr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19372 , 19366 , '{wr left outer join(quaaus,quaaus.pk = berpro.auskurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19383 , 19382 , 'VGG {wr left outer join(PERSON,PERSON.PK = VGG.PERSNR_WR)}' , 'VGG.PERSNR_WR = :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19384 , 19382 , '{wr left outer join(UUSER,UUSER.PK = VGG.BEAKURZ_WR)}' , 'vgg.ostnr_wr = :ostnr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19385 , 19382 , '{wr left outer join(UKZ,UKZ.PK = VGG.VGGART_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19441 , 19408 , 'LLF {wr left outer join(UKZ,UKZ.PK = LLF.LLFART_WR)}' , 'LLF.PERSNR_WR= :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19493 , 19478 , 'bng {wr left outer join(ber,ber.pk = bng.persnr_wr)}' , 'bng.pk = :bngpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19494 , 19478 , '{wr left outer join(person,person.pk = ber.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19495 , 19478 , '{wr left outer join(ost,bng.ostnr_wr = ost.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19496 , 19478 , '{wr left outer join(ukz ukza,ukza.pk = bng.bngstatus_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19497 , 19478 , '{wr left outer join(med,med.pk = bng.MediumNr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19498 , 19478 , '{wr left outer join(firma,firma.pk = med.firmaNr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19499 , 19478 , '{wr left outer join(anz,anz.pk = bng.AnzNr_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19501 , 19478 , '{wr left outer join(ma,ma.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19502 , 19478 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19503 , 19478 , '{wr left outer join(stl,stl.pk = ma.iststl_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19504 , 19478 , '{wr left outer join(ggr,ggr.pk = ma.ggrkurzist_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19505 , 19478 , '{wr left outer join(ukz u,u.pk = bng.mediumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19577 , 19573 , 'semtyp' , 'semtyp.onlineinte_wr =''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19588 , 19579 , 'semtyp' , 'semtyp.pk = :seminartyppk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19630 , 19622 , 'semtyp {wr left outer join(semter,semtyp.pk = semter.semtypnr_wr)}' , 'semter.online_wr=''J'' and semter.datumvon_wr >= {fn now()}');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19631 , 19622 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , '((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr is null) or  (schaltungv_wr is null and schaltungb_wr >= {fn now()} ) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()} ))');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19726 , 19725 , 'semtyp {wr left outer join(semter,semtyp.pk = semter.semtypnr_wr)}' , 'semtyp.pk = :semterpk and semter.online_wr=''J'' and semter.datumvon_wr >= {fn now()}');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19727 , 19725 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , '((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or (schaltungv_wr is null and schaltungb_wr is null) or (schaltungv_wr is null and schaltungb_wr >= {fn now()} ) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()} ))');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19788 , 19778 , 'semter {wr left outer join(firma,firma.pk = semter.verort_wr)}' , 'semter.pk = :semterpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19789 , 19778 , '{wr left outer join(semtyp,semter.semtypnr_wr = semtyp.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19795 , 19790 , 'semter' , 'semter.pk = :seminarpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20787 , 20589 , 'buchdo {wr left outer join(doz,doz.pk = buchdo.persnr_wr)}' , 'doz.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20788 , 20589 , '{wr left outer join(person,person.pk = doz.persnr_wr)}' , 'semter.datumvon_wr >=  {fn now()}');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20789 , 20589 , '{wr left outer join(semter,semter.pk = buchdo.semternr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20790 , 20589 , '{wr left outer join(semtyp,semtyp.pk = buchdo.semtypnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20825 , 20820 , 'person {wr left outer join(tn,tn.persnr_wr = person.pk)}' , 'semter.pk = :semterpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20826 , 20820 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , 'buchtn.status_wr <> 5 and buchtn.status_wr <> 4');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20827 , 20820 , '{wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20828 , 20820 , '{wr left outer join(firma,firma.pk = person.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(20829 , 20820 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(21230 , 21238 , 'mapro {wr left outer join(quali,quali.pk = mapro.qualikurz_wr)}' , 'mapro.ONLINE_WR =''J'' and persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(21231 , 21238 , '{wr left outer join(quaaus,mapro.auskurz_wr = quaaus.pk)}' , 'mapro.online_wr =''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(21232 , 21238 , '{wr left outer join(quaaus quaausma,mapro.auskurzma_wr = quaausma.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(21233 , 21238 , '{wr left outer join(quaart,quali.qualiart_wr = quaart.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(21270 , 21258 , '{wr left outer join(firma,firma.pk = btr.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(22102 , 22096 , 'buchtn {wr left outer join(semter,semter.pk = buchtn.semternr_wr)}' , 'buchtn.pk = :algkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(22103 , 22096 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(22104 , 22097 , 'buchdo {wr left outer join(semter,semter.pk = buchdo.semternr_wr)}' , 'buchdo.pk = :algkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(731001 , 730460 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , 'person.aktpassiv_wr in( ''1'',''3'')');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(22938 , 22931 , 'ilb {wr left outer join(abt,abt.pk = ilb.abtkurz_wr)}' , 'datumvon_wr :datumvon and datumbis_wr :datumbis');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23150 , 22771 , 'union select ukz.text_wr x,perkal.datumvon_wr,perkal.datumbis_wr, person.pk' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23151 , 22771 , 'from perkal {wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23152 , 22771 , '{wr left outer join(person,person.pk = perkal.persnr_wr)} where 1 = 1' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732100 , 730462 , 'perkal  left outer join ukz on ukz.pk = perkal.grund_wr ' , 'perkal.persnr_wr = :personenpk :zusatz');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732101 , 730462 , 'left outer join ABWART on ABWART.PK = PERKAL.abwartkurz_wr ' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732102 , 730462 , 'left outer join webpar on ABWART.PK = webpar.dbaccount ' , ' ((ukz.pk > 0 and webpar.pk =0) or (abwart.pk > 0 and webpar.key_wr =''KalenderAbwart2''))');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732103 , 730462 , 'left outer join webpar w on ABWART.PK = w.dbaccount and w.key_wr in (''11'',''12'')' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732120 , 730505 , 'perkal  left outer join ukz on ukz.pk = perkal.grund_wr ' , 'perkal.persnr_wr = :personenpk :zusatz');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732121 , 730505 , 'left outer join ABWART on ABWART.PK = PERKAL.abwartkurz_wr ' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732122 , 730505 , 'left outer join webpar on ABWART.PK = webpar.dbaccount ' , ' ((ukz.pk > 0 and webpar.pk =0) or (abwart.pk > 0 and webpar.key_wr =''KalenderAbwart3''))');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(732123 , 730505 , 'left outer join webpar w on ABWART.PK = w.dbaccount and w.key_wr in (''11'',''12'')' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(222 , 206 , 'semtyp {wr left outer join(ukz,ukz.pk = semtyp.typkatego_wr)}' , 'semtyp.pk > 0 :suche');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(223 , 206 , '{wr left outer join(ukz ukzazant,ukzazant.pk = semtyp.azant_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(224 , 206 , '{wr left outer join(ZIELTY,ZIELTY.semtypnr_wr = semtyp.pk )}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23154 , 22771 , 'union select ukz.text_wr x,agrkal.datumvon_wr,agrkal.datumvon_wr,person.pk' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23157 , 22771 , '{wr left outer join(UKZ,UKZ.PK = agrkal.GRUND_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23171 , 22931 , '{wr left outer join(firma,firma.pk = p1.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23636 , 23624 , '(select ilb.datumvon_wr aa,case when ilb.datumbis_wr <= :einsatzplan then ilb.datumbis_wr else :einsatzplan end bb,' , '(pp = :persnr or pp = 0) and bb is not null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23638 , 23624 , '''&nbsp;'' cc,person.pk pp  from ilb {wr left outer join(LB,LB.PK = ILB.LBKURZ_wr)}' , ':biswann');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23643 , 23624 , '{wr left outer join(abt,abt.pk = ilb.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23644 , 23624 , '{wr left outer join(btr,btr.pk = ilb.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23645 , 23624 , '{wr left outer join(firma,firma.pk = btr.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23646 , 23624 , ' where ilb.datumvon_wr is not null and ilb.datumvon_wr <= :einsatzplan' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23647 , 23624 , ' union select perkal.datumvon_wr aa,perkal.datumbis_wr bb,case when abwart.pk > 0 then abwart.bez_wr else ukz.text_wr END  {wr +()} ''\n'' {wr +()} perkal.bez_wr cc,person.pk pp' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23648 , 23624 , ' from person {wr left outer join(perkal,PERSON.PK = PERKAL.PERSNR_wr)} {wr left outer join(ABWART,ABWART.pk = perkal.abwartkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23649 , 23624 , '{wr left outer join(UKZ,UKZ.PK = PERKAL.GRUND_wr)} where 1=1 :zusatz' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(23650 , 23624 , 'union select algkal.datumvon_wr aa,algkal.datumbis_wr bb,ukz.text_wr {wr +()} ''\n'' {wr +()} algkal.bez_wr cc,0 pp' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(729736 , 331198 , ' from algkal {wr left outer join(UKZ,UKZ.PK = ALGKAL.GRUND_wr)} where 1 = 1) a' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730104 , 730094 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730142 , 23624 , ' from algkal {wr left outer join(UKZ,UKZ.PK = ALGKAL.GRUND_wr)} where 1=1 union' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730407 , 730404 , 'webgruppen' , 'persnr_wr = 0');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730431 , 730425 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , 'person.pk = 0');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730432 , 730425 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730439 , 730425 , '{wr left outer join(webgruppen,webgruppen.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730458 , 730457 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , 'person.pk = 0');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730459 , 730457 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730460 , 730457 , '{wr left outer join(webgruppen,webgruppen.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9147 , 331123 , '''&nbsp;'' cc,person.pk pp  from ilb {wr left outer join(LB,LB.PK = ILB.LBKURZ_wr)}' , ':biswann');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9155 , 331141 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9204 , 331198 , '{wr left outer join(btr,btr.pk = ilb.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9205 , 331198 , '{wr left outer join(firma,firma.pk = btr.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9206 , 331198 , ' where ilb.datumvon_wr is not null and ilb.datumbis_wr <= (select case when count(*) =0 then ''01.01.2050'' else max(value_wr) end from webpar where key_wr =''EinsatzplanBisDatum'')' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9207 , 331198 , 'union select perkal.datumvon_wr aa,perkal.datumbis_wr bb,ukz.text_wr {wr +()} ''\n'' {wr +()} perkal.bez_wr cc,person.pk pp' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9208 , 331198 , ' from person {wr left outer join(perkal,PERSON.PK = PERKAL.PERSNR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9209 , 331198 , '{wr left outer join(UKZ,UKZ.PK = PERKAL.GRUND_wr)} where 1 = 1' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9210 , 331198 , 'union select algkal.datumvon_wr aa,algkal.datumbis_wr bb,ukz.text_wr {wr +()} ''\n'' {wr +()} algkal.bez_wr cc,0 pp' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10268 , 10262 , 'vgg {wr left outer join(ukz,ukz.pk = vgg.vggart_wr)}' , 'vgg.datum_wr <= {fn now()} and vgg.erledigt_wr = 0 and vgg.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10269 , 10262 , null , 'vgg.beakurz_wr =0 and vgg.rollekurz_wr =0 and ukz.indikator_wr =''VGGART''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10281 , 10271 , 'vgg' , 'vgg.pk = :vggpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10288 , 10285 , 'llf {wr left outer join(ukz,ukz.pk = llf.llfart_wr)}' , 'llf.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10295 , 10289 , 'vgg {wr left outer join(ukz,ukz.pk = vgg.vggart_wr)}' , 'vgg.datum_wr <= {fn now()} and vgg.erledigt_wr = 0 and vgg.beakurz_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10311 , 10298 , 'vgg' , 'vgg.pk = :vggpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10415 , 10314 , 'mapro {wr left outer join(quali,quali.pk = mapro.qualikurz_wr)}' , 'mapro.ONLINE_WR =''J'' and persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10416 , 10314 , '{wr left outer join(quaaus,mapro.auskurz_wr = quaaus.pk)}' , 'mapro.online_wr =''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10417 , 10314 , '{wr left outer join(quaaus quaausma,mapro.auskurzma_wr = quaausma.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10418 , 10314 , '{wr left outer join(quaart,quali.qualiart_wr = quaart.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10321 , 10320 , 'mafkt {wr left outer join(fkt,fkt.pk = mafkt.fktkurz_wr)}' , 'persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10331 , 10325 , 'buchtn {wr left outer join(semtyp, semtyp.pk = buchtn.semtypnr_wr)}' , 'tn.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10332 , 10325 , '{wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , 'buchtn.status_wr in (:tnb_filter_status)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10340 , 10339 , 'STLMA {wr left outer join(MA,MA.PK = STLMA.PERSNR_wr)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10341 , 10339 , '{wr left outer join(BTR,BTR.PK = STLMA.FIRMANR_wr)}' , ':nurAktuelle');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10342 , 10339 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10343 , 10339 , '{wr left outer join(person,person.PK = ma.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10348 , 10339 , '{wr left outer join(abt,abt.PK = stl.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10345 , 10339 , '{wr left outer join(stl,stl.PK = stlma.stlkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10346 , 10339 , '{wr left outer join(ggr sol,sol.PK = stlma.ggrkurzbis_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10347 , 10339 , '{wr left outer join(ggr ist,ist.PK = stl.ggrkurzist_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10353 , 10348 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_wr)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10354 , 10348 , '{wr left outer join(mp,mp.PK =mnhma.MPKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10355 , 10348 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10356 , 10348 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10359 , 10354 , 'MAPEG {wr left outer join(MA a,a.PK = MAPEG.PERSNR_wr)}' , 'a.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10360 , 10354 , '{wr left outer join(ma b,b.pk = mapeg.persnrpe_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10361 , 10354 , '{wr left outer join(person,person.pk = b.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10369 , 10362 , 'MAZIEL {wr left outer join(MA,MA.PK = MAZIEL.PERSNR_wr)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10370 , 10362 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10371 , 10362 , '{wr left outer join(PERSON PERSVM,PERSVM.PK = MAZIEL.VERMIT_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10376 , 10372 , 'MATERM {wr left outer join(MA,MA.PK = MATERM.PERSNR_wr)}' , 'ma.persnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13298 , 13295 , 'ma {wr left outer join(person,person.pk = ma.persnr_wr)}' , 'person.pk = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13299 , 13295 , '{wr left outer join(UKZ UKZPOS,UKZPOS.PK = PERSON.POSITION_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24001 , 24000 , 'ma {wr left outer join(person p1,p1.PK = MA.PERSNR_WR )}' , 'p2.pk is not null and p2.pk > 0 and ma.pk > 0  :qualibed');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24002 , 24000 , '{wr left outer join(person p2,p2.PK = p1.VORGESETZT_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24003 , 24000 , '{wr left outer join(abt,abt.pk = p1.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24004 , 24000 , '{wr left outer join(firma f1,f1.PK = p2.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24005 , 24000 , '{wr left outer join(arbort,arbort.PK = ma.arbortnr_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24006 , 24000 , '{wr left outer join(firma f2,f2.PK = arbort.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13301 , 13300 , 'mabeu left outer join person on person.pk = mabeu.persnr_wr' , 'mabeu.faellig_wr <= {fn now()} and mabeu.auspraegun_wr =''M'' and person.aktpassiv_wr in( ''1'',''3'') and Erledigt_WR is null and online_wr = ''J'' and :mitarbeiter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13302 , 13300 , 'left outer join person beurteiler on beurteiler.pk = mabeu.Beurteil1_WR' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14301 , 14910 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.faellig_wr <= {fn now()} and mabeu.auspraegun_wr =''M'' and person.aktpassiv_wr in( ''1'',''3'') and Erledigt_WR is null and online_wr = ''J'' and :mitarbeiter');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13374 , 13370 , 'mabeuq {wr left outer join(mabeu,mabeu.pk = mabeuq.lfdbeunr_wr)}' , 'mabeuq.persnr_wr = mabeu.persnr_wr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13375 , 13370 , '{wr left outer join(QUALI,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , 'mabeu.pk = :mabeupk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13376 , 13370 , '{wr left outer join(QUAAUS,QUAAUS.PK = MABEUQ.AUSKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13404 , 13403 , 'MABEUQ {wr left outer join(PERSON,PERSON.PK = MABEUQ.PERSNR_WR)}' , 'mabeuq.pk = :upk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13405 , 13403 , '{wr left outer join(QUALI,QUALI.PK = MABEUQ.QUALIKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13406 , 13403 , '{wr left outer join(MABEU,MABEU.PK = MABEUQ.LFDBEUNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13467 , 13464 , 'mabeu {wr left outer join(PERSON,PERSON.PK = MABEU.PERSNR_WR)}' , 'mabeu.pk = :mpk');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(356 , 203, 'mabeu {wr left outer join(PERSON,PERSON.PK = MABEU.PERSNR_WR)}' , 'mabeu.pk = :mpk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(200 , 200 , 'mabeu {wr left outer join(PERSON,PERSON.PK = MABEU.PERSNR_WR)}' , 'mabeu.pk = :mpk');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(250 , 202 , 'mabeu {wr left outer join(PERSON,PERSON.PK = MABEU.PERSNR_WR)}' , 'mabeu.auspraegun_wr =''F'' and Erledigt_WR is null and online_wr = ''J''  and mabeu.persnr_wr = :benutzer and mabeu.beubis_wr +1 < {fn now()} ');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13963 , 13958 , 'person {wr left outer join(perkal,person.pk = perkal.persnr_wr)}' , 'perkal.pk = :perkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13964 , 13958 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(13966 , 13965 , 'ukz {wr left outer join(algkal,ukz.pk = algkal.grund_wr)}' , 'algkal.pk = :perkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14038 , 14036 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''M'' and person.aktpassiv_wr in( ''1'',''3'') and online_wr = ''J''  and ((beurteil1_wr = :benutzer and beurteil1d_wr is not null) or (beurteil2_wr = :benutzer  and beurteil2d_wr is not null) or (beurteil3_wr = :benutzer  and beurteil3d_wr is not null)) and :mitarbeiter');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14938 , 14900 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''M'' and person.aktpassiv_wr in( ''1'',''3'') and online_wr = ''J''  and ((beurteil1_wr = :benutzer and beurteil1d_wr is not null) or (beurteil2_wr = :benutzer  and beurteil2d_wr is not null) or (beurteil3_wr = :benutzer  and beurteil3d_wr is not null)) and :mitarbeiter');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24938 , 24900 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''F'' and person.aktpassiv_wr in( ''1'',''3'') and online_wr = ''J''  and faellig_wr <= {fn now()} and :mitarbeiter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24939 , 24900 , '{wr left outer join(mabeuf,mabeuf.mabeuPK_wr = MAbeu.pk)}' , 'mabeu.beubis_wr+1 > {fn now()} and mabeuf.beurteilta_wr is null and mabeuf.personpk_wr = :benutzer');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24960 , 24950 , 'mabeu {wr left outer join(person,person.pk = mabeu.persnr_wr)}' , 'mabeu.auspraegun_wr =''F'' and person.aktpassiv_wr in( ''1'',''3'') and online_wr = ''J''  and :mitarbeiter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24961 , 24950 , '{wr left outer join(mabeuf,mabeuf.mabeuPK_wr = MAbeu.pk)}' , '(mabeu.beubis_wr+1 < {fn now()} or mabeuf.beurteilta_wr is not null) and mabeuf.personpk_wr = :benutzer');


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14045 , 10372 , '{wr left outer join(person,person.PK = MA.PERSNR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14066 , 14058 , 'PERKAL {wr left outer join(PERSON,PERSON.PK = PERKAL.PERSNR_WR)}' , '(perkal.dbaccount = 999999999 or perkal.dbaccount = 999999998 or perkal.dbaccount = 999999996) and PERKAL.PERSNR_WR= :benutzer');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14067 , 14058 , '{wr left outer join(UKZ,UKZ.PK = PERKAL.GRUND_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14068 , 14058 , '{wr left outer join(ukonto,ukonto.pk = perkal.ukontovon_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14069 , 14058 , '{wr left outer join(ABWART,ABWART.pk = perkal.AbwArtKurz_WR)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14066 , 16058 , 'PERKAL {wr left outer join(PERSON,PERSON.PK = PERKAL.PERSNR_WR)}' , '(perkal.dbaccount = 999999999 or perkal.dbaccount = 999999998 or perkal.dbaccount = 999999996) and PERKAL.PERSNR_WR= :benutzer');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14067 , 16058 , '{wr left outer join(UKZ,UKZ.PK = PERKAL.GRUND_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14068 , 16058 , '{wr left outer join(ukonto,ukonto.pk = perkal.ukontovon_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14069 , 16058 , '{wr left outer join(ABWART,ABWART.pk = perkal.AbwArtKurz_WR)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14221 , 10372 , '{wr left outer join(firma,firma.PK = materm.ort_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14222 , 10372 , '{wr left outer join(raum,raum.PK = materm.raumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14226 , 10372 , '{wr left outer join(ukz,ukz.PK = materm.anlass_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14362 , 14361 , 'STLMA {wr left outer join(MA,MA.PK = STLMA.PERSNR_WR)}' , ':aktpassiv and person.vorgesetzt_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14363 , 14361 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , 'stlma.von_wr <= {fn now()} and (stlma.bis_wr is null or stlma.bis_wr >= {fn now()} )');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14364 , 14361 , '{wr left outer join(BTR,BTR.PK = STLMA.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14365 , 14361 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14366 , 14361 , '{wr left outer join(STL,STL.PK = STLMA.STLKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14367 , 14361 , '{wr left outer join(ABT STLABT,STLABT.PK = STL.ABTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19508 , 14361 , '{wr left outer join(ggr,ggr.pk = ma.ggrkurzist_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19509 , 14361 , '{wr left outer join(ggr g1,g1.pk = stl.ggrkurzist_WR)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14683 , 14431 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , 'person.vorgesetzt_wr = :benutzer and person.aktpassiv_wr in( ''1'',''3'')');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14684 , 14431 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , ':mehr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14685 , 14431 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14686 , 14431 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14687 , 14431 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14688 , 14431 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14689 , 14431 , '{wr left outer join(mp,mp.PK = mnhma.MPKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14690 , 14431 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14691 , 14431 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14692 , 14431 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4683 , 10002 , 'ma {wr left outer join(MNHMA,MA.PK = MNHMA.PERSNR_WR)}' , ':mehr');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4684 , 10002 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4685 , 10002 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4686 , 10002 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4687 , 10002 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4688 , 10002 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4689 , 10002 , '{wr left outer join(mp,mp.PK = mnhma.MPKURZ_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4690 , 10002 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4691 , 10002 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(4692 , 10002 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14698 , 14697 , 'perkal {wr left outer join(person,perkal.persnr_wr = person.pk)}' , 'perkal.dbaccount = 999999999');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14699 , 14697 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , 'person.vorgesetzt_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14700 , 14697 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14724 , 14717 , 'mapeg {wr left outer join(ma a,a.pk = mapeg.persnr_wr)}' , 'mapeg.datumstatt_wr is null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14725 , 14717 , '{wr left outer join(person d,d.pk = a.persnr_wr)}' , ' d.aktpassiv_wr in( ''1'',''3'') and :mitarbeiter');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14726 , 14717 , '{wr left outer join(abt,abt.pk = d.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14768 , 14717 , '{wr left outer join(ma b,b.pk = mapeg.PERSNRPE_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14769 , 14717 , '{wr left outer join(person c,c.pk = b.persnr_wr)}' , 'c.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24101 , 24100 , 'mapeg {wr left outer join(ma a,a.pk = mapeg.persnr_wr)}' , 'mapeg.datumstatt_wr is not null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24102 , 24100 , '{wr left outer join(person d,d.pk = a.persnr_wr)}' , ':aktpassiv and :mitarbeiter');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24103 , 24100 , '{wr left outer join(abt,abt.pk = d.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24104 , 24100 , '{wr left outer join(ma b,b.pk = mapeg.PERSNRPE_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24105 , 24100, '{wr left outer join(person c,c.pk = b.persnr_wr)}' , 'c.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14771 , 14770 , 'mapeg {wr left outer join(ma,ma.pk = mapeg.PersNrPe_WR)}' , 'mapeg.pk = :mapegpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(800101 , 800100 , 'mapeg' , 'mapeg.pk = :mapegpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(800102 , 800100 , '{wr left outer join(ma, ma.pk = mapeg.persnrpe_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(800103 , 800100 , '{wr left outer join(person,person.pk = ma.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(800104 , 800100 , '{wr left outer join(utitel,utitel.pk = person.titel_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14782 , 14781 , 'maziel {wr left outer join(ma,ma.pk = maziel.persnr_wr)}' , 'maziel.erreichtam_wr is null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14783 , 14781 , '{wr left outer join(person,person.pk = ma.persnr_wr)}' , ':aktpassiv and vermit_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14784 , 14781 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14865 , 14864 , 'maziel {wr left outer join(ma,ma.pk = maziel.persnr_wr)}' , 'maziel.pk = :mazielpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14866 , 14864 , '{wr left outer join(person,ma.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14889 , 10325 , '{wr left outer join(semter,buchtn.semternr_wr = semter.pk)}' , '{fn ifnull(buchtn.bestaet_wr, ''0'')} in (:tnb_filter_bestaetigt)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14890 , 14887 , 'buchtn {wr left outer join(semtyp,buchtn.semtypnr_wr = semtyp.pk)}' , 'person.vorgesetzt_wr = :benutzer :filter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24890 , 911000 , 'buchtn {wr left outer join(semtyp,buchtn.semtypnr_wr = semtyp.pk)}' , ':filter :uebma');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(14891 , 14887 , '{wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(24891 , 911000 , '{wr left outer join(tn,tn.pk = buchtn.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9156 , 331147 , 'ilb {wr left outer join(LB,LB.PK = ilb.LBKURZ_wr)}' , 'ilb.ausnr_wr = :ausnr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9157 , 331147 , '{wr left outer join(ABT,ABT.PK = ilb.ABTKURZ_wr)}' , 'ilb.datumbis_wr <= (select case when (select value_wr from webpar where key_wr =''EinsatzplanBisDatum'') is null then ''01.01.2050'' else (select value_wr from webpar where key_wr =''EinsatzplanBisDatum'') end from aab where pk = 0)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9158 , 331147 , '{wr left outer join(BTR, BTR.PK = ilb.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9159 , 331147 , '{wr left outer join(FIRMA, FIRMA.PK = BTR.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9162 , 331157 , 'person p' , 'p.pk = :perspk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9163 , 331163 , 'ilb {wr left outer join(LB,LB.PK = ilb.LBKURZ_wr)}' , 'PERSON.pk = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9170 , 331182 , '{wr left outer join(agr,agr.pk=gilb.agrkurz_wr)}' , 'gilb.datumbis_wr <= (select case when (select value_wr from webpar where key_wr =''EinsatzplanBisDatum'') is null then ''01.01.2050'' else (select value_wr from webpar where key_wr =''EinsatzplanBisDatum'') end from aab where pk = 0)');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9171 , 331182 , '{wr left outer join(lb,lb.pk=gilb.lbkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9172 , 331182 , '{wr left outer join(btr,btr.pk=gilb.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9173 , 331182 , '{wr left outer join(firma,firma.pk=btr.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9174 , 331182 , '{wr left outer join(abt,abt.pk=gilb.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9175 , 331198 , '(select ilb.datumvon_wr aa,ilb.datumbis_wr bb,' , '(pp = :perspk or pp = 0) and bb is not null');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9177 , 331198 , '''&nbsp;'' cc,person.pk pp  from ilb {wr left outer join(LB,LB.PK = ILB.LBKURZ_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(50000 , 730476 , 'agr' , '(agr.persnr_wr = :benutzer or agr.persnrver_wr = :benutzer ) and datumbis_wr >= {fn now()}');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9181 , 331198 , '{wr left outer join(abt,abt.pk = ilb.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9182 , 331208 , 'ilb {wr left outer join(LB,LB.PK = ilb.LBKURZ_wr)}' , 'PERSON.pk = :perspk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9185 , 331214 , 'algkal {wr left outer join(UKZ,UKZ.PK = ALGKAL.GRUND_wr)}' , 'algkal.pk = :algkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9186 , 331219 , 'ilb {wr left outer join(LB,LB.PK = ilb.LBKURZ_wr)}' , 'ilb.pk = :algkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9187 , 331219 , '{wr left outer join(ABT,ABT.PK = ilb.ABTKURZ_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9189 , 331219 , '{wr left outer join(BTR,BTR.PK = ilb.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9190 , 331219 , '{wr left outer join(FIRMA,FIRMA.PK = BTR.FIRMANR_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9192 , 331231 , '{wr left outer join(UKZ,UKZ.PK = agrkal.GRUND_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9193 , 331237 , 'PERKAL {wr left outer join(PERSON,PERSON.PK = PERKAL.PERSNR_wr)}' , 'perkal.pk = :algkalpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9194 , 331237 , '{wr left outer join(UKZ,UKZ.PK = PERKAL.GRUND_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9195 , 331123 , '{wr left outer join(abt,abt.pk = ilb.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9196 , 331123 , '{wr left outer join(btr,btr.pk = ilb.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9197 , 331123 , '{wr left outer join(firma,firma.pk = btr.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(9198 , 331123 , ' where ilb.datumvon_wr is not null and ilb.datumvon_wr <= :einsatzplan' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10101 , 10100 , 'perzb {wr left outer join(person,person.pk = perzb.persnr_wr)}' , 'perzb.zbpersnr_wr = :benutzer');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10102 , 10100 , '{wr left outer join(perkal,perkal.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10103 , 10100 , '{wr left outer join(ukz u1,u1.pk = perkal.grund_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10104 , 10100 , '{wr left outer join(ABWART,ABWART.pk = perkal.abwartkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(10105 , 10100 , '{wr left outer join(pkalzb,perkal.pk = pkalzb.perkalpk_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19633 , 19622 , '{wr left outer join(doz,doz.PK = semter.Betreuer_WR)}' , 'stornostat_wr =''N'' ');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19634 , 19622 , '{wr left outer join(person,person.PK = doz.persnr_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19792 , 19778 , '{wr left outer join(raum,raum.pk =semter.raumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19635 , 19622 , '{wr left outer join(raum,raum.pk = semter.raumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19731 , 19725 , '{wr left outer join(raum,raum.PK = semter.raumnr_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15000 , 900001 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15001 , 900001 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , ':mehr');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15001 , 900001 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15002 , 900001 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15003 , 900001 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15004 , 900001 , '{wr left outer join(mp,mp.PK = mnhma.MPKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15005 , 900001 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331302 , 331300 , 'mafkt {wr left outer join(fkt,fkt.pk = mafkt.fktkurz_wr)}' , 'persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331351 , 331350 , 'llf {wr left outer join(ukz,ukz.pk = llf.llfart_wr)}' , 'llf.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331401 , 331400 , 'magh' , 'ONLINE_WR = 1');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331402 , 331400 , '{wr left outer join(ma,ma.pk = magh.persnr_wr)}' , 'ma.persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331451 , 331450 , 'mapro {wr left outer join(quali,quali.pk = mapro.qualikurz_wr)}' , 'mapro.ONLINE_WR =''J'' and persnr_wr = :personenpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331452 , 331450 , '{wr left outer join(quaaus,mapro.auskurz_wr = quaaus.pk)}' , 'mapro.online_wr =''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331453 , 331450 , '{wr left outer join(quaart,QUALI.QUALIART_WR = quaart.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(331454 , 331450 , '{wr left outer join(quaaus quaausma,mapro.auskurzma_wr = quaausma.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19677 , 19673 , 'semtyp' , 'semtyp.online_wr =''J''');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19678 , 19673 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6000 , 900005 , 'person {wr left outer join(firma,firma.pk = person.firmanr_wr)}' , 'buchtn.pk = :seminarpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6001 , 900005 , '{wr left outer join(abt,abt.pk = person.abtkurz_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6002 , 900005 , '{wr left outer join(tn,tn.persnr_wr = person.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6003 , 900005 , '{wr left outer join(buchtn,buchtn.persnr_wr = tn.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6004 , 900005 , '{wr left outer join(semtyp,semtyp.pk = buchtn.semtypnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730621 , 730620 , 'STLMA left outer join MA on MA.PK = STLMA.PERSNR_wr' , 'ma.persnr_wr = :bewerber');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730622 , 730620 , 'left outer join person on person.PK = ma.persnr_wr' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730623 , 730620 , 'left outer join abt on abt.PK = person.abtkurz_wr' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730624 , 730620 , 'left outer join BTR on BTR.PK = STLMA.FIRMANR_wr' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(730625 , 730620 , 'left outer join FIRMA on FIRMA.PK = BTR.FIRMANR_wr' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(100 , 800004 , 'mnhma' , 'mnhma.pk = :nokpk');

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(102 , 800004 , '{wr left outer join(ma,mnhma.persnr_wr = ma.pk)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(104 , 800004 , '{wr left outer join(person,person.pk = ma.persnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(106 , 800004 , '{wr left outer join(mnh,mnhma.mnhkurz_wr = mnh.pk)}' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15683 , 14432 , 'MNHMA {wr left outer join(MA,MA.PK = MNHMA.PERSNR_WR)}' , ':wer and person.aktpassiv_wr in( ''1'',''3'')');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15684 , 14432 , '{wr left outer join(MNH,MNH.PK = MNHMA.MNHKURZ_WR)}' , ':mehr');

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15685 , 14432 , '{wr left outer join(PERSON,PERSON.PK = MA.PERSNR_WR)}' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15686 , 14432 , '{wr left outer join(btr,btr.pk = mnhma.firmanr_wr)}' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15687 , 14432 , '{wr left outer join(FIRMA,FIRMA.PK = person.FIRMANR_WR)}' , null);

insert into WebWSQ (PK,WebAbPK_wr,FromSQL_wr,WhereSQL_wr ) values(15688 , 14432 , '{wr left outer join(ABT,ABT.PK = PERSON.ABTKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15689 , 14432 , '{wr left outer join(mp,mp.PK =mnhma.MPKURZ_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15690 , 14432 , '{wr left outer join(mapeg,mapeg.PK = mnhma.MAPEDATUM_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15691 , 14432 , '{wr left outer join(ukz,ukz.PK = mnhma.MnhStatus_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(15692 , 14432 , '{wr left outer join(ukz ukz2,ukz2.PK = mnhma.typkatego_wr)}' , null);


insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(300 , 900500 , 'PERSON left outer join ma on person.PK = ma.persnr_wr' , 'mapro.ONLINE_WR =''J'' and quali.ONLINE_WR =''J'' :uebma :filter');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(301 , 900500 , 'left outer join ABT on abt.PK = person.abtkurz_wr' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(302 , 900500 , 'left outer join MAPRO on mapro.PERSNR_WR = person.pk' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(303 , 900500 , 'left outer join QUALI on quali.PK = mapro.QUALIKURZ_WR' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(304 , 900500 , 'left outer join QUAAUS on quaaus.PK = mapro.AUSKURZ_WR and quaaus.ONLINE_WR =''J'' ' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(305 , 900500 , 'left outer join QUAART on QUAART.PK = quali.QUALIART_WR' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(306 , 900500 , 'left outer join FIRMA on firma.PK = mapro.FirmaNr_WR' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19681 , 19623 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , 'stornostat_wr =''N'' ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19680 , 19623 , 'semtyp {wr left outer join(semter,semtyp.pk = semter.semtypnr_wr)}' , 'semter.ONLINEINTE_WR =''J'' and semter.datumvon_wr >= {fn now()}');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19682 , 19623 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , '((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr is null) or  (schaltungv_wr is null and schaltungb_wr >= {fn now()} ) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()} ))');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19683 , 19623 , '{wr left outer join(doz,doz.PK = semter.Betreuer_WR)}' , 'stornostat_wr =''N'' ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19684 , 19623 , '{wr left outer join(person,person.PK = doz.persnr_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19685 , 19623 , '{wr left outer join(raum,raum.pk = semter.raumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19691 , 19624 , '{wr left outer join(UKZ UKZAZANT,UKZAZANT.PK = SEMTYP.AZANT_WR)}' , 'stornostat_wr =''N'' ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19690 , 19624 , 'semtyp {wr left outer join(semter,semtyp.pk = semter.semtypnr_wr)}' , 'semter.ONLINEINTE_WR =''J'' and semter.datumvon_wr >= {fn now()}');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19692 , 19624 , '{wr left outer join(firma,firma.pk = semter.verort_wr)}' , '((schaltungv_wr <= {fn now()} and schaltungb_wr is null) or(schaltungv_wr is null and schaltungb_wr is null) or  (schaltungv_wr is null and schaltungb_wr >= {fn now()} ) or (schaltungv_wr <= {fn now()} and schaltungb_wr >= {fn now()} ))');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19693 , 19624 , '{wr left outer join(doz,doz.PK = semter.Betreuer_WR)}' , 'stornostat_wr =''N'' ');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19694 , 19624 , '{wr left outer join(person,person.PK = doz.persnr_WR)}' , 'semtyp.pk= :pk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(19695 , 19624 , '{wr left outer join(raum,raum.pk = semter.raumnr_wr)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6600 , 900700 , 'person {wr left outer join(perkal,perkal.persnr_wr = person.pk)}' , ':personenpk = person.pk');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6601 , 900700 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , ':perkalSQL');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6604 , 900700 , '{wr left outer join(ukonto,ukonto.pk = perkal.ukontovon_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6605 , 900700 , '{wr left outer join(ABWART,ABWART.pk = perkal.AbwArtKurz_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6606 , 900700 , '{wr left outer join(person ver,ver.pk = perkal.Vertreter_WR)}' , null);

insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6600 , 10000 , 'person {wr left outer join(perkal,perkal.persnr_wr = person.pk)}' , ':perkalSQL');
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6601 , 10000 , '{wr left outer join(ukz,ukz.pk = perkal.grund_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6604 , 10000 , '{wr left outer join(ukonto,ukonto.pk = perkal.ukontovon_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6605 , 10000 , '{wr left outer join(ABWART,ABWART.pk = perkal.AbwArtKurz_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6606 , 10000 , '{wr left outer join(person ver,ver.pk = perkal.Vertreter_WR)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6607 , 10000 , '{wr left outer join(abt, abt.pk = person.abtkurz_wr)}' , null);
insert into WEBWSQ (PK,WEBABPK_WR,FROMSQL_WR,WHERESQL_WR ) values(6608 , 10000 , '{wr left outer join(utitel,utitel.pk = person.titel_wr )}' , null);

/*WR:IGNOREERRORINSTATEMENT*/
alter table webEmail add datum_wr {wr datetime()} NULL;

delete from webfed where PK = 19222 and webabpk_wr = 19210;
delete from webfed where PK = 19223 and webabpk_wr = 19210;
delete from webfed where PK = 19224 and webabpk_wr = 19210;
delete from Webtext where webtext.webfedpk_wr = 19222;
delete from Webtext where webtext.webfedpk_wr = 19223;

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19223 , 19210 , null , '''Details''' , 'Info' , 1 , 0 , 70 , null);

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19224 , 19210 , null , '''Bewerben''' , 'Bewerben' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19225 , 19210 , null , '''Dokument''' , 'Dokumente' , 1 , 0 , 70 , null);
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19226 , 19210 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);

delete from webfed where PK = 19106 and webabpk_wr = 19103;
delete from Webtext where webtext.webfedpk_wr = 19106;
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR ) values(19107 , 19103 , 'ost' , 'pk' , 'pk' , 0 , 1 , null , null);


delete from webtext where seite='passowrdforgottformula' and id = '12' and sprache = 1

delete from webtext where seite = 'bewerben' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerben','S0',1,0,'Frau');
delete from webtext where seite = 'bewerbenz' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerbenz','S0',1,0,'Frau');
delete from webtext where seite = 'ibewerben' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerben','S0',1,0,'Frau');
delete from webtext where seite = 'ibewerbz' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerbz','S0',1,0,'Frau');
delete from webtext where seite = 'iabewerben' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerben','S0',1,0,'Frau');
delete from webtext where seite = 'iabewerbez' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerbez','S0',1,0,'Frau');
delete from webtext where seite = 'bewerben' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerben','S01',1,0,'Herr');
delete from webtext where seite = 'bewerbenz' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerbenz','S01',1,0,'Herr');
delete from webtext where seite = 'ibewerben' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerben','S01',1,0,'Herr');
delete from webtext where seite = 'ibewerbz' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerbz','S01',1,0,'Herr');
delete from webtext where seite = 'iabewerben' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerben','S01',1,0,'Herr');
delete from webtext where seite = 'iabewerbez' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerbez','S01',1,0,'Herr');

delete from webtext where seite = 'bewerben' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerben','S02',1,0,'Divers');
delete from webtext where seite = 'bewerbenz' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerbenz','S02',1,0,'Divers');
delete from webtext where seite = 'ibewerben' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerben','S02',1,0,'Divers');
delete from webtext where seite = 'ibewerbz' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerbz','S02',1,0,'Divers');
delete from webtext where seite = 'iabewerben' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerben','S02',1,0,'Divers');
delete from webtext where seite = 'iabewerbez' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerbez','S02',1,0,'Divers');
delete from webtext where seite = 'bewerben' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerben','S03',1,0,'Unbestimmt');
delete from webtext where seite = 'bewerbenz' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'bewerbenz','S03',1,0,'Unbestimmt');
delete from webtext where seite = 'ibewerben' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerben','S03',1,0,'Unbestimmt');
delete from webtext where seite = 'ibewerbz' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'ibewerbz','S03',1,0,'Unbestimmt');
delete from webtext where seite = 'iabewerben' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerben','S03',1,0,'Unbestimmt');
delete from webtext where seite = 'iabewerbez' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'iabewerbez','S03',1,0,'Unbestimmt');

-- Bestehende Datensaetze (geaendert wurden oder in eine andere Sprache kopiert) sind auf neue 'seite' und 'id' umzustellen
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_w_einfach' where seite = 'anrede_w_einfach' and id = '300';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_m_einfach' where seite = 'anrede_m_einfach' and id = '301';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_d_einfach' where seite = 'anrede_m_einfach' and id = '302';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_d_einfach' where seite = 'anrede_d_einfach' and id = '302';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_u_einfach' where seite = 'anrede_u_einfach' and id = '303';

delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_w_einfach' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_w_einfach',1,0,'Frau');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_m_einfach' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_m_einfach',1,0,'Herr');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_d_einfach' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_d_einfach',1,0,'Divers');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_u_einfach' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_u_einfach',1,0,'Unbestimmt');

-- Bestehende Datensaetze (geaendert wurden oder in eine andere Sprache kopiert) sind auf neue 'seite' und 'id' umzustellen
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_w_erweitert' where seite = 'beurteilungeinsehenneu' and id = '300';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_m_erweitert' where seite = 'beurteilungeinsehenneu' and id = '301';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_d_erweitert' where seite = 'beurteilungeinsehenneu' and id = '302';
update webtext set seite = 'anrede_webtext_ersetzer', id = 'anrede_u_erweitert' where seite = 'beurteilungeinsehenneu' and id = '303';

delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_w_erweitert' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_w_erweitert',1,0,'Frau');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_m_erweitert' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_m_erweitert',1,0,'Herr');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_d_erweitert' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_d_erweitert',1,0,'Divers');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_u_erweitert' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_u_erweitert',1,0,'Unbekannt');


delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_w_individuell' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_w_individuell',1,0,'Frau');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_m_individuell' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_m_individuell',1,0,'Herr');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_d_individuell' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_d_individuell',1,0,'Divers');
delete from webtext where seite = 'anrede_webtext_ersetzer' and id = 'anrede_u_individuell' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'anrede_webtext_ersetzer','anrede_u_individuell',1,0,'Unbekannt');

delete from webtext where seite = 'registrieren' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'registrieren','S0',1,0,'Frau');
delete from webtext where seite = 'registrieren' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'registrieren','S01',1,0,'Herr');
delete from webtext where seite = 'registrieren' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'registrieren','S02',1,0,'Divers');
delete from webtext where seite = 'registrieren' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'registrieren','S03',1,0,'Unbestimmt');

delete from webtext where seite = 'personspeichern' and id = 'S0' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'personspeichern','S0',1,0,'Frau');
delete from webtext where seite = 'personspeichern' and id = 'S01' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'personspeichern','S01',1,0,'Herr');
delete from webtext where seite = 'personspeichern' and id = 'S02' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'personspeichern','S02',1,0,'Divers');
delete from webtext where seite = 'personspeichern' and id = 'S03' and sprache = 1 and geaendert = 0;
insert into webtext (pk, seite,id,sprache, geaendert, text) values ((select max(pk)+1 from webtext),'personspeichern','S03',1,0,'Unbestimmt');

update webtext set text = 'Unbestimmt' where text in ('Unbekannt','unbekannt');

/*Oracle*/
/*WR:DATABASE=3*/
/*WR:IGNOREERRORINSTATEMENT*/
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR )
values(19222 , 19210 , null , '(SELECT LISTAGG(ort_wr,'', '')
FROM (select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT1_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT2_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT3_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT4_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT5_WR and firma.pk > 0
) x
where x.pk = ost.pk
) ' , 'Ort' , 1 , 0 , 100 ,'Ort');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR )
values(19106 , 19103 , null , '(SELECT LISTAGG(ort_wr,'', '')
FROM (select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT1_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT2_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT3_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT4_WR and firma.pk > 0
union
select o.pk pk,ort_wr
FROM firma ,ost o
where firma.PK = o.EINORT5_WR and firma.pk > 0
) x
where x.pk = ost.pk
) ' , 'Ort' , 1 , 0 , 100 ,'Ort');

ALTER TABLE webgenehmigungsworkflow add(loeschen_wr {wr numeric(10,0)} );
ALTER TABLE webgenehmigungsworkflow add(aendern_wr {wr numeric(10,0)} );

alter table webbewerbungenkonfig RENAME COLUMN wo_wr to portalTyp_wr;
alter table webbewerbungenkonfigKategorie RENAME COLUMN wo_wr to portalTyp_wr;

ALTER TABLE WebEmail modify( email_wr   {wr varchar(1000)} );
ALTER TABLE WebEmail modify( text_wr   {wr varchar(2000)} );
ALTER TABLE WebEmail add(datum_wr {wr datetime()} );
ALTER TABLE WebEmail add(datenpk_wr {wr numeric(10,0)} );
ALTER TABLE WebEmail add( zusatz_text_wr clob);
update webemail set datenpk_wr = email_wr,email_wr ='' where LENGTH(TRIM(TRANSLATE(email_wr, ' +-.0123456789', ' '))) is null and email_wr != '0';

ALTER TABLE Websicherheit add(reihenfolge_wr int );

alter table webKalenderFilter add(zpk_wr {wr numeric(10,0)} );
update webKalenderFilter set zpk_wr = 0 where zpk_wr is null;


/*MSSQL*/
/*WR:DATABASE=1*/
/*WR:IGNOREERRORINSTATEMENT*/
insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR )
values(19222 , 19210 , null , 'substring(
(SELECT ( '', '' + ort_wr )
FROM (select distinct ort_wr
FROM firma ,ost o
where (firma.PK = o.EINORT1_WR
or firma.PK = o.EINORT2_WR
or firma.PK = o.EINORT3_WR
or firma.PK = o.EINORT4_WR
or firma.PK = o.EINORT5_WR)
and ost.PK = o.pk and firma.PK > 0) a
ORDER BY ort_wr
FOR XML PATH( '''' ))
,3, 1000 )' , 'Ort' , 1 , 0 , 100 ,'Ort');

insert into WEBFED (PK,WEBABPK_WR,TABELLEAL_WR,FELDNAME_WR,DARNAME_WR,ANZEIGE_WR,BENOETIGT_WR,BREITE_WR,SORTFELD_WR )
values(19106 , 19103 , null , 'substring(
(SELECT ( '', '' + ort_wr )
FROM (select distinct ort_wr
FROM firma ,ost o
where (firma.PK = o.EINORT1_WR
or firma.PK = o.EINORT2_WR
or firma.PK = o.EINORT3_WR
or firma.PK = o.EINORT4_WR
or firma.PK = o.EINORT5_WR)
and ost.PK = o.pk and firma.PK > 0) a
ORDER BY ort_wr
FOR XML PATH( '''' ))
,3, 1000 )' , 'Ort' , 1 , 0 , 100 ,'Ort');

ALTER TABLE webgenehmigungsworkflow add	loeschen_wr {wr numeric(10,0)} ;
ALTER TABLE webgenehmigungsworkflow add	aendern_wr {wr numeric(10,0)} ;

EXEC sp_rename 'webbewerbungenkonfig.wo_wr','portalTyp_wr','COLUMN';
EXEC sp_rename 'webbewerbungenkonfigKategorie.wo_wr','portalTyp_wr','COLUMN';

ALTER TABLE WebEmail ALTER COLUMN email_wr {wr varchar(1000)};
ALTER TABLE WebEmail ALTER COLUMN text_wr {wr varchar(2000)};
ALTER TABLE WebEmail add datum_wr {wr datetime()} ;
ALTER TABLE WebEmail add datenpk_wr {wr numeric(10,0)};
ALTER TABLE WebEmail add zusatz_text_wr varchar(max);
update webemail set datenpk_wr = email_wr,email_wr ='' where isnumeric(email_wr) = 1 and email_wr != '0';

ALTER TABLE Websicherheit add reihenfolge_wr int ;
alter table webKalenderFilter add zpk_wr {wr numeric(10,0)};
update webKalenderFilter set zpk_wr = 0 where zpk_wr is null;

update webtext set text ='Bitte �berpr�fen Sie Ihre Eingaben noch einmal. ' where seite='ibewerbenv' and id='10' and sprache =1;
update webtext set text ='Bitte �berpr�fen Sie Ihre Eingaben noch einmal. ' where seite='bewerbenv' and id='10' and sprache =1;
update webtext set text ='Ihre pers�nlichen Daten' where seite='personspeichern' and id='0' and sprache =1;
update webtext set text ='An dieser Stelle k�nnen Sie Ihre Bewerbung in Dateiformat abgeben.' where seite='bewerbendatei' and id='M2' and sprache =1;
update webtext set text ='An dieser Stelle k�nnen Sie Ihre Bewerbung in Dateiformat abgeben.' where seite='ibewerbendatei' and id='M2' and sprache =1;

Update WEBFED set DARNAME_WR = 'Bemerkung Icon' where pk = 10006
Update WEBFED set DARNAME_WR = '�ndern Icon' where pk = 10007
Update WEBFED set DARNAME_WR = 'Genehmigen Icon' where pk = 10008
Update WEBFED set DARNAME_WR = 'Ablehnen Icon' where pk = 10009
Update WEBFED set DARNAME_WR = 'L�schen Icon' where pk = 10010
Update WEBFED set DARNAME_WR = 'Bezeichnung Tooltip' where pk = 10011
Update WEBFED set DARNAME_WR = 'Bemerkung Tooltip' where pk = 10012
Update WEBFED set DARNAME_WR = 'Gehnemigungsbemerkung Tooltip' where pk = 10013
