SELECT [Transaction ID],
       Operation,
       Context,
       AllocUnitName
FROM fn_dblog(NULL, NULL)
WHERE Operation = 'LOP_DELETE_ROWS'
      AND AllocUnitName LIKE '%exit%'; --TBL NAME

--=====================================================================
SELECT Operation,
       [Transaction ID],
       [Begin Time],
       [Transaction Name],
       [Transaction SID]
FROM fn_dblog(NULL, NULL)
WHERE [Operation] = 'LOP_DELETE_ROWS'
      AND [Transaction ID] = '0000:03e343e4'
	
--=====================================================================
USE MASTER
GO   
SELECT SUSER_SNAME(0xC920D83B9ADF2744B70FB530A737390C)