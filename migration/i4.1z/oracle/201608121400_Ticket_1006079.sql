SET SQLBLANKLINES ON
SET DEFINE OFF

-- Aug 12, 2016 3:56:58 PM MYT
-- 1006079 Ease edit of OnLine Context Help
UPDATE AD_Field SET SeqNo=90, IsDisplayed='Y', XPosition=2,Updated=TO_DATE('2016-08-12 15:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204258
;

-- Aug 12, 2016 3:56:58 PM MYT
UPDATE AD_Field SET SeqNo=100, IsDisplayed='Y', XPosition=5,Updated=TO_DATE('2016-08-12 15:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204259
;

-- Aug 12, 2016 3:56:59 PM MYT
UPDATE AD_Field SET SeqNo=110,Updated=TO_DATE('2016-08-12 15:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204262
;

-- Aug 12, 2016 3:56:59 PM MYT
UPDATE AD_Field SET SeqNo=120,Updated=TO_DATE('2016-08-12 15:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204261
;

-- Aug 12, 2016 3:56:59 PM MYT
UPDATE AD_Field SET SeqNo=130,Updated=TO_DATE('2016-08-12 15:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204260
;

-- Aug 12, 2016 3:57:40 PM MYT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2016-08-12 15:57:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204258
;

-- Aug 12, 2016 3:57:49 PM MYT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2016-08-12 15:57:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204259
;

UPDATE AD_Tab SET IsInsertRecord='N',Updated=TO_DATE('2016-08-12 17:51:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=200216
;

UPDATE AD_Field SET SeqNo=110, IsDisplayed='Y', XPosition=2,Updated=TO_DATE('2016-08-15 11:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204263
;

UPDATE AD_Field SET SeqNo=120,Updated=TO_DATE('2016-08-15 11:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204262
;

UPDATE AD_Field SET SeqNo=130,Updated=TO_DATE('2016-08-15 11:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204261
;

UPDATE AD_Field SET SeqNo=140,Updated=TO_DATE('2016-08-15 11:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204260
;

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2016-08-15 11:25:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204263
;

SELECT register_migration_script('201608121400_Ticket_1006079.sql') FROM dual
;

