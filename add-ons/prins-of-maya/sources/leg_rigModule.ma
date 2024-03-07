//Maya ASCII 2023 scene
//Name: leg_rigModule.ma
//Last modified: Wed, Feb 21, 2024 05:10:18 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "floatCondition" -nodeType "floatConstant" -nodeType "floatLogic"
		 -nodeType "floatMath" "lookdevKit" "1.0";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "47B7A86F-49E5-66C7-6B80-65B672CD52BA";
createNode transform -n "leg";
	rename -uid "F4494D27-47FA-6EA8-A8DC-D48F6C6DA8D6";
createNode transform -n "install" -p "leg";
	rename -uid "F725688C-4337-2501-BE56-2F8C4F6FB4D5";
	setAttr ".v" no;
createNode transform -n "femur" -p "install";
	rename -uid "C2E249B1-4F4E-EE4A-DED5-098F96CC412C";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 13 0 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "femurShape" -p "femur";
	rename -uid "160818DE-471B-5E71-EB35-1A814DACADCF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.5 2.5 2.5 ;
createNode transform -n "tibia" -p "femur";
	rename -uid "5B18C24F-402D-56D1-9E2C-51BB8B466695";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 6 2.6645352591003757e-15 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "tibiaShape" -p "tibia";
	rename -uid "63C64A19-46D5-3B14-B82D-66A321410301";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.5 2.5 2.5 ;
createNode transform -n "ankle" -p "tibia";
	rename -uid "FB28008F-4B60-AF34-0CF9-569D69462F6D";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 6 2.6645352591003757e-15 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "ankleShape" -p "ankle";
	rename -uid "E3F02508-4E07-88A5-1112-48917638A77A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.5 2.5 2.5 ;
createNode transform -n "toes" -p "ankle";
	rename -uid "A9ABBC3D-4FFD-99ED-628F-8B896336DE7D";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0.5 4.4408920985006262e-16 3 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "toesShape" -p "toes";
	rename -uid "4D201EE2-46A7-42A3-AF35-C1AAF1DFB007";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2.5 2.5 2.5 ;
createNode transform -n "footTip" -p "toes";
	rename -uid "3BE90924-42C2-D0DC-BD78-31A294E6DA75";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.5 0 2 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "footTipShape" -p "footTip";
	rename -uid "AAED7421-4D48-EB1D-83E3-EC954939056D";
	setAttr -k off ".v";
createNode transform -n "footLeftSide" -p "toes";
	rename -uid "2C7682E5-48B9-FA4F-A523-E6A01D9BD741";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.5 1.5 -4.76837158203125e-07 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "footLeftSideShape" -p "footLeftSide";
	rename -uid "A104FEC4-462A-506D-7D4C-6B9A5E0D4EEA";
	setAttr -k off ".v";
createNode transform -n "footRightSide" -p "toes";
	rename -uid "F00645D3-4122-A16A-809A-A7857D6D6B38";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.5 -1.5 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "footRightSideShape" -p "footRightSide";
	rename -uid "E9D609E0-4ED7-B443-F488-B7BCE4443F60";
	setAttr -k off ".v";
createNode transform -n "footHeel" -p "toes";
	rename -uid "AA92A01C-4384-2336-793A-EEA327F9D1A2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.5 0 -4 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "footHeelShape" -p "footHeel";
	rename -uid "8CCB8F5C-4992-76AA-EE67-4A85BEBA2302";
	setAttr -k off ".v";
createNode transform -n "controllers_GRP" -p "leg";
	rename -uid "693D8D5B-428E-FA07-7ECE-5F98C32911B7";
createNode transform -n "parentAttach_BUF" -p "controllers_GRP";
	rename -uid "7F7CE953-4F29-F53F-0702-F4AA6A4C8232";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "FK_GRP" -p "controllers_GRP";
	rename -uid "088C06FF-471A-305C-30C1-809CE89938B2";
createNode transform -n "femur_FK_CON" -p "FK_GRP";
	rename -uid "2F5E00DD-4348-6B1D-65DD-D5BAF3C856A1";
createNode nurbsCurve -n "femur_FK_CONShape" -p "femur_FK_CON";
	rename -uid "1383745A-4CC8-FC30-37DB-7A8258BE8381";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1.3215237499162857 -1.3215237499162862
		-1.1443814946990468e-16 1.144381494699047e-16 -1.8689168101297624
		-3.3306690738754696e-16 -1.3215237499162855 -1.3215237499162857
		-1.6653345369377348e-16 -1.8689168101297633 -3.2551957429317372e-16
		0 -1.3215237499162857 1.3215237499162857
		1.1443814946990478e-16 -1.8721067508143186e-16 1.8689168101297633
		3.3306690738754696e-16 1.3215237499162855 1.3215237499162857
		1.6653345369377348e-16 1.8689168101297633 2.6228928694239273e-17
		0 1.3215237499162857 -1.3215237499162862
		-1.1443814946990468e-16 1.144381494699047e-16 -1.8689168101297624
		-3.3306690738754696e-16 -1.3215237499162855 -1.3215237499162857
		;
createNode transform -n "tibia_FK_CON" -p "femur_FK_CON";
	rename -uid "E6442369-43FD-8F64-0913-1FBB8B27C45F";
createNode nurbsCurve -n "tibia_FK_CONShape" -p "tibia_FK_CON";
	rename -uid "464483AE-4D76-EE29-CE08-7D8D59C5BA79";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1.3215237499162857 -1.3215237499162862
		-1.1443814946990468e-16 1.144381494699047e-16 -1.8689168101297624
		-3.3306690738754696e-16 -1.3215237499162855 -1.3215237499162857
		-1.6653345369377348e-16 -1.8689168101297633 -3.2551957429317372e-16
		0 -1.3215237499162857 1.3215237499162857
		1.1443814946990478e-16 -1.8721067508143186e-16 1.8689168101297633
		3.3306690738754696e-16 1.3215237499162855 1.3215237499162857
		1.6653345369377348e-16 1.8689168101297633 2.6228928694239273e-17
		0 1.3215237499162857 -1.3215237499162862
		-1.1443814946990468e-16 1.144381494699047e-16 -1.8689168101297624
		-3.3306690738754696e-16 -1.3215237499162855 -1.3215237499162857
		;
createNode transform -n "ankle_FK_CON" -p "tibia_FK_CON";
	rename -uid "F31ED8C4-4A92-A0B8-D9A5-90B9CF6AEA14";
createNode nurbsCurve -n "ankle_FK_CONShape" -p "ankle_FK_CON";
	rename -uid "45B7C2BD-48BC-EF8B-22C1-A385552A9D38";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.7829932198953704e-18 1.3215237499162857 -1.3215237499162862
		-3.4158470073889975e-18 3.4158470073891123e-18 -1.8689168101297624
		3.7829932198953704e-18 -1.3215237499162857 -1.3215237499162857
		5.9294144451153197e-17 -1.8689168101297635 -3.2551957429317372e-16
		3.7829932198953704e-18 -1.3215237499162857 1.3215237499162857
		2.2546045193242043e-16 -2.9823297754394746e-16 1.8689168101297633
		3.3684990060744233e-16 1.3215237499162855 1.3215237499162857
		1.7031644691366885e-16 1.8689168101297633 2.6228928694239273e-17
		3.7829932198953704e-18 1.3215237499162857 -1.3215237499162862
		-3.4158470073889975e-18 3.4158470073891123e-18 -1.8689168101297624
		3.7829932198953704e-18 -1.3215237499162857 -1.3215237499162857
		;
createNode transform -n "IK_GRP" -p "controllers_GRP";
	rename -uid "73BB4FD9-4915-4430-A5FA-CDB62DA9939F";
createNode transform -n "root_IK_CON" -p "IK_GRP";
	rename -uid "B7BD48A6-4A0F-BBB2-8068-DAAB1301D102";
createNode nurbsCurve -n "root_IK_CONShape" -p "root_IK_CON";
	rename -uid "D2222F56-4EF7-22D3-E7FE-4A8879BA7272";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		-5.5511151231257827e-17 -1.9767764991190997 -1.9767764991190986
		-5.5511151231257827e-17 -1.9767764991190997 -0.65892549970636638
		-5.5511151231257827e-17 -1.9767764991190997 0.65892549970636616
		-5.5511151231257827e-17 -1.9767764991190997 1.9767764991190979
		-5.5511151231257827e-17 -0.65892549970636682 1.9767764991190986
		2.7755575615628914e-17 0.65892549970636594 1.9767764991190986
		0 1.9767764991190977 1.9767764991190986
		0 1.9767764991190977 0.65892549970636638
		0 1.9767764991190977 -0.65892549970636616
		0 1.9767764991190977 -1.9767764991190979
		8.3266726846886741e-17 0.65892549970636605 -1.9767764991190986
		-5.5511151231257827e-17 -0.65892549970636649 -1.9767764991190986
		-5.5511151231257827e-17 -1.9767764991190988 -1.9767764991190986
		;
createNode transform -n "upVector_IK_CON" -p "IK_GRP";
	rename -uid "1AE58E25-4B27-74B8-DC2F-12B42258EB21";
	setAttr ".t" -type "double3" 0 0 10 ;
createNode nurbsCurve -n "upVector_IK_CONShape" -p "upVector_IK_CON";
	rename -uid "0D5F086A-4A75-5C0F-D3B2-9F9D8431C7F7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		0.88580124592666942 0.88580124592666809 2.4874763001980307e-17
		0.88580124592666942 0.29526708197555623 2.4874763001980307e-17
		0.88580124592666942 -0.29526708197555612 -3.7312144502970426e-17
		0.88580124592666942 -0.88580124592666765 0
		0.29526708197555662 -0.88580124592666809 -2.4874763001980307e-17
		-0.29526708197555579 -0.88580124592666809 -2.4874763001980307e-17
		-0.88580124592666809 -0.88580124592666809 -2.4874763001980307e-17
		-0.88580124592666809 -0.29526708197555623 -2.4874763001980307e-17
		-0.88580124592666809 0.29526708197555612 3.7312144502970426e-17
		-0.88580124592666809 0.88580124592666765 0
		-0.29526708197555579 0.88580124592666809 2.4874763001980307e-17
		0.29526708197555657 0.88580124592666809 2.4874763001980307e-17
		0.88580124592666831 0.88580124592666809 2.4874763001980307e-17
		;
createNode transform -n "ankle_IK_BUF" -p "IK_GRP";
	rename -uid "C712E52F-4586-D7E7-C1F9-929EAF71C2D6";
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "ankle_IK_CON" -p "ankle_IK_BUF";
	rename -uid "DD0CE8AF-4A44-2088-0A28-D2BB7BE3AC77";
createNode nurbsCurve -n "ankle_IK_CONShape" -p "ankle_IK_CON";
	rename -uid "D7CECE59-454D-E067-BEC5-508423693B27";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		-1.9767764991190981 -1.3225399995601573e-16 -1.9767764991190986
		-1.9767764991190981 -1.3225399995601573e-16 -0.65892549970636638
		-1.9767764991190981 -1.3225399995601573e-16 0.65892549970636616
		-1.9767764991190981 -1.3225399995601573e-16 1.9767764991190979
		-0.65892549970636538 2.5632405866278906e-16 1.9767764991190986
		0.65892549970636749 1.4530175620027341e-16 1.9767764991190986
		1.9767764991190995 3.1183520989404689e-16 1.9767764991190986
		1.9767764991190995 3.1183520989404689e-16 0.65892549970636638
		1.9767764991190995 3.1183520989404689e-16 -0.65892549970636616
		1.9767764991190995 3.1183520989404689e-16 -1.9767764991190979
		0.65892549970636749 3.4279453737757753e-17 -1.9767764991190986
		-0.65892549970636483 1.4530175620027341e-16 -1.9767764991190986
		-1.9767764991190968 -7.6742848724757901e-17 -1.9767764991190986
		;
