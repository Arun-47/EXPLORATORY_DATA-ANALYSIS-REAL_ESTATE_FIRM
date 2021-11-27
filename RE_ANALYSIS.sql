SELECT * FROM [NEW PROFOLIO PROJECT].DBO.Real_es$

-- NUMBER, AND PERCENTAGE OF SALES FROM EACH STATE (Pareto chart)
	select [NEW PROFOLIO PROJECT].DBO.Real_es$.[State], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[State]) as Number_of_Customers
	FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
	group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[State]

--CUSTOMER ENTITY (INDIVIDUAL/FIRM) (PIR CHART)
  select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Entity], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Entity]) as Number
	FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
	group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Entity]

--INDIVIDUAL ANALYSIS
	   --AGE INTERVAL (HISTOGRAM)
	     	select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Interval], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Interval]) as Number
			FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
			WHERE Entity = 'Individual'
			group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Interval]

	       select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Age at time of purchase], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Age at time of purchase]) as Number
			FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
			WHERE Entity = 'Individual'
			group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Age at time of purchase]

	   --AGE VS PRICE (DOES AGE OF CUSTOMER IMPACT THE PRICE OF SALES) (SCATTER PLOT, COVARIANCE COFF)
	     select PRICE, [Age at time of purchase]
		 FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
		 WHERE Entity = 'Individual'

--FIRM ANALYSIS
	  --MODE OF ADVERTISEMENT
		select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Source], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Source]) as Number
		FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
		WHERE Entity = 'Firm'
		group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Source]

	  --PRODUCT OF ADVERTISEMENT
	    select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Type of property], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Type of property]) as Number
		FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
		WHERE Entity = 'Firm'
		group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Type of property]

	
--SOURCE OF ADVERTISEMENT (PIE CHART)
	  	   	select [NEW PROFOLIO PROJECT].DBO.Real_es$.[Source], count([NEW PROFOLIO PROJECT].DBO.Real_es$.[Source]) as Number
			FROM [NEW PROFOLIO PROJECT].DBO.Real_es$
			group by [NEW PROFOLIO PROJECT].DBO.Real_es$.[Source]
	    
