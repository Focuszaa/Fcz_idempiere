ALTER TABLE A_Asset ADD (CONSTRAINT AAssetClass_AAsset FOREIGN KEY (A_Asset_Class_ID) REFERENCES A_Asset_Class);

ALTER TABLE A_Asset ADD (CONSTRAINT AAssetType_AAsset FOREIGN KEY (A_Asset_Type_ID) REFERENCES A_Asset_Type);

ALTER TABLE A_Asset ADD (CONSTRAINT CActivity_AAsset FOREIGN KEY (C_Activity_ID) REFERENCES C_Activity);

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADepreciationF_AAssetAcct FOREIGN KEY (A_Depreciation_F_ID) REFERENCES A_Depreciation);

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADepreciationConvF_AAssetAcct FOREIGN KEY (A_Depreciation_Conv_F_ID) REFERENCES A_Depreciation_Convention);

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADepreciationMethodF_AAssetAcc FOREIGN KEY (A_Depreciation_Method_F_ID) REFERENCES A_Depreciation_Method);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT CCharge_AAssetAddition FOREIGN KEY (C_Charge_ID) REFERENCES C_Charge);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT CConversionType_AAssetAddition FOREIGN KEY (C_ConversionType_ID) REFERENCES C_ConversionType);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT CCurrency_AAssetAddition FOREIGN KEY (C_Currency_ID) REFERENCES C_Currency);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT CProject_AAssetAddition FOREIGN KEY (C_Project_ID) REFERENCES C_Project);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT IFixedAsset_AAssetAddition FOREIGN KEY (I_FixedAsset_ID) REFERENCES I_FixedAsset);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT MInOutLine_AAssetAddition FOREIGN KEY (M_InOutLine_ID) REFERENCES M_InOutLine);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT MMatchInv_AAssetAddition FOREIGN KEY (M_MatchInv_ID) REFERENCES M_MatchInv);

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT MProduct_AAssetAddition FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE A_Asset_Change ADD (CONSTRAINT CBPartner_AAssetChange FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner);

ALTER TABLE A_Asset_Disposed ADD (CONSTRAINT AAsset_AAssetDisposed FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Asset_Disposed ADD (CONSTRAINT CInvoice_AAssetDisposed FOREIGN KEY (C_Invoice_ID) REFERENCES C_Invoice);

ALTER TABLE A_Asset_Disposed ADD (CONSTRAINT CInvoiceLine_AAssetDisposed FOREIGN KEY (C_InvoiceLine_ID) REFERENCES C_InvoiceLine);

ALTER TABLE A_Asset_Group ADD (CONSTRAINT AAssetClass_AAssetGroup FOREIGN KEY (A_Asset_Class_ID) REFERENCES A_Asset_Class);

ALTER TABLE A_Asset_Group ADD (CONSTRAINT AAssetType_AAssetGroup FOREIGN KEY (A_Asset_Type_ID) REFERENCES A_Asset_Type);

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADepreciationF_AAssetGroupAcct FOREIGN KEY (A_Depreciation_F_ID) REFERENCES A_Depreciation);

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADepreciationConvF_AAssetGroup FOREIGN KEY (A_Depreciation_Conv_F_ID) REFERENCES A_Depreciation_Convention);

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADepreciationConv_AAssetGroupA FOREIGN KEY (A_Depreciation_Conv_ID) REFERENCES A_Depreciation_Convention);

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADepreciationMethodF_AAssetGro FOREIGN KEY (A_Depreciation_Method_F_ID) REFERENCES A_Depreciation_Method);

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADepreciationMethod_AAssetGrou FOREIGN KEY (A_Depreciation_Method_ID) REFERENCES A_Depreciation_Method);

