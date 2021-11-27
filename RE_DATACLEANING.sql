select *
from [NEW PROFOLIO PROJECT].dbo.Real_es$

--REMOVING UNSOLD HOUSING DATA (NO CUSTOMER DATA)
	DELETE from [NEW PROFOLIO PROJECT].dbo.Real_es$
	where status is NULL
	select * 
	from [NEW PROFOLIO PROJECT].dbo.Real_es$

--REMOVING SALES DATA NOT FROM USA
	DELETE from [NEW PROFOLIO PROJECT].dbo.Real_es$
	WHERE Country != 'USA'
	select * 
	FROM [NEW PROFOLIO PROJECT].DBO.Real_es$

--CHANGING PRICE ATTRIBUTE FROM VARCHAR INTO AN INT
	  alter table [NEW PROFOLIO PROJECT].dbo.Real_es$
		add RATE varchar(255) 

	  UPDATE [NEW PROFOLIO PROJECT].dbo.Real_es$ 
	   SET RATE = replace(replace(Price,'$',''),',','')
	   WHERE Price is not Null

	  alter table [NEW PROFOLIO PROJECT].dbo.Real_es$
	    drop column Price
	  alter table [NEW PROFOLIO PROJECT].dbo.Real_es$
		add PRICE FLOAT

	  UPDATE [NEW PROFOLIO PROJECT].dbo.Real_es$ 
	   SET PRICE = CONVERT(float, [NEW PROFOLIO PROJECT].DBO.Real_es$.RATE)
	   WHERE PRICE is Null
      alter table [NEW PROFOLIO PROJECT].dbo.Real_es$
	    drop column RATE

--CREATING AN SINGLE DATE COLUMN FROM Y,M,D SEPERATED COLUMN (DOB OF CUSTOMERS)
	--SETTING FIRMS DATE AS 0
		update [NEW PROFOLIO PROJECT].dbo.Real_es$
		set  Y= 0, M=0, D=0
		WHERE Entity = 'Firm'
    
	--CREATING AN NEW DOB ATTRIBUTE AND INSERTING DATA
		alter table [NEW PROFOLIO PROJECT].dbo.Real_es$
		add CUSTOMERDOB DATE

		update [NEW PROFOLIO PROJECT].DBO.Real_es$
		set CUSTOMERDOB = CONVERT(DATE,CAST([Y] AS VARCHAR(4))+'-'+
						  CAST([M] AS VARCHAR(2))+'-'+
						  CAST([D] AS VARCHAR(2)))
		where [Customer ID] is not null
    
	--CHANGING THE DOB OF FIRMS BACK TO NULL
		update [NEW PROFOLIO PROJECT].dbo.Real_es$
		set CUSTOMERDOB = NULL
		WHERE Entity = 'Firm'

--REMOVING DATA ATTRIBUTES THAT MAY CREATE BIAS 
ALTER TABLE [NEW PROFOLIO PROJECT].DBO.Real_es$
DROP column [Name],[Surname],[Property #],[Y],[M],[D],[Deal satisfaction],[CUSTOMERDOB],[Mortgage],[Gender];
