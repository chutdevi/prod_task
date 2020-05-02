SELECT

	*
FROM
(
		SELECT 
		  'PD06' AS PD
		 ,ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
		 ,'1' AS H
		 ,SUM(P1) AS D1
		 ,SUM(P2) AS D2
		 ,SUM(P3) AS D3
		 ,SUM(P4) AS D4
		 ,SUM(P5) AS D5
		 ,SUM(P6) AS D6
		 ,SUM(P7) AS D7
		 ,SUM(P8) AS D8
		 ,SUM(P9) AS D9
		 ,SUM(P10) AS D10
		 ,SUM(P11) AS D11
		 ,SUM(P12) AS D12
		 ,SUM(P13) AS D13
		 ,SUM(P14) AS D14
		 ,SUM(P15) AS D15
		 ,SUM(P16) AS D16
		 ,SUM(P17) AS D17
		 ,SUM(P18) AS D18
		 ,SUM(P19) AS D19
		 ,SUM(P20) AS D20
		 ,SUM(P21) AS D21
		 ,SUM(P22) AS D22
		 ,SUM(P23) AS D23
		 ,SUM(P24) AS D24
		 ,SUM(P25) AS D25
		 ,SUM(P26) AS D26
		 ,SUM(P27) AS D27
		 ,SUM(P28) AS D28
		 ,SUM(P29) AS D29
		 ,SUM(P30) AS D30
		 ,SUM(P31) AS D31
		FROM 
			PROD_MODEL_PHASE8
		WHERE
			  PM > 0
		AND LINE_NAME = 'MACHINING H/BEARING'
		GROUP BY
		  ITEM_NO
		 ,ITEM_NAME
		 ,MODEL

		UNION ALL

		SELECT
		  'PD06' AS PD
		 ,ITEM_NO
		 ,ITEM_NAME
		 ,MODEL 
		 ,'2' AS H
		 ,SUM(A1) AS D1
		 ,SUM(A2) AS D2
		 ,SUM(A3) AS D3
		 ,SUM(A4) AS D4
		 ,SUM(A5) AS D5
		 ,SUM(A6) AS D6
		 ,SUM(A7) AS D7
		 ,SUM(A8) AS D8
		 ,SUM(A9) AS D9
		 ,SUM(A10) AS D10
		 ,SUM(A11) AS D11
		 ,SUM(A12) AS D12
		 ,SUM(A13) AS D13
		 ,SUM(A14) AS D14
		 ,SUM(A15) AS D15
		 ,SUM(A16) AS D16
		 ,SUM(A17) AS D17
		 ,SUM(A18) AS D18
		 ,SUM(A19) AS D19
		 ,SUM(A20) AS D20
		 ,SUM(A21) AS D21
		 ,SUM(A22) AS D22
		 ,SUM(A23) AS D23
		 ,SUM(A24) AS D24
		 ,SUM(A25) AS D25
		 ,SUM(A26) AS D26
		 ,SUM(A27) AS D27
		 ,SUM(A28) AS D28
		 ,SUM(A29) AS D29
		 ,SUM(A30) AS D30
		 ,SUM(A31) AS D31
		FROM 
			PROD_MODEL_PHASE8
		WHERE
			  PM > 0
		AND LINE_NAME = 'MACHINING H/BEARING'
		GROUP BY
		  ITEM_NO
		 ,ITEM_NAME
		 ,MODEL

		UNION ALL

		SELECT 
		  'PD06' AS PD
		 ,ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
		 ,'3' AS H
		 ,SUM(D1) AS D1
		 ,SUM(D2) AS D2
		 ,SUM(D3) AS D3
		 ,SUM(D4) AS D4
		 ,SUM(D5) AS D5
		 ,SUM(D6) AS D6
		 ,SUM(D7) AS D7
		 ,SUM(D8) AS D8
		 ,SUM(D9) AS D9
		 ,SUM(D10) AS D10
		 ,SUM(D11) AS D11
		 ,SUM(D12) AS D12
		 ,SUM(D13) AS D13
		 ,SUM(D14) AS D14
		 ,SUM(D15) AS D15
		 ,SUM(D16) AS D16
		 ,SUM(D17) AS D17
		 ,SUM(D18) AS D18
		 ,SUM(D19) AS D19
		 ,SUM(D20) AS D20
		 ,SUM(D21) AS D21
		 ,SUM(D22) AS D22
		 ,SUM(D23) AS D23
		 ,SUM(D24) AS D24
		 ,SUM(D25) AS D25
		 ,SUM(D26) AS D26
		 ,SUM(D27) AS D27
		 ,SUM(D28) AS D28
		 ,SUM(D29) AS D29
		 ,SUM(D30) AS D30
		 ,SUM(D31) AS D31
		FROM 
			PROD_MODEL_PHASE8
		WHERE
			  PM > 0
		AND LINE_NAME = 'MACHINING H/BEARING'
		GROUP BY
		  ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
 
		UNION ALL

		SELECT 
		 'PD06' AS PD
		 ,ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
		 ,'4' AS H
		 ,NULL AS D1
		 ,NULL AS D2
		 ,NULL AS D3
		 ,NULL AS D4
		 ,NULL AS D5
		 ,NULL AS D6
		 ,NULL AS D7
		 ,NULL AS D8
		 ,NULL AS D9
		 ,NULL AS D10
		 ,NULL AS D11
		 ,NULL AS D12
		 ,NULL AS D13
		 ,NULL AS D14
		 ,NULL AS D15
		 ,NULL AS D16
		 ,NULL AS D17
		 ,NULL AS D18
		 ,NULL AS D19
		 ,NULL AS D20
		 ,NULL AS D21
		 ,NULL AS D22
		 ,NULL AS D23
		 ,NULL AS D24
		 ,NULL AS D25
		 ,NULL AS D26
		 ,NULL AS D27
		 ,NULL AS D28
		 ,NULL AS D29
		 ,NULL AS D30
		 ,NULL AS D31
		FROM 
			PROD_MODEL_PHASE8
		WHERE
			  PM > 0
		AND LINE_NAME = 'MACHINING H/BEARING'
		GROUP BY
		  ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
 
		UNION ALL

		SELECT 
		  'PD06' AS PD
		 ,ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
		 ,'5' AS H
		 ,SUM(N1)  AS D1
		 ,SUM(N2)  AS D2
		 ,SUM(N3)  AS D3
		 ,SUM(N4)  AS D4
		 ,SUM(N5)  AS D5
		 ,SUM(N6)  AS D6
		 ,SUM(N7)  AS D7
		 ,SUM(N8)  AS D8
		 ,SUM(N9)  AS D9
		 ,SUM(N10) AS D10
		 ,SUM(N11) AS D11
		 ,SUM(N12) AS D12
		 ,SUM(N13) AS D13
		 ,SUM(N14) AS D14
		 ,SUM(N15) AS D15
		 ,SUM(N16) AS D16
		 ,SUM(N17) AS D17
		 ,SUM(N18) AS D18
		 ,SUM(N19) AS D19
		 ,SUM(N20) AS D20
		 ,SUM(N21) AS D21
		 ,SUM(N22) AS D22
		 ,SUM(N23) AS D23
		 ,SUM(N24) AS D24
		 ,SUM(N25) AS D25
		 ,SUM(N26) AS D26
		 ,SUM(N27) AS D27
		 ,SUM(N28) AS D28
		 ,SUM(N29) AS D29
		 ,SUM(N30) AS D30
		 ,SUM(N31) AS D31
		FROM 
			PROD_MODEL_PHASE8
		WHERE
			  PM > 0
		AND LINE_NAME = 'MACHINING H/BEARING'
		GROUP BY
	      ITEM_NO
		 ,ITEM_NAME
		 ,MODEL
 	
) N



ORDER BY 4,2,5