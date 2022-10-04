/*VEDA:2e0b52d24d42942cdc925a0609ab4aef50a6b1543b2e37e3d432424d0ff1a90d*/

-- Mindestens ein Umlaut ist erforderlich um ANSI-Format: ?
/*WR:BREAKONODBCERROR-*/
/*WR:IGNOREERRORINSTATEMENT*/
delete from webpar where key_wr = 'menuetyp';
delete from webtext where id ='menue7v' and seite = 'frame2';
delete from webtext where id ='menue26' and seite = 'frame2';
delete from webtext where id ='menue28p' and seite = 'frame2';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehf_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehf';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfe_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfe';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfm_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfm';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfme_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfme';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfam_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfam';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfame_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfame';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfam_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfam';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfame_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfame';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfm_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfm';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfme_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfme';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfum_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfum';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfume_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfume';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfum_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfum';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfume_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfume';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfaum_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfaum';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuehfaume_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuehfaume';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfaum_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfaum';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menuesfaume_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menuesfaume';
insert into webpar (pk,dbcountry,dbcontract,dbaccount,key_wr,value_wr,text_wr)
select 11,0,0,0,'menueschriftgr_cmt',VALUE_WR,null from WEBPAR  where KEY_WR ='menueschriftgr';