ALTER TABLE A_Asset_Info_Fin ADD (CONSTRAINT AAsset_AAssetInfoFin FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Asset_Info_Fin ADD (CONSTRAINT CBPartner_AAssetInfoFin FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner);

ALTER TABLE A_Asset_Info_Lic ADD (CONSTRAINT AAsset_AAssetInfoLic FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Asset_Product ADD (CONSTRAINT AAsset_AAssetProduct FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Asset_Product ADD (CONSTRAINT MProduct_AAssetProduct FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE A_Asset_Reval ADD (CONSTRAINT AAsset_AAssetReval FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT AAsset_AAssetTransfer FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE AD_AlertProcessor ADD (CONSTRAINT ADSchedule_ADAlertProcessor FOREIGN KEY (AD_Schedule_ID) REFERENCES AD_Schedule);

ALTER TABLE AD_Client ADD (CONSTRAINT ADPasswordRule_ADClient FOREIGN KEY (AD_PasswordRule_ID) REFERENCES AD_PasswordRule);

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT AAsset_ADepreciationExp FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT AAssetAddition_ADepreciationEx FOREIGN KEY (A_Asset_Addition_ID) REFERENCES A_Asset_Addition);

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT AAssetDisposed_ADepreciationEx FOREIGN KEY (A_Asset_Disposed_ID) REFERENCES A_Asset_Disposed);

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT ADepreciationEntry_ADepreciati FOREIGN KEY (A_Depreciation_Entry_ID) REFERENCES A_Depreciation_Entry);

ALTER TABLE A_Depreciation_Workfile ADD (CONSTRAINT AAsset_ADepreciationWorkfile FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE A_Depreciation_Workfile ADD (CONSTRAINT AFundingMode_ADepreciationWork FOREIGN KEY (A_FundingMode_ID) REFERENCES A_FundingMode);

ALTER TABLE AD_Package_Exp_Detail ADD (CONSTRAINT ADPackageExp_ADPackageExpDetai FOREIGN KEY (AD_Package_Exp_ID) REFERENCES AD_Package_Exp);

ALTER TABLE AD_PInstance_Log ADD (CONSTRAINT ADTable_ADPInstanceLog FOREIGN KEY (AD_Table_ID) REFERENCES AD_Table);

ALTER TABLE AD_RecentItem ADD (CONSTRAINT ADRole_ADRecentItem FOREIGN KEY (AD_Role_ID) REFERENCES AD_Role);

ALTER TABLE AD_RecentItem ADD (CONSTRAINT ADTab_ADRecentItem FOREIGN KEY (AD_Tab_ID) REFERENCES AD_Tab);

ALTER TABLE AD_RecentItem ADD (CONSTRAINT ADTable_ADRecentItem FOREIGN KEY (AD_Table_ID) REFERENCES AD_Table);

ALTER TABLE AD_RecentItem ADD (CONSTRAINT ADUser_ADRecentItem FOREIGN KEY (AD_User_ID) REFERENCES AD_User);

ALTER TABLE AD_RecentItem ADD (CONSTRAINT ADWindow_ADRecentItem FOREIGN KEY (AD_Window_ID) REFERENCES AD_Window);

ALTER TABLE AD_Scheduler ADD (CONSTRAINT ADSchedule_ADScheduler FOREIGN KEY (AD_Schedule_ID) REFERENCES AD_Schedule);

ALTER TABLE AD_Scheduler ADD (CONSTRAINT ADTable_ADScheduler FOREIGN KEY (AD_Table_ID) REFERENCES AD_Table);

ALTER TABLE AD_Tab_Customization ADD (CONSTRAINT ADTab_ADTabCustomization FOREIGN KEY (AD_Tab_ID) REFERENCES AD_Tab);

ALTER TABLE AD_Tab_Customization ADD (CONSTRAINT ADUser_ADTabCustomization FOREIGN KEY (AD_User_ID) REFERENCES AD_User);

ALTER TABLE AD_ToolBarButton ADD (CONSTRAINT ADProcess_ADToolBarButton FOREIGN KEY (AD_Process_ID) REFERENCES AD_Process);

ALTER TABLE AD_ToolBarButton ADD (CONSTRAINT ADTab_ADToolBarButton FOREIGN KEY (AD_Tab_ID) REFERENCES AD_Tab);

ALTER TABLE AD_ToolBarButtonRestrict ADD (CONSTRAINT ADProcess_ADToolBarButtonRestr FOREIGN KEY (AD_Process_ID) REFERENCES AD_Process);

ALTER TABLE AD_ToolBarButtonRestrict ADD (CONSTRAINT ADRole_ADToolBarButtonRestrict FOREIGN KEY (AD_Role_ID) REFERENCES AD_Role);

ALTER TABLE AD_ToolBarButtonRestrict ADD (CONSTRAINT ADTab_ADToolBarButtonRestrict FOREIGN KEY (AD_Tab_ID) REFERENCES AD_Tab);

ALTER TABLE AD_ToolBarButtonRestrict ADD (CONSTRAINT ADToolBarButton_ADToolBarButto FOREIGN KEY (AD_ToolBarButton_ID) REFERENCES AD_ToolBarButton);

ALTER TABLE AD_ToolBarButtonRestrict ADD (CONSTRAINT ADWindow_ADToolBarButtonRestri FOREIGN KEY (AD_Window_ID) REFERENCES AD_Window);

ALTER TABLE AD_WizardProcess ADD (CONSTRAINT ADWFNode_ADWizardProcess FOREIGN KEY (AD_WF_Node_ID) REFERENCES AD_WF_Node);

ALTER TABLE AD_WorkflowProcessor ADD (CONSTRAINT ADSchedule_ADWorkflowProcessor FOREIGN KEY (AD_Schedule_ID) REFERENCES AD_Schedule);

ALTER TABLE A_FundingMode_Acct ADD (CONSTRAINT AFundingMode_AFundingModeAcct FOREIGN KEY (A_FundingMode_ID) REFERENCES A_FundingMode);

ALTER TABLE A_FundingMode_Acct ADD (CONSTRAINT CAcctSchema_AFundingModeAcct FOREIGN KEY (C_AcctSchema_ID) REFERENCES C_AcctSchema);

ALTER TABLE ASP_Ref_List ADD (CONSTRAINT ADReference_ASPRefList FOREIGN KEY (AD_Reference_ID) REFERENCES AD_Reference);

ALTER TABLE ASP_Ref_List ADD (CONSTRAINT ADRefList_ASPRefList FOREIGN KEY (AD_Ref_List_ID) REFERENCES AD_Ref_List);

ALTER TABLE ASP_Ref_List ADD (CONSTRAINT ASPLevel_ASPRefList FOREIGN KEY (ASP_Level_ID) REFERENCES ASP_Level);

ALTER TABLE C_AcctProcessor ADD (CONSTRAINT ADSchedule_CAcctProcessor FOREIGN KEY (AD_Schedule_ID) REFERENCES AD_Schedule);

ALTER TABLE C_AllocationLine ADD (CONSTRAINT CCharge_CAllocationLine FOREIGN KEY (C_Charge_ID) REFERENCES C_Charge);

ALTER TABLE C_BankAccount_Processor ADD (CONSTRAINT CBankAccount_CBankAccountProce FOREIGN KEY (C_BankAccount_ID) REFERENCES C_BankAccount);

ALTER TABLE C_BankAccount_Processor ADD (CONSTRAINT CPaymentProcessor_CBankAccount FOREIGN KEY (C_PaymentProcessor_ID) REFERENCES C_PaymentProcessor);

ALTER TABLE C_Payment ADD (CONSTRAINT CPaymentProcessor_CPayment FOREIGN KEY (C_PaymentProcessor_ID) REFERENCES C_PaymentProcessor);

ALTER TABLE C_Payment ADD (CONSTRAINT CPOSTenderType_CPayment FOREIGN KEY (C_POSTenderType_ID) REFERENCES C_POSTenderType);

ALTER TABLE C_POSPayment ADD (CONSTRAINT COrder_CPOSPayment FOREIGN KEY (C_Order_ID) REFERENCES C_Order);

ALTER TABLE C_POSPayment ADD (CONSTRAINT CPayment_CPOSPayment FOREIGN KEY (C_Payment_ID) REFERENCES C_Payment);

ALTER TABLE C_POSPayment ADD (CONSTRAINT CPOSTenderType_CPOSPayment FOREIGN KEY (C_POSTenderType_ID) REFERENCES C_POSTenderType);

ALTER TABLE DD_OrderLine ADD (CONSTRAINT MShipper_DDOrderLine FOREIGN KEY (M_Shipper_ID) REFERENCES M_Shipper);

ALTER TABLE Fact_Acct_Summary ADD (CONSTRAINT ADOrgTrx_FactAcctSummary FOREIGN KEY (AD_OrgTrx_ID) REFERENCES AD_Org);

ALTER TABLE Fact_Acct_Summary ADD (CONSTRAINT CLocFrom_FactAcctSummary FOREIGN KEY (C_LocFrom_ID) REFERENCES C_Location);

ALTER TABLE Fact_Acct_Summary ADD (CONSTRAINT CLocTo_FactAcctSummary FOREIGN KEY (C_LocTo_ID) REFERENCES C_Location);

ALTER TABLE Fact_Reconciliation ADD (CONSTRAINT FactAcct_FactReconciliation FOREIGN KEY (Fact_Acct_ID) REFERENCES Fact_Acct);

ALTER TABLE GL_JournalGeneratorSource ADD (CONSTRAINT GLCategory_GLJournalGeneratorS FOREIGN KEY (GL_Category_ID) REFERENCES GL_Category);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT ADOrgTrx_GLJournalLine FOREIGN KEY (AD_OrgTrx_ID) REFERENCES AD_Org);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CActivity_GLJournalLine FOREIGN KEY (C_Activity_ID) REFERENCES C_Activity);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CBPartner_GLJournalLine FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CCampaign_GLJournalLine FOREIGN KEY (C_Campaign_ID) REFERENCES C_Campaign);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT Account_GLJournalLine FOREIGN KEY (Account_ID) REFERENCES C_ElementValue);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT User1_GLJournalLine FOREIGN KEY (User1_ID) REFERENCES C_ElementValue);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT User2_GLJournalLine FOREIGN KEY (User2_ID) REFERENCES C_ElementValue);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CLocFrom_GLJournalLine FOREIGN KEY (C_LocFrom_ID) REFERENCES C_Location);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CLocTo_GLJournalLine FOREIGN KEY (C_LocTo_ID) REFERENCES C_Location);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CProject_GLJournalLine FOREIGN KEY (C_Project_ID) REFERENCES C_Project);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CSalesRegion_GLJournalLine FOREIGN KEY (C_SalesRegion_ID) REFERENCES C_SalesRegion);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT CSubAcct_GLJournalLine FOREIGN KEY (C_SubAcct_ID) REFERENCES C_SubAcct);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT AliasValidCombination_GLJourna FOREIGN KEY (Alias_ValidCombination_ID) REFERENCES C_ValidCombination);

