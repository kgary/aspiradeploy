-- Script to delete all tuples from DB, to be run from ij tool
connect 'jdbc:derby:/Users/$$USER$$/documents/derby_home/aspiradb';
delete from "APP"."PARTICLEREADING";
delete from "APP"."SPIROMETERREADING";
delete from "APP"."UIEVENT";
delete from "APP"."PATIENT_CLINICIAN";
delete from "APP"."CLINICIAN";
delete from "APP"."SPIROMETER";
delete from "APP"."AQMONITOR";
delete from "APP"."PATIENT";
disconnect;
exit;