createNode transform -n "heelPivot_BUF" -p "ankle_IK_CON";
	rename -uid "8FCD1C33-4439-29AC-21C3-4B9232858E4F";
createNode transform -n "toesPivot_BUF" -p "heelPivot_BUF";
	rename -uid "79684101-4C89-9FA7-1CDE-4E909904D1A8";
createNode transform -n "tipPivot_BUF" -p "toesPivot_BUF";
	rename -uid "BF6F80D8-4325-C7AA-551F-55BBF6E42591";
createNode transform -n "leftRoll_BUF" -p "tipPivot_BUF";
	rename -uid "95D3ABC0-4023-A2B7-2F6A-E48021F72F6D";
createNode transform -n "rightRoll_BUF" -p "leftRoll_BUF";
	rename -uid "7E28F4F1-4EB2-C6AE-DEB0-AAA5CF4E9520";
createNode transform -n "tipRoll_BUF" -p "rightRoll_BUF";
	rename -uid "24DA2892-49FB-7C16-D119-A5BEE2FFAD1E";
createNode transform -n "toesRoll_BUF" -p "tipRoll_BUF";
	rename -uid "3E771184-4969-7818-F2B7-2481D37518D0";
createNode transform -n "heelRoll_BUF" -p "toesRoll_BUF";
	rename -uid "0D2118A1-4054-2D31-B881-DDB3439EA699";
createNode transform -n "ankle_IK_childBUF" -p "heelRoll_BUF";
	rename -uid "CC0EFB05-44ED-7EE3-E328-6EAF37F3C57A";
	setAttr ".t" -type "double3" 5.5511151231257827e-16 -7.1991048526185785e-17 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "toesFromHeelRoll_BUF" -p "heelRoll_BUF";
	rename -uid "37D4D915-4E8F-72D6-D22D-90804628767A";
createNode transform -n "bend_GRP" -p "controllers_GRP";
	rename -uid "AAB8BD2C-499E-735A-E4D0-58B8B15789EB";
createNode transform -n "tibia_bend_CON" -p "bend_GRP";
	rename -uid "31E38F7D-4004-0294-D47F-528091A0A248";
createNode nurbsCurve -n "tibia_bend_CONShape" -p "tibia_bend_CON";
	rename -uid "CD9D8B43-45A7-4DA5-D1EC-0D82BB4B7791";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		1.7349699370748429e-15 0.88855352704956458 -0.88855352704956669
		2.3733481762343079e-15 0.82414555366454167 -2.4724366609936297
		2.3733481762343079e-15 -0.82414555366454501 -2.4724366609936297
		2.2068147225405344e-15 -0.88855352704956658 -0.8885535270495668
		1.3186363028404092e-15 -2.4724366609936301 -0.82414555366454367
		1.2353695759935225e-15 -2.4724366609936301 0.82414555366454245
		2.012525693231132e-15 -0.88855352704956758 0.88855352704956447
		1.8182366639217296e-15 -0.82414555366454534 2.4724366609936275
		1.8182366639217296e-15 0.82414555366454167 2.4724366609936275
		2.012525693231132e-15 0.88855352704956281 0.88855352704956447
		1.8737478151529875e-15 2.4724366609936257 0.8241455536645429
		2.040281268846761e-15 2.4724366609936257 -0.82414555366454312
		1.7349699370748429e-15 0.88855352704956458 -0.88855352704956625
		;
createNode transform -n "femur_bend_CON" -p "bend_GRP";
	rename -uid "3D69F91B-4FCA-33E6-EA3A-928A5595737E";
createNode nurbsCurve -n "femur_bend_CONShape" -p "femur_bend_CON";
	rename -uid "E5F806A2-44B2-F642-1A36-DD9A29F3B61D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		1.644553922994779e-15 -0.88855352704956569 -0.88855352704956536
		2.0053764059979549e-15 -0.8241455536645429 -2.4724366609936288
		2.0053764059979549e-15 0.82414555366454378 -2.4724366609936288
		1.5890427717635212e-15 0.88855352704956536 -0.88855352704956536
		1.7000650742260369e-15 2.4724366609936279 -0.82414555366454212
		1.644553922994779e-15 2.4724366609936279 0.82414555366454378
		1.6167983473791501e-15 0.88855352704956636 0.88855352704956603
		2.0053764059979549e-15 0.82414555366454401 2.4724366609936284
		2.0053764059979549e-15 -0.8241455536645429 2.4724366609936284
		1.6723094986104079e-15 -0.88855352704956425 0.88855352704956614
		2.0886431328448417e-15 -2.4724366609936279 0.82414555366454434
		2.2274210109229862e-15 -2.4724366609936279 -0.8241455536645419
		1.6167983473791501e-15 -0.88855352704956569 -0.88855352704956481
		;
createNode transform -n "options_BUF" -p "controllers_GRP";
	rename -uid "46EF6C01-4287-7B34-D4A4-7F8E8BA8E941";
createNode transform -n "options_CON" -p "options_BUF";
	rename -uid "930AB6F0-46F7-D019-B734-538901BC8CAB";
	addAttr -ci true -sn "blendFKIK" -ln "blendFKIK" -nn "Blend FK/IK" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -nn "Stretch IK" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "footRoll" -ln "footRoll" -nn "Foot Roll" -at "double";
	addAttr -ci true -sn "sideRoll" -ln "sideRoll" -nn "Side Roll" -at "double";
	addAttr -ci true -sn "tipPivot" -ln "tipPivot" -nn "Tip Pivot" -at "double";
	addAttr -ci true -sn "toesPivot" -ln "toesPivot" -nn "Toes Pivot" -at "double";
	addAttr -ci true -sn "heelPivot" -ln "heelPivot" -at "double";
	addAttr -ci true -sn "maxRoll" -ln "maxRoll" -nn "Max Roll" -at "double";
	addAttr -ci true -sn "minRoll" -ln "minRoll" -nn "Min Roll" -at "double";
	addAttr -ci true -sn "femurTorsion" -ln "femurTorsion" -nn "Femur Torsion" -min 
		0 -max 1 -at "double";
	addAttr -ci true -sn "tibiaTorsion" -ln "tibiaTorsion" -nn "Tibia Torsion" -dv 1 
		-min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 4 13 0 ;
	setAttr -k on ".blendFKIK" 0.5;
	setAttr -k on ".stretchIK";
	setAttr -k on ".footRoll";
	setAttr -k on ".sideRoll";
	setAttr -k on ".tipPivot";
	setAttr -k on ".toesPivot";
	setAttr -k on ".heelPivot";
	setAttr -k on ".maxRoll" 35;
	setAttr -k on ".minRoll";
	setAttr -k on ".femurTorsion" 1;
	setAttr -k on ".tibiaTorsion";
createNode nurbsCurve -n "options_CONShape" -p "options_CON";
	rename -uid "2F568339-40F6-8C7E-A5FB-488D1CE2328D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.072371649215667383 0.072371649215667522 3.5397157562533322e-16
		8.1244632001440913e-17 1.3268255313778088 2.6700157529199106e-16
		-0.072371649215667383 0.072371649215667508 3.3602771539025262e-16
		-1.3268255313778081 4.6755925880595645e-16 3.1987633083601704e-16
		-0.072371649215667383 -0.0723716492156673 3.1295703794514869e-16
		-1.3290902093564697e-16 -1.3268255313778083 5.3285250126499064e-16
		0.072371649215667383 -0.0723716492156673 3.2321067236519512e-16
		1.3268255313778081 2.1783765971818399e-16 3.1987633083601679e-16
		0.072371649215667383 0.072371649215667522 3.5397157562533322e-16
		8.1244632001440913e-17 1.3268255313778088 2.6700157529199106e-16
		-0.072371649215667383 0.072371649215667508 3.3602771539025262e-16
		;
createNode transform -n "toes_BUF" -p "controllers_GRP";
	rename -uid "B38923F1-4134-2E2B-7E27-2CA2B2F8819A";
createNode transform -n "toes_CON" -p "toes_BUF";
	rename -uid "AC875F61-4C92-B10A-FB8A-FDAD17E1785C";
createNode nurbsCurve -n "toes_CONShape" -p "toes_CON";
	rename -uid "11EC0BE1-4F77-50AF-37F3-68B5ECC8A7F2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122438 2.1812395446354165 8.3266726846886728e-17
		-0.23786012938639339 -1.3877787807814457e-17 -1.1102230246251565e-16
		-0.7836116248912246 -2.1812395446354169 2.7755575615628907e-17
		0 -2.1442380004425816 2.7515984952214958e-32
		0.78361162489122438 -2.1812395446354165 -2.775557561562892e-17
		0.23786012938639409 -4.8572257327350599e-17 1.6653345369377348e-16
		0.7836116248912246 2.1812395446354169 -2.775557561562892e-17
		0 2.1442380004425816 2.4434497041195381e-32
		-0.78361162489122438 2.1812395446354165 8.3266726846886728e-17
		-0.23786012938639339 -1.3877787807814457e-17 -1.1102230246251565e-16
		-0.7836116248912246 -2.1812395446354169 2.7755575615628907e-17
		;
createNode transform -n "algo_GRP" -p "leg";
	rename -uid "756B8F2D-4226-18C5-52EB-C9BF2CE2BAE7";
	setAttr ".v" no;
createNode joint -n "femur_IK_JNT" -p "algo_GRP";
	rename -uid "6AE7755D-4EA4-096E-26E1-9294892713B9";
	setAttr ".r" -type "double3" -1.4033418597069744e-14 6.7513632505859619e-38 5.5129064602843273e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode joint -n "tibia_IK_JNT" -p "femur_IK_JNT";
	rename -uid "15ABBFE9-48FD-0BFA-E669-B88B23F9A5D0";
	setAttr ".r" -type "double3" 0 4.501629751430304e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".pa" -type "double3" 0 90 0 ;
	setAttr ".radi" 0.75862068965517238;
createNode joint -n "ankle_IK_JNT" -p "tibia_IK_JNT";
	rename -uid "9F41E518-4626-3E7C-1BFA-A58E7BB55F74";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.99999999999999978 0 0 0 0 1;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode ikEffector -n "leg_IK_effector" -p "tibia_IK_JNT";
	rename -uid "E22952D0-453B-AE14-A352-428C224A797E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "leg_ikHandle" -p "algo_GRP";
	rename -uid "5DF6490F-4F87-F22E-3895-EA8364414253";
	setAttr ".v" no;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "leg_ikHandle_poleVectorConstraint1" -p "leg_ikHandle";
	rename -uid "C3061F61-48D2-F0CF-FB31-F0831983FCB5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upVector_IK_CONW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -6 10 ;
	setAttr -k on ".w0";
createNode joint -n "femur_FK_JNT" -p "algo_GRP";
	rename -uid "2572FADB-4BFC-D2BA-2630-ADB05EED1D4A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode joint -n "tibia_FK_JNT" -p "femur_FK_JNT";
	rename -uid "5F57598A-4FD9-39F2-89B6-DFAB7581E924";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode joint -n "ankle_FK_JNT" -p "tibia_FK_JNT";
	rename -uid "40848CE1-4A99-81FF-282E-E8901D65163F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode joint -n "toes_FK_JNT" -p "ankle_FK_JNT";
	rename -uid "4D6EE6B1-4C92-628E-0560-1380D9600980";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.75862068965517238;
createNode transform -n "bones_GRP" -p "leg";
	rename -uid "2D285EB2-4D98-1275-CC0E-069F62E2FA06";