ALTER TABLE GL_JournalLine ADD (CONSTRAINT MProduct_GLJournalLine FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE HR_Movement ADD (CONSTRAINT CBPBankAccount_HRMovement FOREIGN KEY (C_BP_BankAccount_ID) REFERENCES C_BP_BankAccount);

ALTER TABLE HR_Movement ADD (CONSTRAINT CBPGroup_HRMovement FOREIGN KEY (C_BP_Group_ID) REFERENCES C_BP_Group);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT AAsset_IFixedAsset FOREIGN KEY (A_Asset_ID) REFERENCES A_Asset);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT AAssetClass_IFixedAsset FOREIGN KEY (A_Asset_Class_ID) REFERENCES A_Asset_Class);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT AAssetGroup_IFixedAsset FOREIGN KEY (A_Asset_Group_ID) REFERENCES A_Asset_Group);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT AAssetType_IFixedAsset FOREIGN KEY (A_Asset_Type_ID) REFERENCES A_Asset_Type);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT CBPartnerSR_IFixedAsset FOREIGN KEY (C_BPartnerSR_ID) REFERENCES C_BPartner);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT CCity_IFixedAsset FOREIGN KEY (C_City_ID) REFERENCES C_City);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT CUOM_IFixedAsset FOREIGN KEY (C_UOM_ID) REFERENCES C_UOM);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT MLocator_IFixedAsset FOREIGN KEY (M_Locator_ID) REFERENCES M_Locator);

