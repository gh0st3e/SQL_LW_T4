SELECT DISTINCT PROGRESS.NOTE FROM PROGRESS
WHERE PROGRESS.NOTE >= ALL(SELECT PROGRESS.NOTE FROM PROGRESS WHERE PROGRESS.SUBJECT like '����')

SELECT DISTINCT PROGRESS.NOTE FROM PROGRESS
WHERE PROGRESS.NOTE >= ANy(SELECT PROGRESS.NOTE FROM PROGRESS WHERE PROGRESS.SUBJECT like '����')