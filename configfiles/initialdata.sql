-- This needs to change as we have the initial values in a property file now.
connect 'jdbc:derby:/Users/$$USER$$/documents/derby_home/aspiradb';
insert into patient values ('$$USER$$','M','notes','bvtype',0,0,0,0,0);
insert into clinician values ('clinician1');
insert into patient_clinician values ('$$USER$$','clinician1');
insert into aqmonitor values ('$$AQM_ID$$$','Dylos','DC1110','AQM','$$USER$$');
insert into spirometer values ('$$SPIROMETER_ID$$','MicroLife','PF100','Spirometer','$$USER$$');
