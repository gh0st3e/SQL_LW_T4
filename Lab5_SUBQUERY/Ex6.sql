SELECT TOP 1
	(SELECT avg(PROGRESS.NOTE) FROM PROGRESS WHERE PROGRESS.SUBJECT like '����') [����],
	(SELECT avg(PROGRESS.NOTE) FROM PROGRESS WHERE PROGRESS.SUBJECT like '��') [��],
	(SELECT avg(PROGRESS.NOTE) FROM PROGRESS WHERE PROGRESS.SUBJECT like '����') [��]
	FROM PROGRESS