createNode joint -n "bone000_JNT" -p "bones_GRP";
	rename -uid "BB9D86BB-46B4-4671-E826-368D6B250AB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 13 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone001_JNT" -p "bones_GRP";
	rename -uid "ED5030D2-4295-DCD1-224B-F0BA0A928DF9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 11.5 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone002_JNT" -p "bones_GRP";
	rename -uid "367F7C94-430F-1BEA-67E1-2886143845BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 10 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone003_JNT" -p "bones_GRP";
	rename -uid "1D3ABCBB-4697-9F6F-21FE-3083C373B798";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 8.5 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone004_JNT" -p "bones_GRP";
	rename -uid "8E36B6D7-48BB-5523-8040-74AB04D9585E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 7 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone005_JNT" -p "bones_GRP";
	rename -uid "F75CC22E-4BD7-2623-23D7-4691391E4686";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 5.5 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone006_JNT" -p "bones_GRP";
	rename -uid "F545EA80-4795-1510-8445-46BA761FF19A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 4 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone007_JNT" -p "bones_GRP";
	rename -uid "FDBBE681-4EF8-763D-29A4-7F90F902E266";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 2.5 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone008_JNT" -p "bones_GRP";
	rename -uid "8E67E765-4DBD-4926-60C3-70AC360C9E56";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 1 0 1;
	setAttr ".radi" 0.4;
createNode joint -n "bone009_JNT" -p "bones_GRP";
	rename -uid "7E53C1DE-46C6-27E3-4EC5-3C9B8E086B19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -1 0 0 1 -4.4408920985006262e-16 0 0
		 0 0 1 0 0 0 3 1;
	setAttr ".radi" 0.4;
createNode multMatrix -n "femurToParentAttachBUFConstraint";
	rename -uid "A8C383A9-43E5-53C0-F79F-7DB4318F4DF2";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockFemurWorldMatrix";
	rename -uid "7D2D9B71-4836-0B1B-516E-67903421CC91";
createNode floatConstant -n "nodeStocker";
	rename -uid "63AA1507-4F4D-E64D-86F1-9E8A9C453F16";
	setAttr "._f" 0;
createNode floatLogic -n "getFKVisibility";
	rename -uid "C7D9F084-456F-32D8-3E89-499309C47DB2";
	setAttr "._op" 2;
createNode multMatrix -n "femurToFemurFKCONConstraint";
	rename -uid "F6199CDC-46F2-EC66-C2FE-76AFBFE195BE";
	setAttr -s 2 ".i";
createNode multMatrix -n "getTibiaLocalMatrix";
	rename -uid "B155D1CF-44D5-F0E5-2A6A-AC91CE9AFA95";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockTibiaWorldMatrix";
	rename -uid "FFB61DFA-4A44-9A48-4D3D-16AD409AD8A6";
createNode inverseMatrix -n "femurInverseWorldMatrix";
	rename -uid "D6C165A5-48B4-6141-1935-918C761C9717";
createNode multMatrix -n "getAnkleLocalMatrix";
	rename -uid "41D3D8E1-4D94-9A20-12E0-99B0CA4819DA";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockAnkleWorldMatrix";
	rename -uid "DDC294CF-4AF0-23C2-B818-1EB7BDADD63A";
createNode inverseMatrix -n "tibiaInverseWorldMatrix";
	rename -uid "87E31E5C-441D-7B2A-B6CF-15B8F264D8D6";
createNode floatLogic -n "getIKVisibility";
	rename -uid "C335E53F-43B2-766A-04A1-6BB8E8793B52";
	setAttr "._ab" 0;
	setAttr "._op" 3;
createNode multMatrix -n "parentAttachToRootIKCONConstraint";
	rename -uid "9A23A3A5-4660-E179-BAC6-29B25429F86F";
	setAttr -s 2 ".i";
createNode multMatrix -n "tibiaToUpVectorIKCONConstraint";
	rename -uid "A910F714-4226-05F8-45E4-8AB39DD9B1D8";
	setAttr -s 2 ".i";
createNode multMatrix -n "ankleToAnkleIKCONConstraint";
	rename -uid "1C9DE561-481B-48E8-7328-C7ACDDCF6023";
	setAttr -s 2 ".i";
createNode multMatrix -n "getHeelPivotBUFParentMatrix";
	rename -uid "2B3BC1A6-4CF6-1048-35AD-C0AD4B288D24";
	setAttr -s 3 ".i";
createNode pickMatrix -n "stockFootHeelWorldMatrix";
	rename -uid "B276D291-43F4-C705-8111-1EA2D232BF93";
createNode inverseMatrix -n "ankleInverseWorldMatrix";
	rename -uid "40CAC372-4AE9-2E40-FA60-549972DE1FCB";
createNode composeMatrix -n "getAnkleIKCONRotationOffset";
	rename -uid "B503BA89-44BB-D695-419C-FCB1C6B294B4";
	setAttr ".ir" -type "double3" 0 0 -90 ;
createNode unitConversion -n "unitConversion8";
	rename -uid "6C639956-44D4-380E-8556-FBA8A015BAB1";
	setAttr ".cf" 0.017453292519943295;
createNode multMatrix -n "getToesPivotBUFParentMatrix";
	rename -uid "D3183F87-42FF-9ED7-DB10-9AAA397E044A";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockToesWorldMatrix";
	rename -uid "54E1E3C3-4B6F-9588-3E5B-DF8456CC134A";
createNode inverseMatrix -n "footHeelInverseWorldMatrix";
	rename -uid "D19D0259-4859-680E-2B3C-67AB11E5C841";
createNode unitConversion -n "unitConversion7";
	rename -uid "2935F1F1-4D2C-661A-C823-5C8CC897BBC3";
	setAttr ".cf" 0.017453292519943295;
createNode multMatrix -n "getTipPivotBUFParentMatrix";
	rename -uid "3ACF1BF7-428A-2FAC-0F8B-4D992299D29A";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockFootTipWorldMatrix";
	rename -uid "8D67AC7C-4BF1-50E6-BAB2-5099023B3EEC";
createNode inverseMatrix -n "toesInverseWorldMatrix";
	rename -uid "204BBF9B-471E-F1BB-779F-38BEB4912DC5";
createNode unitConversion -n "unitConversion6";
	rename -uid "FFC99217-46CA-5AC1-0AC6-DFA27D14474F";
	setAttr ".cf" 0.017453292519943295;
createNode multMatrix -n "getLeftRollBUFParentMatrix";
	rename -uid "DB8A44A7-4097-32CD-5502-BBA38C23B70B";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockFootLeftSideWorldMatrix";
	rename -uid "9CCD4C93-40A4-B175-9DD9-7BAAFAB26C91";
createNode inverseMatrix -n "footTipInverseWorldMatrix";
	rename -uid "A124F377-455F-909A-BD60-3E845B20DF66";
createNode unitConversion -n "unitConversion4";
	rename -uid "0850AF93-4105-677E-20AF-9FBBDC09D17E";
	setAttr ".cf" 0.017453292519943295;
createNode floatCondition -n "leftRollCondition";
	rename -uid "3F4E1CB4-4DF5-5841-82D3-F393FAB742DF";
	setAttr "._fb" 0;
createNode floatLogic -n "sideRollLogic";
	rename -uid "83D7B3C1-41EA-D03B-3043-16B1D7282579";
	setAttr "._ab" 0;
	setAttr "._op" 3;
createNode floatMath -n "getNegativeSideRoll";
	rename -uid "98C73E3C-4874-3C74-984C-5891BEB36A31";
	setAttr "._fb" -1;
	setAttr "._cnd" 2;
createNode multMatrix -n "getRightRollBUFParentMatrix";
	rename -uid "8AB1C6C9-4A80-5841-DA46-4B9C8EDC60A3";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockFootRightSideWorldMatrix";
	rename -uid "FE0D4542-40FD-8F45-D80B-56B050337923";
createNode inverseMatrix -n "foolLeftSideInverseWorldMatrix";
	rename -uid "382A5578-4EA1-2D7A-0C13-0BAC0BB5B652";
createNode unitConversion -n "unitConversion5";
	rename -uid "AB8DC8B0-4B97-F82D-EF84-3E9389213C6A";
	setAttr ".cf" 0.017453292519943295;
createNode floatCondition -n "rightRollCondition";
	rename -uid "AF2D17E9-4BB5-980E-832B-8383B1A465D2";
	setAttr "._fa" 0;
createNode multMatrix -n "getTipRollBUFParentMatrix";
	rename -uid "A1F0496F-461E-7559-7889-A7ABBDAB498C";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "footRightSideInverseWorldMatrix";
	rename -uid "30917633-403D-5CA9-45C4-0B8CA3734783";
createNode unitConversion -n "unitConversion3";
	rename -uid "0904E137-4E8E-33B5-2614-529D2A6699EF";
	setAttr ".cf" 0.017453292519943295;
createNode floatCondition -n "tipRollCondition";
	rename -uid "40F31B93-4523-2511-6278-66988A3F5272";
	setAttr "._fb" 0;
createNode floatLogic -n "tipRollLogic";
	rename -uid "1E2C096E-4860-A142-5024-1AB38727ADF5";
	setAttr "._op" 3;
createNode floatMath -n "getTipRoll";
	rename -uid "B2D5F469-4AB5-7329-7F9F-349E4510E97B";
	setAttr "._cnd" 1;
createNode multMatrix -n "getToesRollBURParentMatrix";
	rename -uid "C638103D-4572-419E-5E7D-D58BD6253004";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "E053F66E-4154-BB19-53CA-5288CAFEABDB";
	setAttr ".cf" 0.017453292519943295;
createNode floatCondition -n "toesRollMaxCondition";
	rename -uid "42DB64BC-4421-FC7D-01AF-FA832FAC0EFE";
createNode floatLogic -n "toesRollMaxLogic";
	rename -uid "4A56966E-4F94-ABE0-1F2E-AAB9CA52482B";
	setAttr "._op" 2;
createNode floatCondition -n "toesRollMinCondition";
	rename -uid "0169E403-4886-24EF-D0E1-2D9BDA06A9A6";
createNode floatLogic -n "toesRollMinLogic";
	rename -uid "3E7D7C0C-4019-589D-44A7-D6BB9BBEA77B";
	setAttr "._op" 3;
createNode multMatrix -n "getHeelRollBUFParentMatrix";
	rename -uid "3A94B885-4ECC-CA63-47F0-33A20D65AAAD";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion1";
	rename -uid "1DD32DEB-411C-4EA8-DAA6-C59D907C7A63";
	setAttr ".cf" 0.017453292519943295;
createNode floatCondition -n "heelRollCondition";
	rename -uid "ACADAA10-4B1D-8B6A-B8E0-1F943200BE63";
	setAttr "._fb" 0;
createNode floatLogic -n "heelRollLogic";
	rename -uid "D722EFE7-4BAC-222F-5741-00B593BC1731";
	setAttr "._op" 2;
createNode floatMath -n "getHeelRoll";
	rename -uid "C503CF04-4F52-B5A1-74D5-548E83EC0A06";
	setAttr "._cnd" 1;
createNode multMatrix -n "getAnkleIKChildBUFParentMatrix";
	rename -uid "5E955780-4A77-BAD9-CC2C-8D8B06664DA4";
	setAttr -s 2 ".i";
createNode multMatrix -n "getToesFromHeelRollBUFParentMatrix";
	rename -uid "2B1E4C98-41DD-EBC9-843F-C7991811BEAF";
	setAttr -s 2 ".i";
createNode multMatrix -n "tibiaBendCONConstraintMatrix";
	rename -uid "C30658E5-4A11-35F3-3E46-B6B4FA671146";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone006JNTParentMatrix";
	rename -uid "7CCD6C69-4C95-A7CC-08E3-599A8D9E4D59";
	setAttr ".env" 0.5;
createNode blendMatrix -n "getBone008JNTWorldMatrixWithBone004JNTRotation";
	rename -uid "2FE4FFD4-40DA-DE6F-AA02-3FA25B0C0E7A";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].tra" 0;
	setAttr ".tgt[0].she" 0;