ALTER TABLE I_FixedAsset ADD (CONSTRAINT MProduct_IFixedAsset FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE I_HR_Movement ADD (CONSTRAINT CBPartner_IHRMovement FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner);

ALTER TABLE I_HR_Movement ADD (CONSTRAINT HRConcept_IHRMovement FOREIGN KEY (HR_Concept_ID) REFERENCES HR_Concept);

ALTER TABLE I_HR_Movement ADD (CONSTRAINT HRMovement_IHRMovement FOREIGN KEY (HR_Movement_ID) REFERENCES HR_Movement);

ALTER TABLE I_HR_Movement ADD (CONSTRAINT HRProcess_IHRMovement FOREIGN KEY (HR_Process_ID) REFERENCES HR_Process);

ALTER TABLE I_Inventory ADD (CONSTRAINT CCharge_IInventory FOREIGN KEY (C_Charge_ID) REFERENCES C_Charge);

ALTER TABLE I_Inventory ADD (CONSTRAINT CDocType_IInventory FOREIGN KEY (C_DocType_ID) REFERENCES C_DocType);

ALTER TABLE I_Movement ADD (CONSTRAINT ADOrgTrx_IMovement FOREIGN KEY (AD_OrgTrx_ID) REFERENCES AD_Org);

ALTER TABLE I_Movement ADD (CONSTRAINT ADUser_IMovement FOREIGN KEY (AD_User_ID) REFERENCES AD_User);

ALTER TABLE I_Movement ADD (CONSTRAINT CBPartner_IMovement FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner);

ALTER TABLE I_Movement ADD (CONSTRAINT CCampaign_IMovement FOREIGN KEY (C_Campaign_ID) REFERENCES C_Campaign);

ALTER TABLE I_Movement ADD (CONSTRAINT CDocType_IMovement FOREIGN KEY (C_DocType_ID) REFERENCES C_DocType);

ALTER TABLE I_Movement ADD (CONSTRAINT CProject_IMovement FOREIGN KEY (C_Project_ID) REFERENCES C_Project);

ALTER TABLE I_Movement ADD (CONSTRAINT MMovement_IMovement FOREIGN KEY (M_Movement_ID) REFERENCES M_Movement);

ALTER TABLE I_Movement ADD (CONSTRAINT MMovementLine_IMovement FOREIGN KEY (M_MovementLine_ID) REFERENCES M_MovementLine);

ALTER TABLE I_Movement ADD (CONSTRAINT MProduct_IMovement FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE I_Movement ADD (CONSTRAINT MShipper_IMovement FOREIGN KEY (M_Shipper_ID) REFERENCES M_Shipper);

ALTER TABLE M_CostHistory ADD (CONSTRAINT MCostDetail_MCostHistory FOREIGN KEY (M_CostDetail_ID) REFERENCES M_CostDetail);

ALTER TABLE M_CostHistory ADD (CONSTRAINT MCostElement_MCostHistory FOREIGN KEY (M_CostElement_ID) REFERENCES M_CostElement);

ALTER TABLE M_CostHistory ADD (CONSTRAINT MCostType_MCostHistory FOREIGN KEY (M_CostType_ID) REFERENCES M_CostType);

ALTER TABLE M_Product ADD (CONSTRAINT MPartType_MProduct FOREIGN KEY (M_PartType_ID) REFERENCES M_PartType);

ALTER TABLE M_Production ADD (CONSTRAINT COrderLine_MProduction FOREIGN KEY (C_OrderLine_ID) REFERENCES C_OrderLine);

ALTER TABLE M_Production ADD (CONSTRAINT MProduct_MProduction FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE M_ProductionLine ADD (CONSTRAINT MProduction_MProductionLine FOREIGN KEY (M_Production_ID) REFERENCES M_Production);

ALTER TABLE M_Product_QualityTest ADD (CONSTRAINT MProduct_MProductQualityTest FOREIGN KEY (M_Product_ID) REFERENCES M_Product);

ALTER TABLE M_Product_QualityTest ADD (CONSTRAINT MQualityTest_MProductQualityTe FOREIGN KEY (M_QualityTest_ID) REFERENCES M_QualityTest);

ALTER TABLE M_QualityTestResult ADD (CONSTRAINT MQualityTest_MQualityTestResul FOREIGN KEY (M_QualityTest_ID) REFERENCES M_QualityTest);

ALTER TABLE PA_DashboardContent ADD (CONSTRAINT ADProcess_PADashboardContent FOREIGN KEY (AD_Process_ID) REFERENCES AD_Process);

ALTER TABLE PA_DashboardContent ADD (CONSTRAINT ADRole_PADashboardContent FOREIGN KEY (AD_Role_ID) REFERENCES AD_Role);

ALTER TABLE PA_DashboardContent ADD (CONSTRAINT ADUser_PADashboardContent FOREIGN KEY (AD_User_ID) REFERENCES AD_User);

ALTER TABLE PA_DashboardPreference ADD (CONSTRAINT ADRole_PADashboardPreference FOREIGN KEY (AD_Role_ID) REFERENCES AD_Role);

ALTER TABLE PA_DashboardPreference ADD (CONSTRAINT ADUser_PADashboardPreference FOREIGN KEY (AD_User_ID) REFERENCES AD_User);

ALTER TABLE PA_DashboardPreference ADD (CONSTRAINT PADashboardContent_PADashPref FOREIGN KEY (PA_DashboardContent_ID) REFERENCES PA_DashboardContent);

ALTER TABLE R_RequestProcessor ADD (CONSTRAINT ADSchedule_RRequestProcessor FOREIGN KEY (AD_Schedule_ID) REFERENCES AD_Schedule);

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT AAccumdepreciation_AAssetAcct FOREIGN KEY(A_Accumdepreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADisposalGain_AAssetAcct FOREIGN KEY(A_Disposal_Gain_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADisposalLoss_AAssetAcct FOREIGN KEY(A_Disposal_Loss_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ADisposalRevenue_AAssetAcct FOREIGN KEY(A_Disposal_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ARevalAdepOffsetCur_AAssetAcct FOREIGN KEY(A_Reval_Adep_Offset_Cur_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ARevalAdepOffsetPrior_AAssetAc FOREIGN KEY(A_Reval_Adep_Offset_Prior_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ARevalCostOffset_AAssetAcct FOREIGN KEY(A_Reval_Cost_Offset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ARevalCostOffsetPrior_AAssetAc FOREIGN KEY(A_Reval_Cost_Offset_Prior_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Acct ADD (CONSTRAINT ARevalDepexpOffset_AAssetAcct FOREIGN KEY(A_Reval_Depexp_Offset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT MAttributeSetInstance_AAssetAd FOREIGN KEY(M_AttributeSetInstance_ID) REFERENCES M_AttributeSetInstance(M_AttributeSetInstance_ID));

ALTER TABLE A_Asset_Addition ADD (CONSTRAINT MLocator_AAssetAddition FOREIGN KEY(M_Locator_ID) REFERENCES M_Locator(M_Locator_ID));

ALTER TABLE A_Asset_Change ADD (CONSTRAINT AAccumdepreciation_AAssetChang FOREIGN KEY(A_Accumdepreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Change ADD (CONSTRAINT ADepreciation_AAssetChange FOREIGN KEY(A_Depreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Change ADD (CONSTRAINT ADisposalLoss_AAssetChange FOREIGN KEY(A_Disposal_Loss_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Change ADD (CONSTRAINT ADisposalRevenue_AAssetChange FOREIGN KEY(A_Disposal_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Change ADD (CONSTRAINT CValidCombinati_AAssetChange FOREIGN KEY(C_ValidCombination_ID) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT AAccumdepreciation_AAssetGroup FOREIGN KEY(A_Accumdepreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT AAsset_AAssetGroupAcct FOREIGN KEY(A_Asset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADisposalGain_AAssetGroupAcct FOREIGN KEY(A_Disposal_Gain_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADisposalLoss_AAssetGroupAcct FOREIGN KEY(A_Disposal_Loss_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ADisposalRevenue_AAssetGroupAc FOREIGN KEY(A_Disposal_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ARevalAdepOffsetCur_AAssetGrou FOREIGN KEY(A_Reval_Adep_Offset_Cur_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ARevalAdepOffsetPrior_AAssetGr FOREIGN KEY(A_Reval_Adep_Offset_Prior_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ARevalCostOffset_AAssetGroupAc FOREIGN KEY(A_Reval_Cost_Offset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ARevalCostOffsetPrior_AAssetGr FOREIGN KEY(A_Reval_Cost_Offset_Prior_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Group_Acct ADD (CONSTRAINT ARevalDepexpOffset_AAssetGroup FOREIGN KEY(A_Reval_Depexp_Offset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Product ADD (CONSTRAINT MAttributeSetInstance_AAssetPr FOREIGN KEY(M_AttributeSetInstance_ID) REFERENCES M_AttributeSetInstance(M_AttributeSetInstance_ID));

ALTER TABLE A_Asset_Product ADD (CONSTRAINT MLocator_AAssetProduct FOREIGN KEY(M_Locator_ID) REFERENCES M_Locator(M_Locator_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT AAccumdepreciation_AAssetTrans FOREIGN KEY(A_Accumdepreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT AAccumdepreciationNew_AAssetTr FOREIGN KEY(A_Accumdepreciation_New_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT AAssetNew_AAssetTransfer FOREIGN KEY(A_Asset_New_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADepreciation_AAssetTransfer FOREIGN KEY(A_Depreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADepreciationNew_AAssetTransfe FOREIGN KEY(A_Depreciation_New_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADisposalLoss_AAssetTransfer FOREIGN KEY(A_Disposal_Loss_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADisposalLossNew_AAssetTransfe FOREIGN KEY(A_Disposal_Loss_New_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADisposalRevenue_AAssetTransfe FOREIGN KEY(A_Disposal_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Asset_Transfer ADD (CONSTRAINT ADisposalRevenueNew_AAssetTran FOREIGN KEY(A_Disposal_Revenue_New_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT AAccountNumber_ADepreciationEx FOREIGN KEY(A_Account_Number_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT CRAccou_ADepreciationExp FOREIGN KEY(CR_Account_ID) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE A_Depreciation_Exp ADD (CONSTRAINT DRAccou_ADepreciationExp FOREIGN KEY(DR_Account_ID) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE C_AcctSchema_Default ADD (CONSTRAINT ChRevenue_CAcctSchemaDefault FOREIGN KEY(Ch_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE C_Charge_Acct ADD (CONSTRAINT ChRevenue_CChargeAcct FOREIGN KEY(Ch_Revenue_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE I_Asset ADD (CONSTRAINT AAccumdepreciation_IAsset FOREIGN KEY(A_Accumdepreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE I_Asset ADD (CONSTRAINT AAsset_IAsset FOREIGN KEY(A_Asset_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE I_Asset ADD (CONSTRAINT ADepreciation_IAsset FOREIGN KEY(A_Depreciation_Acct) REFERENCES C_ValidCombination(C_ValidCombination_ID));

ALTER TABLE I_Asset ADD (CONSTRAINT MAttributeSetInstance_IAsset FOREIGN KEY(M_AttributeSetInstance_ID) REFERENCES M_AttributeSetInstance(M_AttributeSetInstance_ID));

ALTER TABLE I_Movement ADD (CONSTRAINT MLocator_IMovement FOREIGN KEY(M_Locator_ID) REFERENCES M_Locator(M_Locator_ID));

ALTER TABLE I_Movement ADD (CONSTRAINT MLocatorTo_IMovement FOREIGN KEY(M_LocatorTo_ID) REFERENCES M_Locator(M_Locator_ID));

ALTER TABLE M_CostHistory ADD (CONSTRAINT MAttributeSetInstance_MCostHis FOREIGN KEY(M_AttributeSetInstance_ID) REFERENCES M_AttributeSetInstance(M_AttributeSetInstance_ID));

ALTER TABLE M_Production ADD (CONSTRAINT MLocator_MProduction FOREIGN KEY(M_Locator_ID) REFERENCES M_Locator(M_Locator_ID));

ALTER TABLE M_QualityTestResult ADD (CONSTRAINT MAttributeSetInstance_MQuality FOREIGN KEY(M_AttributeSetInstance_ID) REFERENCES M_AttributeSetInstance(M_AttributeSetInstance_ID));

SELECT register_migration_script('956_ForeignKeys.sql') FROM dual
;

