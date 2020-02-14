CREATE TABLE [FarmerData] (
	[FarmerName] VarChar(255), 
	[FarmerAddress] VarChar(255), 
	[FarmerTel] VarChar(255)
)

CREATE TABLE [FlushPrintCode] (
	[PrintCodeSrt] VarChar(255) WITH COMP, 
	[PrintCodeEnd] VarChar(255) WITH COMP, 
	[PintCodeCount] Long DEFAULT 0, 
	[DisposeReason] VarChar(255)
)

CREATE TABLE [ResumeCurrent] (
	[ProductName] VarChar(255) WITH COMP, 
	[PackDate] DateTime, 
	[CreateDate] DateTime, 
	[FarmerName] VarChar(255) WITH COMP, 
	[AuthName] VarChar(50) WITH COMP, 
	[TraceCode] VarChar(255) WITH COMP, 
	[EanCode] VarChar(255) WITH COMP, 
	[QRCodeUrl] VarChar(255) WITH COMP, 
	[initPrintCodeSrt] VarChar(255) WITH COMP, 
	[initPrintCodeEnd] VarChar(255) WITH COMP, 
	[PrintCodeSrt] VarChar(255) WITH COMP, 
	[PrintCodeEnd] VarChar(255) WITH COMP, 
	[initAvailablePrint] Long DEFAULT 0, 
	[TotalPrinted] Long DEFAULT 0, 
	[Unit] VarChar(50) WITH COMP, 
	[PreTraceCode] VarChar(50), 
	[ExpDate] DateTime, 
	[ResumeID] Long, 
	[ReceiveOrg] VarChar(255), 
	[Producer] VarChar(255), 
	[SourceProducer] VarChar(255)
)

CREATE TABLE [ResumeDispose] (
	[ResumeID] Long, 
	[PrintCodeSrt] VarChar(255), 
	[PrintCodeEnd] VarChar(255), 
	[PintCodeCount] Long, 
	[DisposeReason] VarChar(255)
)


CREATE TABLE [ResumeHistory] (
	[ProductName] VarChar(255) WITH COMP, 
	[PackDate] DateTime, 
	[CreateDate] DateTime, 
	[FarmerName] VarChar(255) WITH COMP, 
	[AuthName] VarChar(50) WITH COMP, 
	[TraceCode] VarChar(255) WITH COMP, 
	[EanCode] VarChar(255) WITH COMP, 
	[QRCodeUrl] VarChar(255) WITH COMP, 
	[initPrintCodeSrt] VarChar(255) WITH COMP, 
	[initPrintCodeEnd] VarChar(255) WITH COMP, 
	[initAvailablePrint] Long DEFAULT 0, 
	[TotalPrinted] Long DEFAULT 0, 
	[Unit] VarChar(50) WITH COMP, 
	[PreTraceCode] VarChar(50), 
	[ExpDate] DateTime, 
	[ResumeID] Long, 
	[ReceiveOrg] VarChar(255), 
	[Producer] VarChar(255), 
	[SourceProducer] VarChar(255)
)

CREATE TABLE [SysParam] (
	[ProducerName] VarChar(255) WITH COMP, 
	[OrgID] VarChar(30) WITH COMP, 
	[SysSerialNo] VarChar(255) WITH COMP, 
	[DBSchemaVersion] Long DEFAULT 0, 
	[DayToFlush] Long DEFAULT 0, 
	[ShowHistory] VarChar(10) WITH COMP, 
	[PrintFormat] Long DEFAULT 0, 
	[DefaultPrinterName] VarChar(255), 
	[UploadedSysSN] Long DEFAULT 0, 
	[DisplayList] Long DEFAULT 0, 
	[ExpireDateAccum] Long DEFAULT 0
)