createNode multMatrix -n "femurBendCONConstraintMatrix";
	rename -uid "4757CCF1-4D11-519E-B7FC-D5A13618DF60";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone002JNTParentMatrix";
	rename -uid "E7685A9B-4F4E-C96E-D99B-409E87263334";
	setAttr ".env" 0.5;
createNode blendMatrix -n "getBone004JNTWorldMatrixWithBone000JNTRotation";
	rename -uid "12D4B1C0-405D-CD3E-DF53-A18561DA1DF1";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].tra" 0;
	setAttr ".tgt[0].she" 0;
createNode multMatrix -n "getToesBUFParentMatrix";
	rename -uid "D1B0C7FE-4A8E-98F3-38B2-9AAEC2DEB632";
	setAttr -s 3 ".i";
createNode blendMatrix -n "blendFKIKToesBUFParentMatrix";
	rename -uid "7DBA2B46-49F8-501B-7C59-6C96B6CD54C1";
createNode multMatrix -n "getToesLocalMatrix";
	rename -uid "F24624AD-4549-6713-2F3B-A78798E55C6E";
	setAttr -s 2 ".i";
createNode multMatrix -n "getToesBUFFKLocalMatrix";
	rename -uid "AC10731C-4464-1AF0-8DA5-9BBC9EB4BB1F";
	setAttr -s 2 ".i";
createNode blendMatrix -n "toesBUFIKFootRollCompensationCondition";
	rename -uid "47925462-4CCF-9237-B60C-C1A6403E8E61";
createNode aimMatrix -n "toesRollBUFToTipRollBUFAimMatrix";
	rename -uid "A9BE876B-4352-F39B-486A-FDBBBA9292F0";
	setAttr ".pmi" -type "double3" 0 0 1 ;
createNode multMatrix -n "getToesRollBUFTargetAimMatrix";
	rename -uid "1F6BE854-483D-8A84-7FFC-E8BC3F857C8A";
	setAttr -s 2 ".i";
createNode composeMatrix -n "getTipRollBUFTargetHeightMatrix";
	rename -uid "BBAC45F2-4D84-72CB-B57E-C8B85908D67C";
createNode floatMath -n "negativeToesWorldTranslateY";
	rename -uid "1D967018-46E5-1BEB-70AD-EBB01C8FAFB3";
	setAttr "._fb" -1;
	setAttr "._cnd" 2;
createNode decomposeMatrix -n "decomposeToesWorldMatrix";
	rename -uid "9FDB38AA-4954-1729-04E5-D39C0E0998A2";
createNode multMatrix -n "rootIKCONToFemurIKJNTConstraint";
	rename -uid "E6D33B42-4CA1-B812-9DDC-B38B1DAAAAF6";
	setAttr -s 2 ".i";
createNode setRange -n "blendStretchIK";
	rename -uid "3AF73F9A-43A3-97DA-A373-A1BDFD7B11F3";
	setAttr ".n" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode floatCondition -n "stretchIKCondition";
	rename -uid "B95954E6-428C-1AB2-6E0C-3089492614DE";
createNode floatLogic -n "stretchIKLogic";
	rename -uid "FD200762-433B-18F2-DAFD-87B8CDACB4A9";
	setAttr "._op" 3;
createNode distanceBetween -n "getCurrentLegLength";
	rename -uid "BAD219BB-44B6-9336-D81E-36AEA14FD678";
createNode floatMath -n "getFullScaledLegLength";
	rename -uid "8D42341E-41DC-081B-4C74-F7AB8AE7349E";
	setAttr "._cnd" 2;
createNode floatMath -n "getScaledLegLength";
	rename -uid "C7E4E007-4C17-E062-27B6-B298D6457CF6";
	setAttr "._cnd" 2;
createNode floatMath -n "getOrigLegLength";
	rename -uid "24B42B06-4CEE-2E02-8523-199111AC48AF";
createNode distanceBetween -n "femurLength";
	rename -uid "7337F34D-4554-E07B-593C-80BB1359F72D";
createNode distanceBetween -n "tibiaLength";
	rename -uid "121A11D9-4EBB-BBF6-CDC3-3F8CF127BC82";
createNode decomposeMatrix -n "decomposeParentAttachBUFWorldMatrix";
	rename -uid "FC8C65AF-4C9A-A18B-CCB6-78AFB8BE2269";
createNode floatMath -n "getStretchFactor";
	rename -uid "C0917028-4F7C-DE1D-2953-5290733C6CDF";
	setAttr "._cnd" 3;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "2D190DD3-4ABC-E3D8-A800-008F9CF2FEC5";
createNode multMatrix -n "ankleIKChildBUFToLegIkHandleConstraint";
	rename -uid "FD4433DC-4C47-AFAA-A0B8-33ACA32620A1";
	setAttr -s 2 ".i";
createNode multMatrix -n "femurFKCONToFemurFKJNTConstraint";
	rename -uid "170A7634-4D87-C6AA-F064-85B494DCE5A7";
	setAttr -s 2 ".i";
createNode multMatrix -n "tibiaFKCONToTibiaFKJNTConstraint";
	rename -uid "700AB9D0-4B7E-1964-F977-7E8A0AAC97B3";
	setAttr -s 2 ".i";
createNode multMatrix -n "ankleFKCONToAnkleFKJNTConstraint";
	rename -uid "2E4ECD66-4060-3E81-8954-3587599B7FD6";
	setAttr -s 2 ".i";
createNode blendMatrix -n "blendFKIKBone000JNTParentMatrix";
	rename -uid "61866909-48AD-9458-05E6-A7BA3A0F2121";
createNode multMatrix -n "femurFKJNTToBone000JNTConstraint";
	rename -uid "E0EEB37B-41FA-2241-F032-4D8643483782";
	setAttr -s 2 ".i";
createNode multMatrix -n "femurIKJNTToBone000JNTConstraint";
	rename -uid "6725C7C9-478B-82B7-B86F-3FAFDEFF321B";
	setAttr -s 2 ".i";
createNode multMatrix -n "bone001JNTConstraintMatrix";
	rename -uid "B7CAD42B-401E-BAFF-2856-F9BF57984928";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone001JNTParentMatrix";
	rename -uid "7281225C-4190-0D39-30D0-C99D918448E6";
	setAttr ".env" 0.25;
createNode decomposeMatrix -n "decomposeBone001JNTLocalMatrix";
	rename -uid "EBB404CF-4C29-D007-EE76-A49894C40E98";
createNode blendMatrix -n "getBone001JNTLocalMatrix";
	rename -uid "104A562A-47F4-108A-40BF-BB8F388CA6DA";
	setAttr ".env" 0.66;
createNode unitConversion -n "unitConversion13";
	rename -uid "647C9EEA-4BF3-2069-340C-DAA7FF682347";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone001JNTRotationX";
	rename -uid "6CA3A742-4798-0C36-0203-31B87BE7618B";
createNode unitConversion -n "unitConversion12";
	rename -uid "66F4A590-4CC3-D79B-EE56-2299E7936CE8";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "blendFemurTorsionValues";
	rename -uid "5E487B53-4615-11E6-0D93-97A3DBD724C5";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "getFemurTorsionValues";
	rename -uid "77B2CDCF-46CF-28F6-CB99-A8AB522C103B";
	setAttr ".i2" -type "float3" 0.25 0.5 0.75 ;
createNode unitConversion -n "unitConversion9";
	rename -uid "502F1D91-43EC-16B2-8F8A-40888B094B42";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeBone004JNTTransformedLocalMatrix";
	rename -uid "C1D13C5B-404C-C570-1C76-E9843052F430";
createNode multMatrix -n "bone004JNTTransformedLocalMatrix";
	rename -uid "6490970A-4643-6E74-8B3C-989D926A6EF9";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion10";
	rename -uid "373F79EC-4AA8-31B5-B322-B4A60CFCA275";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "1C61BD2A-4EF9-59CD-16E2-58A8BFFDDFCF";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeBone000JNTToFemurBendCONLocalAimMatrix";
	rename -uid "F65C49DA-4855-4C0E-BCE6-94BF2CABD4BF";
createNode multMatrix -n "bone000JNTToFemurBendCONLocalAimMatrix";
	rename -uid "AF280D1B-4338-B4A1-58A1-43AC8850DA41";
	setAttr -s 2 ".i";
createNode aimMatrix -n "bone000JNTToFemurBendCONAimMatrix";
	rename -uid "2A2D8312-40B1-C5C9-F824-6B8D0DC0D5CF";
createNode multMatrix -n "bone002JNTConstraintMatrix";
	rename -uid "F88F890B-4263-7CCC-7EB4-1A94EB3B7856";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeBone002JNTLocalMatrix";
	rename -uid "CC120AD4-42BA-7580-DD12-448B27C0FB57";
createNode unitConversion -n "unitConversion14";
	rename -uid "392C5062-4A5C-198D-26C9-DA87CA0F63D5";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone002JNTRotationX";
	rename -uid "738FC7C8-44DB-A639-DE1F-F5A6F418A95C";
createNode unitConversion -n "unitConversion15";
	rename -uid "831F8671-4B6C-8F4D-D222-1280FBEE01FE";
	setAttr ".cf" 57.295779513082323;
createNode multMatrix -n "bone003JNTConstraintMatrix";
	rename -uid "0F28A405-4237-FA7E-308C-C6B137606639";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone003JNTParentMatrix";
	rename -uid "C7CD404B-4B77-4C7D-5017-FCA531B9C803";
	setAttr ".env" 0.75;
createNode decomposeMatrix -n "decomposeBone003JNTLocalMatrix";
	rename -uid "514ACB4E-480E-FC21-A7E7-DE87ACEFAB77";
createNode blendMatrix -n "getBone003JNTLocalMatrix";
	rename -uid "7FE880B4-4B75-4E00-F1BF-D483A57733D1";
	setAttr ".env" 0.66;
createNode unitConversion -n "unitConversion17";
	rename -uid "BB2DC9A9-4E88-82F9-7253-85B6B8CA00F3";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone003JNTRotationX";
	rename -uid "3FD77015-431A-C0EB-4026-F5BACACC7250";
createNode unitConversion -n "unitConversion16";
	rename -uid "049C044F-4D28-5F98-67F1-4ABFF47BF9CE";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeFemurBendCONToBone004JNTLocalAimMatrix";
	rename -uid "A45BE4D9-4EA5-1F44-26A4-6F8DDCBD7A62";
createNode multMatrix -n "femurBendCONToBone004JNTLocalAimMatrix";
	rename -uid "618FF8D5-4FCD-5FD8-E8DB-10A0C11C769C";
	setAttr -s 2 ".i";
createNode aimMatrix -n "femurBendCONToBone004JNTAimMatrix";
	rename -uid "335088E2-4ED1-E64E-47AC-EBA47901D745";
createNode multMatrix -n "getBone004JNTParentMatrix";
	rename -uid "5D375644-453E-90E6-83DB-2BB2760CD886";
	setAttr -s 3 ".i";
createNode blendMatrix -n "blendFKIKBone004JNTLocalMatrix";
	rename -uid "6EBD8139-4D12-F0A6-A1E1-C392A19D0F65";
createNode multMatrix -n "getTibiaFKJNTLocalMatrix";
	rename -uid "DE62D223-4CAE-EC27-EABD-4EAE49ED7F4B";
	setAttr -s 2 ".i";
createNode multMatrix -n "getTibiaIKJNTLocalMatrix";
	rename -uid "EDC784CE-4AF0-1527-C799-28A43EC61DD0";
	setAttr -s 2 ".i";
createNode multMatrix -n "bone005JNTConstraintMatrix";
	rename -uid "DE2EF66D-4C26-064A-24AD-2DBF61AAE71C";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone005JNTParentMatrix";
	rename -uid "FD89F0D8-4B6B-5209-99FF-F4BDE24BBB70";
	setAttr ".env" 0.25;
