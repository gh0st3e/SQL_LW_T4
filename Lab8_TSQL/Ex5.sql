DECLARE @AvgM float(8);
SET @AvgM = (SELECT AVG(PROGRESS.NOTE) FROM PROGRESS)

IF (@AvgM > 8) PRINT 'Average Mark > 8'
ELSE IF (@AvgM < 8 and @AvgM >=6) PRINT 'Average Mark < 8 but >=6'
ELSE IF (@AvgM < 6 and @AvgM >=4) PRINT 'Average Mark < 6 but >=4'
ELSE PRINT 'Marks are very bad'