createNode decomposeMatrix -n "decomposeBone005JNTLocalMatrix";
	rename -uid "2010F9FA-4C60-01D5-C716-1CB271985BE3";
createNode blendMatrix -n "getBone005JNTLocalMatrix";
	rename -uid "40AD2F8B-4FDF-6BD7-9B42-86B6ABFA25BE";
	setAttr ".env" 0.66;
createNode unitConversion -n "unitConversion22";
	rename -uid "30902E4F-433F-85C1-954B-C7A5E5EFADC8";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone005JNTRotationX";
	rename -uid "742347DC-434E-6083-328A-26A42655188E";
createNode unitConversion -n "unitConversion21";
	rename -uid "E48DBE4A-4593-FA12-76B5-F78F2CB707DA";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "blendTibiaTorsionValues";
	rename -uid "E5DC8D0A-4200-1BBE-EB17-B4B7E2B49525";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "getTibiaTorsionValues";
	rename -uid "517CFF55-47AD-D60D-A166-7F9092C93E82";
	setAttr ".i2" -type "float3" 0.25 0.5 0.75 ;
createNode unitConversion -n "unitConversion18";
	rename -uid "82D04A85-4E4A-FD52-6513-25AF021464AD";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeBone008JNTTransformedLocalMatrix";
	rename -uid "B3F03549-42B0-A422-5E2E-6DA9A6D50CB3";
createNode multMatrix -n "getBone008JNTTransformedLocalMatrix";
	rename -uid "30E00ED9-45FB-1103-7966-3E96D7DE6594";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion19";
	rename -uid "C0EEF923-4467-A7B0-DFE9-09AC71FD76CC";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion20";
	rename -uid "376D25DC-4BDA-EA4B-6605-41BFAE2FAEEC";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeBone004JNTToTibiaBendCONLocalAimMatrix";
	rename -uid "398D5797-4EDB-C3B9-BDFB-DCAF7D20C135";
createNode multMatrix -n "bone004JNTToTibiaBendCONLocalAimMatrix";
	rename -uid "744D6E9E-4DDC-369A-5356-B1915583B638";
	setAttr -s 2 ".i";
createNode aimMatrix -n "bone004JNTToTibiaBendCONAimMatrix";
	rename -uid "95A63C8F-4A32-412E-C621-54937399E02E";
createNode multMatrix -n "bone006JNTConstraintMatrix";
	rename -uid "8849B95C-4808-B101-A990-FF8FF50895F7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeBone006JNTLocalMatrix";
	rename -uid "154D8D5C-4069-58B9-EEA2-73B38486EEA8";
createNode unitConversion -n "unitConversion23";
	rename -uid "D4A145C0-4381-F655-9326-8B8436633460";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone006JNTRotationX";
	rename -uid "0E5E3793-46A9-FE8C-3FBD-0A998C15DC8F";
createNode unitConversion -n "unitConversion24";
	rename -uid "F5327EFA-42D5-C512-3983-A18E9650D1BB";
	setAttr ".cf" 57.295779513082323;
createNode multMatrix -n "bone007JNTConstraintMatrix";
	rename -uid "A50183DB-4C63-7317-9175-36A9214F00A6";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBone007JNTParentMatrix";
	rename -uid "DE50EE92-4BC0-E732-6ABD-07B0E8D17413";
	setAttr ".env" 0.75;
createNode decomposeMatrix -n "decomposeBone007JNTLocalMatrix";
	rename -uid "DEDBCE5F-4BAD-7899-B71E-A7B4BC79EE60";
createNode blendMatrix -n "getBone007JNTLocalMatrix";
	rename -uid "250EAD6E-42E6-09EB-22F6-11BDCA088D9D";
	setAttr ".env" 0.66;
createNode unitConversion -n "unitConversion26";
	rename -uid "A81561AA-48D9-5A9C-9DAD-8CA7B1A0187D";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone007JNTRotationX";
	rename -uid "0713A5D2-4023-C41D-D620-3B864B214F5E";
createNode unitConversion -n "unitConversion25";
	rename -uid "6DD6608F-4221-B6A6-B505-10B0974918F2";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "decomposeTibiaBendCONToBone008JNTLocalAimMatrix";
	rename -uid "A809BFBF-4179-1B11-0E59-2DB0F50F3EB3";
createNode multMatrix -n "tibiaBendCONToBone008JNTLocalAimMatrix";
	rename -uid "1B2E0269-475E-EE3E-0463-67BECA20E9F6";
	setAttr -s 2 ".i";
createNode aimMatrix -n "tibiaBendCONToBone008JNTAimMatrix";
	rename -uid "D75767AF-464E-41E9-2A6F-ABB0F25A9ED3";
createNode multMatrix -n "getBone008JNTParentMatrix";
	rename -uid "FADFC20C-4121-E90A-6D52-C2B657D2957D";
	setAttr -s 3 ".i";
createNode blendMatrix -n "blendFKIKBone008JNTLocalMatrix";
	rename -uid "283AC90D-4426-48FE-3050-B09CFE2EDA46";
createNode multMatrix -n "getAnkleFKJNTLocalMatrix";
	rename -uid "672E11DA-4A13-2964-182C-7DA65D0EBCAA";
	setAttr -s 2 ".i";
createNode multMatrix -n "getAnkleIKJNTLocalMatrix";
	rename -uid "24135682-4B4B-D6C9-7C82-8CA6109A55AC";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getAnkleIKChildBUFWithAnkleIKJNTTranslation";
	rename -uid "4F5CC08F-4FCF-3246-2B46-ED8C3AAA2144";
	setAttr ".tgt[0].tra" 0;
createNode blendMatrix -n "smoothBone008JNTBlendDistorsion";
	rename -uid "6B782417-4946-175F-0004-D59F02278E92";
	setAttr -s 2 ".tgt";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
	setAttr ".tgt[1].tra" 0;
	setAttr ".tgt[1].rot" 0;
createNode composeMatrix -n "identityMatrix";
	rename -uid "5811252F-41F0-7BBA-885D-F4A69C63FE50";
createNode floatMath -n "getInvertedBlendFKIKFloat";
	rename -uid "9F3318F6-4CCB-EE86-DB8E-46BFF68602B1";
	setAttr "._cnd" 1;
createNode multMatrix -n "toesCONToBone009JNTConstraint";
	rename -uid "742894A2-4F8E-CD30-45E2-5590B97F92E0";
	setAttr -s 2 ".i";
select -ne :time1;
	setAttr ".o" 180;
	setAttr ".unw" 180;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 97 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "C:/aces_1.2/config.ocio";
	setAttr ".vtn" -type "string" "sRGB (ACES)";
	setAttr ".vn" -type "string" "sRGB";
	setAttr ".dn" -type "string" "ACES";
	setAttr ".wsn" -type "string" "ACES - ACEScg";
	setAttr ".otn" -type "string" "sRGB (ACES)";
	setAttr ".potn" -type "string" "sRGB (ACES)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "femurToParentAttachBUFConstraint.o" "parentAttach_BUF.opm";
connectAttr "getFKVisibility.ob" "FK_GRP.v";
connectAttr "femurToFemurFKCONConstraint.o" "femur_FK_CON.opm";
connectAttr "getTibiaLocalMatrix.o" "tibia_FK_CON.opm";
connectAttr "getAnkleLocalMatrix.o" "ankle_FK_CON.opm";
connectAttr "getIKVisibility.ob" "IK_GRP.v";
connectAttr "parentAttachToRootIKCONConstraint.o" "root_IK_CON.opm";
connectAttr "tibiaToUpVectorIKCONConstraint.o" "upVector_IK_CON.opm";
connectAttr "ankleToAnkleIKCONConstraint.o" "ankle_IK_BUF.opm";
connectAttr "getHeelPivotBUFParentMatrix.o" "heelPivot_BUF.opm";
connectAttr "unitConversion8.o" "heelPivot_BUF.rx";
connectAttr "getToesPivotBUFParentMatrix.o" "toesPivot_BUF.opm";
connectAttr "unitConversion7.o" "toesPivot_BUF.rx";
connectAttr "getTipPivotBUFParentMatrix.o" "tipPivot_BUF.opm";
connectAttr "unitConversion6.o" "tipPivot_BUF.rx";
connectAttr "getLeftRollBUFParentMatrix.o" "leftRoll_BUF.opm";
connectAttr "unitConversion4.o" "leftRoll_BUF.rz";
connectAttr "getRightRollBUFParentMatrix.o" "rightRoll_BUF.opm";
connectAttr "unitConversion5.o" "rightRoll_BUF.rz";
connectAttr "getTipRollBUFParentMatrix.o" "tipRoll_BUF.opm";
connectAttr "unitConversion3.o" "tipRoll_BUF.ry";
connectAttr "getToesRollBURParentMatrix.o" "toesRoll_BUF.opm";
connectAttr "unitConversion2.o" "toesRoll_BUF.ry";
connectAttr "getHeelRollBUFParentMatrix.o" "heelRoll_BUF.opm";
connectAttr "unitConversion1.o" "heelRoll_BUF.ry";
connectAttr "getAnkleIKChildBUFParentMatrix.o" "ankle_IK_childBUF.opm";
connectAttr "getToesFromHeelRollBUFParentMatrix.o" "toesFromHeelRoll_BUF.opm";
connectAttr "tibiaBendCONConstraintMatrix.o" "tibia_bend_CON.opm";
connectAttr "femurBendCONConstraintMatrix.o" "femur_bend_CON.opm";
connectAttr "getToesBUFParentMatrix.o" "toes_BUF.opm";
connectAttr "rootIKCONToFemurIKJNTConstraint.o" "femur_IK_JNT.opm";
connectAttr "blendStretchIK.ox" "femur_IK_JNT.sx";
connectAttr "femur_IK_JNT.s" "tibia_IK_JNT.is";
connectAttr "blendStretchIK.ox" "tibia_IK_JNT.sx";
connectAttr "femurLength.d" "tibia_IK_JNT.tx";
connectAttr "tibia_IK_JNT.s" "ankle_IK_JNT.is";
connectAttr "tibiaLength.d" "ankle_IK_JNT.tx";
connectAttr "ankle_IK_JNT.tx" "leg_IK_effector.tx";
connectAttr "ankle_IK_JNT.ty" "leg_IK_effector.ty";
connectAttr "ankle_IK_JNT.tz" "leg_IK_effector.tz";
connectAttr "ankle_IK_JNT.opm" "leg_IK_effector.opm";
connectAttr "femur_IK_JNT.msg" "leg_ikHandle.hsj";
connectAttr "leg_IK_effector.hp" "leg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "leg_ikHandle.hsv";
connectAttr "leg_ikHandle_poleVectorConstraint1.ctx" "leg_ikHandle.pvx";
connectAttr "leg_ikHandle_poleVectorConstraint1.cty" "leg_ikHandle.pvy";
connectAttr "leg_ikHandle_poleVectorConstraint1.ctz" "leg_ikHandle.pvz";
connectAttr "ankleIKChildBUFToLegIkHandleConstraint.o" "leg_ikHandle.opm";
connectAttr "leg_ikHandle.pim" "leg_ikHandle_poleVectorConstraint1.cpim";
connectAttr "femur_IK_JNT.pm" "leg_ikHandle_poleVectorConstraint1.ps";
connectAttr "femur_IK_JNT.t" "leg_ikHandle_poleVectorConstraint1.crp";
connectAttr "upVector_IK_CON.t" "leg_ikHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "upVector_IK_CON.rp" "leg_ikHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "upVector_IK_CON.rpt" "leg_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "upVector_IK_CON.pm" "leg_ikHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "leg_ikHandle_poleVectorConstraint1.w0" "leg_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "femurFKCONToFemurFKJNTConstraint.o" "femur_FK_JNT.opm";
connectAttr "femur_FK_JNT.s" "tibia_FK_JNT.is";
connectAttr "tibiaFKCONToTibiaFKJNTConstraint.o" "tibia_FK_JNT.opm";
connectAttr "tibia_FK_JNT.s" "ankle_FK_JNT.is";
connectAttr "ankleFKCONToAnkleFKJNTConstraint.o" "ankle_FK_JNT.opm";
connectAttr "ankle_FK_JNT.s" "toes_FK_JNT.is";
connectAttr "getToesLocalMatrix.o" "toes_FK_JNT.opm";
connectAttr "blendFKIKBone000JNTParentMatrix.omat" "bone000_JNT.opm";
connectAttr "bone001JNTConstraintMatrix.o" "bone001_JNT.opm";
connectAttr "decomposeBone001JNTLocalMatrix.ot" "bone001_JNT.t";
connectAttr "unitConversion13.o" "bone001_JNT.rx";
connectAttr "decomposeBone000JNTToFemurBendCONLocalAimMatrix.orz" "bone001_JNT.rz"
		;
connectAttr "decomposeBone000JNTToFemurBendCONLocalAimMatrix.ory" "bone001_JNT.ry"
		;
connectAttr "decomposeBone001JNTLocalMatrix.os" "bone001_JNT.s";
connectAttr "bone002JNTConstraintMatrix.o" "bone002_JNT.opm";
connectAttr "decomposeBone002JNTLocalMatrix.ot" "bone002_JNT.t";
connectAttr "decomposeBone002JNTLocalMatrix.ory" "bone002_JNT.ry";
connectAttr "decomposeBone002JNTLocalMatrix.orz" "bone002_JNT.rz";
connectAttr "unitConversion14.o" "bone002_JNT.rx";
connectAttr "decomposeBone002JNTLocalMatrix.os" "bone002_JNT.s";
connectAttr "bone003JNTConstraintMatrix.o" "bone003_JNT.opm";
connectAttr "decomposeBone003JNTLocalMatrix.ot" "bone003_JNT.t";
connectAttr "unitConversion17.o" "bone003_JNT.rx";
connectAttr "decomposeFemurBendCONToBone004JNTLocalAimMatrix.orz" "bone003_JNT.rz"
		;
connectAttr "decomposeFemurBendCONToBone004JNTLocalAimMatrix.ory" "bone003_JNT.ry"
		;
connectAttr "decomposeBone003JNTLocalMatrix.os" "bone003_JNT.s";
connectAttr "getBone004JNTParentMatrix.o" "bone004_JNT.opm";
connectAttr "bone005JNTConstraintMatrix.o" "bone005_JNT.opm";
connectAttr "decomposeBone005JNTLocalMatrix.ot" "bone005_JNT.t";
connectAttr "unitConversion22.o" "bone005_JNT.rx";
connectAttr "decomposeBone004JNTToTibiaBendCONLocalAimMatrix.orz" "bone005_JNT.rz"
		;
connectAttr "decomposeBone004JNTToTibiaBendCONLocalAimMatrix.ory" "bone005_JNT.ry"
		;
connectAttr "decomposeBone005JNTLocalMatrix.os" "bone005_JNT.s";
connectAttr "bone006JNTConstraintMatrix.o" "bone006_JNT.opm";
connectAttr "decomposeBone006JNTLocalMatrix.ot" "bone006_JNT.t";
connectAttr "decomposeBone006JNTLocalMatrix.ory" "bone006_JNT.ry";
connectAttr "decomposeBone006JNTLocalMatrix.orz" "bone006_JNT.rz";
connectAttr "unitConversion23.o" "bone006_JNT.rx";
connectAttr "decomposeBone006JNTLocalMatrix.os" "bone006_JNT.s";
connectAttr "bone007JNTConstraintMatrix.o" "bone007_JNT.opm";
connectAttr "decomposeBone007JNTLocalMatrix.ot" "bone007_JNT.t";
connectAttr "decomposeBone007JNTLocalMatrix.os" "bone007_JNT.s";
connectAttr "unitConversion26.o" "bone007_JNT.rx";
connectAttr "decomposeTibiaBendCONToBone008JNTLocalAimMatrix.orz" "bone007_JNT.rz"
		;
connectAttr "decomposeTibiaBendCONToBone008JNTLocalAimMatrix.ory" "bone007_JNT.ry"
		;
connectAttr "getBone008JNTParentMatrix.o" "bone008_JNT.opm";
connectAttr "toesCONToBone009JNTConstraint.o" "bone009_JNT.opm";
connectAttr "stockFemurWorldMatrix.tmat" "femurToParentAttachBUFConstraint.i[0]"
		;
connectAttr "controllers_GRP.wim" "femurToParentAttachBUFConstraint.i[1]";
connectAttr "femur.wm" "stockFemurWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockFemurWorldMatrix.nds";
connectAttr "options_CON.blendFKIK" "getFKVisibility._aa";
connectAttr "parentAttach_BUF.wm" "femurToFemurFKCONConstraint.i[0]";
connectAttr "FK_GRP.wim" "femurToFemurFKCONConstraint.i[1]";
connectAttr "stockTibiaWorldMatrix.tmat" "getTibiaLocalMatrix.i[0]";
connectAttr "femurInverseWorldMatrix.omat" "getTibiaLocalMatrix.i[1]";
connectAttr "tibia.wm" "stockTibiaWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockTibiaWorldMatrix.nds";
connectAttr "stockFemurWorldMatrix.tmat" "femurInverseWorldMatrix.imat";
connectAttr "stockAnkleWorldMatrix.tmat" "getAnkleLocalMatrix.i[0]";
connectAttr "tibiaInverseWorldMatrix.omat" "getAnkleLocalMatrix.i[1]";
connectAttr "ankle.wm" "stockAnkleWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockAnkleWorldMatrix.nds";
connectAttr "stockTibiaWorldMatrix.tmat" "tibiaInverseWorldMatrix.imat";
connectAttr "options_CON.blendFKIK" "getIKVisibility._aa";
connectAttr "parentAttach_BUF.wm" "parentAttachToRootIKCONConstraint.i[0]";
connectAttr "IK_GRP.wim" "parentAttachToRootIKCONConstraint.i[1]";
connectAttr "tibia.wm" "tibiaToUpVectorIKCONConstraint.i[0]";
connectAttr "IK_GRP.wim" "tibiaToUpVectorIKCONConstraint.i[1]";
connectAttr "stockAnkleWorldMatrix.tmat" "ankleToAnkleIKCONConstraint.i[0]";
connectAttr "IK_GRP.wim" "ankleToAnkleIKCONConstraint.i[1]";
connectAttr "stockFootHeelWorldMatrix.tmat" "getHeelPivotBUFParentMatrix.i[0]";
connectAttr "ankleInverseWorldMatrix.omat" "getHeelPivotBUFParentMatrix.i[1]";
connectAttr "getAnkleIKCONRotationOffset.omat" "getHeelPivotBUFParentMatrix.i[2]"
		;
connectAttr "footHeel.wm" "stockFootHeelWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockFootHeelWorldMatrix.nds";
connectAttr "stockAnkleWorldMatrix.tmat" "ankleInverseWorldMatrix.imat";
connectAttr "options_CON.heelPivot" "unitConversion8.i";
connectAttr "stockToesWorldMatrix.tmat" "getToesPivotBUFParentMatrix.i[0]";
connectAttr "footHeelInverseWorldMatrix.omat" "getToesPivotBUFParentMatrix.i[1]"
		;
connectAttr "toes.wm" "stockToesWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockToesWorldMatrix.nds";
connectAttr "stockFootHeelWorldMatrix.tmat" "footHeelInverseWorldMatrix.imat";
connectAttr "options_CON.toesPivot" "unitConversion7.i";
connectAttr "stockFootTipWorldMatrix.tmat" "getTipPivotBUFParentMatrix.i[0]";
connectAttr "toesInverseWorldMatrix.omat" "getTipPivotBUFParentMatrix.i[1]";
connectAttr "footTip.wm" "stockFootTipWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockFootTipWorldMatrix.nds";
connectAttr "stockToesWorldMatrix.tmat" "toesInverseWorldMatrix.imat";
connectAttr "options_CON.tipPivot" "unitConversion6.i";
connectAttr "stockFootLeftSideWorldMatrix.tmat" "getLeftRollBUFParentMatrix.i[0]"
		;
connectAttr "footTipInverseWorldMatrix.omat" "getLeftRollBUFParentMatrix.i[1]";
connectAttr "footLeftSide.wm" "stockFootLeftSideWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockFootLeftSideWorldMatrix.nds";
connectAttr "stockFootTipWorldMatrix.tmat" "footTipInverseWorldMatrix.imat";
connectAttr "leftRollCondition.of" "unitConversion4.i";
connectAttr "sideRollLogic.ob" "leftRollCondition._cnd";
connectAttr "getNegativeSideRoll.of" "leftRollCondition._fa";
connectAttr "options_CON.sideRoll" "sideRollLogic._aa";
connectAttr "options_CON.sideRoll" "getNegativeSideRoll._fa";
connectAttr "stockFootRightSideWorldMatrix.tmat" "getRightRollBUFParentMatrix.i[0]"
		;
connectAttr "foolLeftSideInverseWorldMatrix.omat" "getRightRollBUFParentMatrix.i[1]"
		;
connectAttr "footRightSide.wm" "stockFootRightSideWorldMatrix.imat";
connectAttr "nodeStocker.of" "stockFootRightSideWorldMatrix.nds";
connectAttr "stockFootLeftSideWorldMatrix.tmat" "foolLeftSideInverseWorldMatrix.imat"
		;
connectAttr "rightRollCondition.of" "unitConversion5.i";
connectAttr "sideRollLogic.ob" "rightRollCondition._cnd";
connectAttr "getNegativeSideRoll.of" "rightRollCondition._fb";
connectAttr "stockFootTipWorldMatrix.tmat" "getTipRollBUFParentMatrix.i[0]";
connectAttr "footRightSideInverseWorldMatrix.omat" "getTipRollBUFParentMatrix.i[1]"
		;
connectAttr "stockFootRightSideWorldMatrix.tmat" "footRightSideInverseWorldMatrix.imat"
		;
connectAttr "tipRollCondition.of" "unitConversion3.i";
connectAttr "tipRollLogic.ob" "tipRollCondition._cnd";
connectAttr "getTipRoll.of" "tipRollCondition._fa";
connectAttr "options_CON.footRoll" "tipRollLogic._aa";
connectAttr "options_CON.maxRoll" "tipRollLogic._ab";
connectAttr "options_CON.footRoll" "getTipRoll._fa";
connectAttr "options_CON.maxRoll" "getTipRoll._fb";
connectAttr "stockToesWorldMatrix.tmat" "getToesRollBURParentMatrix.i[0]";
connectAttr "footTipInverseWorldMatrix.omat" "getToesRollBURParentMatrix.i[1]";
connectAttr "toesRollMaxCondition.of" "unitConversion2.i";
connectAttr "toesRollMaxLogic.ob" "toesRollMaxCondition._cnd";
connectAttr "toesRollMinCondition.of" "toesRollMaxCondition._fa";
connectAttr "options_CON.maxRoll" "toesRollMaxCondition._fb";
connectAttr "toesRollMinCondition.of" "toesRollMaxLogic._aa";
connectAttr "options_CON.maxRoll" "toesRollMaxLogic._ab";
connectAttr "toesRollMinLogic.ob" "toesRollMinCondition._cnd";
connectAttr "options_CON.footRoll" "toesRollMinCondition._fa";
connectAttr "options_CON.minRoll" "toesRollMinCondition._fb";
connectAttr "options_CON.footRoll" "toesRollMinLogic._aa";
connectAttr "options_CON.minRoll" "toesRollMinLogic._ab";
connectAttr "stockFootHeelWorldMatrix.tmat" "getHeelRollBUFParentMatrix.i[0]";
connectAttr "toesInverseWorldMatrix.omat" "getHeelRollBUFParentMatrix.i[1]";
connectAttr "heelRollCondition.of" "unitConversion1.i";
connectAttr "heelRollLogic.ob" "heelRollCondition._cnd";
connectAttr "getHeelRoll.of" "heelRollCondition._fa";
connectAttr "options_CON.footRoll" "heelRollLogic._aa";
connectAttr "options_CON.minRoll" "heelRollLogic._ab";
connectAttr "options_CON.footRoll" "getHeelRoll._fa";
connectAttr "options_CON.minRoll" "getHeelRoll._fb";
connectAttr "stockAnkleWorldMatrix.tmat" "getAnkleIKChildBUFParentMatrix.i[0]";
connectAttr "footHeelInverseWorldMatrix.omat" "getAnkleIKChildBUFParentMatrix.i[1]"
		;
connectAttr "stockToesWorldMatrix.tmat" "getToesFromHeelRollBUFParentMatrix.i[0]"
		;
connectAttr "footHeelInverseWorldMatrix.omat" "getToesFromHeelRollBUFParentMatrix.i[1]"
		;
connectAttr "getBone006JNTParentMatrix.omat" "tibiaBendCONConstraintMatrix.i[0]"
		;
connectAttr "bend_GRP.wim" "tibiaBendCONConstraintMatrix.i[1]";
connectAttr "bone004_JNT.wm" "getBone006JNTParentMatrix.imat";
connectAttr "getBone008JNTWorldMatrixWithBone004JNTRotation.omat" "getBone006JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "bone008_JNT.wm" "getBone008JNTWorldMatrixWithBone004JNTRotation.imat"
		;
connectAttr "bone004_JNT.wm" "getBone008JNTWorldMatrixWithBone004JNTRotation.tgt[0].tmat"
		;
connectAttr "getBone002JNTParentMatrix.omat" "femurBendCONConstraintMatrix.i[0]"
		;
connectAttr "bend_GRP.wim" "femurBendCONConstraintMatrix.i[1]";
connectAttr "bone000_JNT.wm" "getBone002JNTParentMatrix.imat";
connectAttr "getBone004JNTWorldMatrixWithBone000JNTRotation.omat" "getBone002JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "bone004_JNT.wm" "getBone004JNTWorldMatrixWithBone000JNTRotation.imat"
		;
connectAttr "bone000_JNT.wm" "getBone004JNTWorldMatrixWithBone000JNTRotation.tgt[0].tmat"
		;
connectAttr "blendFKIKToesBUFParentMatrix.omat" "getToesBUFParentMatrix.i[0]";
connectAttr "bone008_JNT.wm" "getToesBUFParentMatrix.i[1]";
connectAttr "controllers_GRP.wim" "getToesBUFParentMatrix.i[2]";
connectAttr "getToesLocalMatrix.o" "blendFKIKToesBUFParentMatrix.imat";
connectAttr "getToesBUFFKLocalMatrix.o" "blendFKIKToesBUFParentMatrix.tgt[0].tmat"
		;
connectAttr "options_CON.blendFKIK" "blendFKIKToesBUFParentMatrix.env";
connectAttr "stockToesWorldMatrix.tmat" "getToesLocalMatrix.i[0]";
connectAttr "ankleInverseWorldMatrix.omat" "getToesLocalMatrix.i[1]";
connectAttr "toesBUFIKFootRollCompensationCondition.omat" "getToesBUFFKLocalMatrix.i[0]"
		;
connectAttr "ankle_IK_childBUF.wim" "getToesBUFFKLocalMatrix.i[1]";
connectAttr "toesRollMinLogic.ob" "toesBUFIKFootRollCompensationCondition.env";
connectAttr "toesRollBUFToTipRollBUFAimMatrix.tmat" "toesBUFIKFootRollCompensationCondition.tgt[0].tmat"
		;
connectAttr "toesFromHeelRoll_BUF.wm" "toesBUFIKFootRollCompensationCondition.imat"
		;
connectAttr "toesRoll_BUF.wm" "toesRollBUFToTipRollBUFAimMatrix.imat";
connectAttr "getToesRollBUFTargetAimMatrix.o" "toesRollBUFToTipRollBUFAimMatrix.pmat"
		;
connectAttr "getTipRollBUFTargetHeightMatrix.omat" "getToesRollBUFTargetAimMatrix.i[0]"
		;
connectAttr "tipRoll_BUF.wm" "getToesRollBUFTargetAimMatrix.i[1]";
connectAttr "negativeToesWorldTranslateY.of" "getTipRollBUFTargetHeightMatrix.itx"
		;
connectAttr "decomposeToesWorldMatrix.oty" "negativeToesWorldTranslateY._fa";
connectAttr "stockToesWorldMatrix.tmat" "decomposeToesWorldMatrix.imat";
connectAttr "root_IK_CON.wm" "rootIKCONToFemurIKJNTConstraint.i[0]";
connectAttr "algo_GRP.wim" "rootIKCONToFemurIKJNTConstraint.i[1]";
connectAttr "options_CON.stretchIK" "blendStretchIK.vx";
connectAttr "stretchIKCondition.of" "blendStretchIK.mx";
connectAttr "stretchIKLogic.ob" "stretchIKCondition._cnd";
connectAttr "getStretchFactor.of" "stretchIKCondition._fa";
connectAttr "getCurrentLegLength.d" "stretchIKLogic._aa";
connectAttr "getFullScaledLegLength.of" "stretchIKLogic._ab";
connectAttr "root_IK_CON.wm" "getCurrentLegLength.im1";
connectAttr "ankle_IK_childBUF.wm" "getCurrentLegLength.im2";
connectAttr "getScaledLegLength.of" "getFullScaledLegLength._fa";
connectAttr "decomposeParentAttachBUFWorldMatrix.osy" "getFullScaledLegLength._fb"
		;
connectAttr "getOrigLegLength.of" "getScaledLegLength._fa";
connectAttr "root_IK_CON.sx" "getScaledLegLength._fb";
connectAttr "femurLength.d" "getOrigLegLength._fa";
connectAttr "tibiaLength.d" "getOrigLegLength._fb";
connectAttr "stockFemurWorldMatrix.tmat" "femurLength.im1";
connectAttr "stockTibiaWorldMatrix.tmat" "femurLength.im2";
connectAttr "stockTibiaWorldMatrix.tmat" "tibiaLength.im1";
connectAttr "stockAnkleWorldMatrix.tmat" "tibiaLength.im2";
connectAttr "parentAttach_BUF.wm" "decomposeParentAttachBUFWorldMatrix.imat";
connectAttr "getCurrentLegLength.d" "getStretchFactor._fa";
connectAttr "getFullScaledLegLength.of" "getStretchFactor._fb";
connectAttr "ankle_IK_childBUF.wm" "ankleIKChildBUFToLegIkHandleConstraint.i[0]"
		;
connectAttr "algo_GRP.wim" "ankleIKChildBUFToLegIkHandleConstraint.i[1]";
connectAttr "femur_FK_CON.wm" "femurFKCONToFemurFKJNTConstraint.i[0]";
connectAttr "algo_GRP.wim" "femurFKCONToFemurFKJNTConstraint.i[1]";
connectAttr "tibia_FK_CON.wm" "tibiaFKCONToTibiaFKJNTConstraint.i[0]";
connectAttr "femur_FK_CON.wim" "tibiaFKCONToTibiaFKJNTConstraint.i[1]";
connectAttr "ankle_FK_CON.wm" "ankleFKCONToAnkleFKJNTConstraint.i[0]";
connectAttr "tibia_FK_CON.wim" "ankleFKCONToAnkleFKJNTConstraint.i[1]";
connectAttr "options_CON.blendFKIK" "blendFKIKBone000JNTParentMatrix.env";
connectAttr "femurFKJNTToBone000JNTConstraint.o" "blendFKIKBone000JNTParentMatrix.imat"
		;
connectAttr "femurIKJNTToBone000JNTConstraint.o" "blendFKIKBone000JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "femur_FK_JNT.wm" "femurFKJNTToBone000JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "femurFKJNTToBone000JNTConstraint.i[1]";
connectAttr "femur_IK_JNT.wm" "femurIKJNTToBone000JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "femurIKJNTToBone000JNTConstraint.i[1]";
connectAttr "getBone001JNTParentMatrix.omat" "bone001JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone001JNTConstraintMatrix.i[1]";
connectAttr "bone000_JNT.wm" "getBone001JNTParentMatrix.imat";
connectAttr "getBone004JNTWorldMatrixWithBone000JNTRotation.omat" "getBone001JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "getBone001JNTLocalMatrix.omat" "decomposeBone001JNTLocalMatrix.imat"
		;
connectAttr "femur_bend_CON.m" "getBone001JNTLocalMatrix.tgt[0].tmat";
connectAttr "getBone001JNTRotationX.of" "unitConversion13.i";
connectAttr "unitConversion12.o" "getBone001JNTRotationX._fa";
connectAttr "blendFemurTorsionValues.ox" "getBone001JNTRotationX._fb";
connectAttr "decomposeBone001JNTLocalMatrix.orx" "unitConversion12.i";
connectAttr "options_CON.femurTorsion" "blendFemurTorsionValues.vx";
connectAttr "options_CON.femurTorsion" "blendFemurTorsionValues.vy";
connectAttr "options_CON.femurTorsion" "blendFemurTorsionValues.vz";
connectAttr "getFemurTorsionValues.o" "blendFemurTorsionValues.m";
connectAttr "unitConversion9.o" "getFemurTorsionValues.i1x";
connectAttr "unitConversion10.o" "getFemurTorsionValues.i1y";
connectAttr "unitConversion11.o" "getFemurTorsionValues.i1z";
connectAttr "decomposeBone004JNTTransformedLocalMatrix.orx" "unitConversion9.i";
connectAttr "bone004JNTTransformedLocalMatrix.o" "decomposeBone004JNTTransformedLocalMatrix.imat"
		;
connectAttr "bone004_JNT.wm" "bone004JNTTransformedLocalMatrix.i[0]";
connectAttr "bone000_JNT.wim" "bone004JNTTransformedLocalMatrix.i[1]";
connectAttr "decomposeBone004JNTTransformedLocalMatrix.orx" "unitConversion10.i"
		;
connectAttr "decomposeBone004JNTTransformedLocalMatrix.orx" "unitConversion11.i"
		;
connectAttr "bone000JNTToFemurBendCONLocalAimMatrix.o" "decomposeBone000JNTToFemurBendCONLocalAimMatrix.imat"
		;
connectAttr "bone000JNTToFemurBendCONAimMatrix.tmat" "bone000JNTToFemurBendCONLocalAimMatrix.i[0]"
		;
connectAttr "bone000_JNT.wim" "bone000JNTToFemurBendCONLocalAimMatrix.i[1]";
connectAttr "bone000_JNT.wm" "bone000JNTToFemurBendCONAimMatrix.imat";
connectAttr "femur_bend_CON.wm" "bone000JNTToFemurBendCONAimMatrix.pmat";
connectAttr "getBone002JNTParentMatrix.omat" "bone002JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone002JNTConstraintMatrix.i[1]";
connectAttr "femur_bend_CON.m" "decomposeBone002JNTLocalMatrix.imat";
connectAttr "getBone002JNTRotationX.of" "unitConversion14.i";
connectAttr "unitConversion15.o" "getBone002JNTRotationX._fa";
connectAttr "blendFemurTorsionValues.oy" "getBone002JNTRotationX._fb";
connectAttr "decomposeBone002JNTLocalMatrix.orx" "unitConversion15.i";
connectAttr "getBone003JNTParentMatrix.omat" "bone003JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone003JNTConstraintMatrix.i[1]";
connectAttr "bone000_JNT.wm" "getBone003JNTParentMatrix.imat";
connectAttr "getBone004JNTWorldMatrixWithBone000JNTRotation.omat" "getBone003JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "getBone003JNTLocalMatrix.omat" "decomposeBone003JNTLocalMatrix.imat"
		;
connectAttr "femur_bend_CON.m" "getBone003JNTLocalMatrix.tgt[0].tmat";
connectAttr "getBone003JNTRotationX.of" "unitConversion17.i";
connectAttr "blendFemurTorsionValues.oz" "getBone003JNTRotationX._fb";
connectAttr "unitConversion16.o" "getBone003JNTRotationX._fa";
connectAttr "decomposeBone003JNTLocalMatrix.orx" "unitConversion16.i";
connectAttr "femurBendCONToBone004JNTLocalAimMatrix.o" "decomposeFemurBendCONToBone004JNTLocalAimMatrix.imat"
		;
connectAttr "femurBendCONToBone004JNTAimMatrix.tmat" "femurBendCONToBone004JNTLocalAimMatrix.i[0]"
		;
connectAttr "femur_bend_CON.wim" "femurBendCONToBone004JNTLocalAimMatrix.i[1]";
connectAttr "femur_bend_CON.wm" "femurBendCONToBone004JNTAimMatrix.imat";
connectAttr "bone004_JNT.wm" "femurBendCONToBone004JNTAimMatrix.pmat";
connectAttr "blendFKIKBone004JNTLocalMatrix.omat" "getBone004JNTParentMatrix.i[0]"
		;
connectAttr "bone000_JNT.wm" "getBone004JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone004JNTParentMatrix.i[2]";
connectAttr "getTibiaFKJNTLocalMatrix.o" "blendFKIKBone004JNTLocalMatrix.imat";
connectAttr "getTibiaIKJNTLocalMatrix.o" "blendFKIKBone004JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "options_CON.blendFKIK" "blendFKIKBone004JNTLocalMatrix.env";
connectAttr "tibia_FK_JNT.wm" "getTibiaFKJNTLocalMatrix.i[0]";
connectAttr "femur_FK_JNT.wim" "getTibiaFKJNTLocalMatrix.i[1]";
connectAttr "tibia_IK_JNT.wm" "getTibiaIKJNTLocalMatrix.i[0]";
connectAttr "femur_IK_JNT.wim" "getTibiaIKJNTLocalMatrix.i[1]";
connectAttr "getBone005JNTParentMatrix.omat" "bone005JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone005JNTConstraintMatrix.i[1]";
connectAttr "bone004_JNT.wm" "getBone005JNTParentMatrix.imat";
connectAttr "getBone008JNTWorldMatrixWithBone004JNTRotation.omat" "getBone005JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "getBone005JNTLocalMatrix.omat" "decomposeBone005JNTLocalMatrix.imat"
		;
connectAttr "tibia_bend_CON.m" "getBone005JNTLocalMatrix.tgt[0].tmat";
connectAttr "getBone005JNTRotationX.of" "unitConversion22.i";
connectAttr "unitConversion21.o" "getBone005JNTRotationX._fa";
connectAttr "blendTibiaTorsionValues.ox" "getBone005JNTRotationX._fb";
connectAttr "decomposeBone005JNTLocalMatrix.orx" "unitConversion21.i";
connectAttr "getTibiaTorsionValues.o" "blendTibiaTorsionValues.m";
connectAttr "options_CON.tibiaTorsion" "blendTibiaTorsionValues.vx";
connectAttr "options_CON.tibiaTorsion" "blendTibiaTorsionValues.vy";
connectAttr "options_CON.tibiaTorsion" "blendTibiaTorsionValues.vz";
connectAttr "unitConversion18.o" "getTibiaTorsionValues.i1x";
connectAttr "unitConversion19.o" "getTibiaTorsionValues.i1y";
connectAttr "unitConversion20.o" "getTibiaTorsionValues.i1z";
connectAttr "decomposeBone008JNTTransformedLocalMatrix.orx" "unitConversion18.i"
		;
connectAttr "getBone008JNTTransformedLocalMatrix.o" "decomposeBone008JNTTransformedLocalMatrix.imat"
		;
connectAttr "bone008_JNT.wm" "getBone008JNTTransformedLocalMatrix.i[0]";
connectAttr "bone004_JNT.wim" "getBone008JNTTransformedLocalMatrix.i[1]";
connectAttr "decomposeBone008JNTTransformedLocalMatrix.orx" "unitConversion19.i"
		;
connectAttr "decomposeBone008JNTTransformedLocalMatrix.orx" "unitConversion20.i"
		;
connectAttr "bone004JNTToTibiaBendCONLocalAimMatrix.o" "decomposeBone004JNTToTibiaBendCONLocalAimMatrix.imat"
		;
connectAttr "bone004JNTToTibiaBendCONAimMatrix.tmat" "bone004JNTToTibiaBendCONLocalAimMatrix.i[0]"
		;
connectAttr "bone004_JNT.wim" "bone004JNTToTibiaBendCONLocalAimMatrix.i[1]";
connectAttr "bone004_JNT.wm" "bone004JNTToTibiaBendCONAimMatrix.imat";
connectAttr "tibia_bend_CON.wm" "bone004JNTToTibiaBendCONAimMatrix.pmat";
connectAttr "getBone006JNTParentMatrix.omat" "bone006JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone006JNTConstraintMatrix.i[1]";
connectAttr "tibia_bend_CON.m" "decomposeBone006JNTLocalMatrix.imat";
connectAttr "getBone006JNTRotationX.of" "unitConversion23.i";
connectAttr "unitConversion24.o" "getBone006JNTRotationX._fa";
connectAttr "blendTibiaTorsionValues.oy" "getBone006JNTRotationX._fb";
connectAttr "decomposeBone006JNTLocalMatrix.orx" "unitConversion24.i";
connectAttr "getBone007JNTParentMatrix.omat" "bone007JNTConstraintMatrix.i[0]";
connectAttr "bones_GRP.wim" "bone007JNTConstraintMatrix.i[1]";
connectAttr "bone004_JNT.wm" "getBone007JNTParentMatrix.imat";
connectAttr "getBone008JNTWorldMatrixWithBone004JNTRotation.omat" "getBone007JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "getBone007JNTLocalMatrix.omat" "decomposeBone007JNTLocalMatrix.imat"
		;
connectAttr "tibia_bend_CON.m" "getBone007JNTLocalMatrix.tgt[0].tmat";
connectAttr "getBone007JNTRotationX.of" "unitConversion26.i";
connectAttr "unitConversion25.o" "getBone007JNTRotationX._fa";
connectAttr "blendTibiaTorsionValues.oz" "getBone007JNTRotationX._fb";
connectAttr "decomposeBone007JNTLocalMatrix.orx" "unitConversion25.i";
connectAttr "tibiaBendCONToBone008JNTLocalAimMatrix.o" "decomposeTibiaBendCONToBone008JNTLocalAimMatrix.imat"
		;
connectAttr "tibiaBendCONToBone008JNTAimMatrix.tmat" "tibiaBendCONToBone008JNTLocalAimMatrix.i[0]"
		;
connectAttr "tibia_bend_CON.wim" "tibiaBendCONToBone008JNTLocalAimMatrix.i[1]";
connectAttr "tibia_bend_CON.wm" "tibiaBendCONToBone008JNTAimMatrix.imat";
connectAttr "bone008_JNT.wm" "tibiaBendCONToBone008JNTAimMatrix.pmat";
connectAttr "blendFKIKBone008JNTLocalMatrix.omat" "getBone008JNTParentMatrix.i[0]"
		;
connectAttr "bone004_JNT.wm" "getBone008JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone008JNTParentMatrix.i[2]";
connectAttr "smoothBone008JNTBlendDistorsion.nds" "getBone008JNTParentMatrix.nds"
		;
connectAttr "getAnkleFKJNTLocalMatrix.o" "blendFKIKBone008JNTLocalMatrix.imat";
connectAttr "getAnkleIKJNTLocalMatrix.o" "blendFKIKBone008JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "options_CON.blendFKIK" "blendFKIKBone008JNTLocalMatrix.env";
connectAttr "ankle_FK_JNT.wm" "getAnkleFKJNTLocalMatrix.i[0]";
connectAttr "tibia_FK_JNT.wim" "getAnkleFKJNTLocalMatrix.i[1]";
connectAttr "getAnkleIKChildBUFWithAnkleIKJNTTranslation.omat" "getAnkleIKJNTLocalMatrix.i[0]"
		;
connectAttr "tibia_IK_JNT.wim" "getAnkleIKJNTLocalMatrix.i[1]";
connectAttr "ankle_IK_JNT.wm" "getAnkleIKChildBUFWithAnkleIKJNTTranslation.imat"
		;
connectAttr "ankle_IK_childBUF.wm" "getAnkleIKChildBUFWithAnkleIKJNTTranslation.tgt[0].tmat"
		;
connectAttr "bone004_JNT.wm" "smoothBone008JNTBlendDistorsion.imat";
connectAttr "bone004_JNT.wm" "smoothBone008JNTBlendDistorsion.tgt[0].tmat";
connectAttr "identityMatrix.omat" "smoothBone008JNTBlendDistorsion.tgt[1].tmat";
connectAttr "getInvertedBlendFKIKFloat.of" "smoothBone008JNTBlendDistorsion.env"
		;
connectAttr "nodeStocker.of" "identityMatrix.nds";
connectAttr "options_CON.blendFKIK" "getInvertedBlendFKIKFloat._fb";
connectAttr "toes_CON.wm" "toesCONToBone009JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "toesCONToBone009JNTConstraint.i[1]";
connectAttr "nodeStocker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurToFemurFKCONConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getTibiaLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getAnkleLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tibiaInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurFKCONToFemurFKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tibiaFKCONToTibiaFKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleFKCONToAnkleFKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "parentAttachToRootIKCONConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleToAnkleIKCONConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "tibiaToUpVectorIKCONConstraint.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ankleIKChildBUFToLegIkHandleConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "rootIKCONToFemurIKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "femurLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tibiaLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getToesLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getOrigLegLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getCurrentLegLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchIKLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchIKCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getStretchFactor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendStretchIK.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getHeelPivotBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getToesPivotBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "footHeelInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTipPivotBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getLeftRollBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footTipInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getRightRollBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "foolLeftSideInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "getHeelRollBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footRightSideInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getToesRollBURParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTipRollBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getAnkleIKChildBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "heelRollLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "heelRollCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getHeelRoll.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesRollMinLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesRollMinCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesRollMaxLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesRollMaxCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tipRollLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tipRollCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTipRoll.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sideRollLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leftRollCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rightRollCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getNegativeSideRoll.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getToesFromHeelRollBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "femurIKJNTToBone000JNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "femurFKJNTToBone000JNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getTibiaFKJNTLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTibiaIKJNTLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone004JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getAnkleFKJNTLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getAnkleIKJNTLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone008JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getToesBUFParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getToesBUFFKLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getInvertedBlendFKIKFloat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toesCONToBone009JNTConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "bone001JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone002JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone003JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone005JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone006JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone007JNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurBendCONConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "tibiaBendCONConstraintMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "bone000JNTToFemurBendCONLocalAimMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "femurBendCONToBone004JNTLocalAimMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bone004JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getFemurTorsionValues.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendFemurTorsionValues.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone001JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone002JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone003JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bone004JNTToTibiaBendCONLocalAimMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "tibiaBendCONToBone008JNTLocalAimMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone008JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getTibiaTorsionValues.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTibiaTorsionValues.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone005JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone006JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone007JNTRotationX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "femurToParentAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getScaledLegLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getFullScaledLegLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getToesRollBUFTargetAimMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "negativeToesWorldTranslateY.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getFKVisibility.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getIKVisibility.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of leg_rigModule.ma
