//Maya ASCII 2023 scene
//Name: body_rigModule.ma
//Last modified: Sat, Feb 17, 2024 04:09:43 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "floatConstant" -nodeType "floatMath" "lookdevKit" "1.0";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "68FE9FED-4832-57F4-CFA6-73859B15A8BC";
createNode transform -n "body";
	rename -uid "B3DF2853-4691-9071-108A-0A9471C92BBB";
createNode transform -n "install" -p "body";
	rename -uid "92D022BD-4646-3A98-1351-798AF0B40FBE";
	setAttr ".v" no;
createNode transform -n "hip" -p "install";
	rename -uid "7DEF98B4-49C8-7E06-C94B-F2B315511159";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "hipShape" -p "hip";
	rename -uid "743855E8-442D-291B-33D2-2EA76788BFFA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "middle" -p "hip";
	rename -uid "4142FE35-4D02-7828-0EAC-9D89191C927D";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 4 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "middleShape" -p "middle";
	rename -uid "4E6DABC4-43EF-B6E7-3AC0-E794047A9CB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "neck" -p "middle";
	rename -uid "E7351E80-45CB-EC06-8502-1897B23FE471";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 4 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "neckShape" -p "neck";
	rename -uid "5356DDD8-4DF6-C443-8043-C2AA3231530F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 1.5 1.5 1.5 ;
createNode transform -n "leftClavicula" -p "neck";
	rename -uid "096BFAA6-4068-8B2F-F4AE-63B7D7A9CD43";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "leftClaviculaShape" -p "leftClavicula";
	rename -uid "9E2BB05B-4EE1-5F57-F3DC-85B41585882E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "rightClavicula" -p "neck";
	rename -uid "471F0E00-4605-F7B4-68E0-B0A801BF788C";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "rightClaviculaShape" -p "rightClavicula";
	rename -uid "3EE330DD-4959-8975-081D-7C9E5C4580D2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "rightFemur" -p "hip";
	rename -uid "06C023CE-416E-77F9-7713-16A5D75EBB88";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "rightFemurShape" -p "rightFemur";
	rename -uid "14C220D7-4F08-A372-A667-65A201329CC4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "leftFemur" -p "hip";
	rename -uid "0A09C80A-4F17-5F0F-70CF-A78333E50B46";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "leftFemurShape" -p "leftFemur";
	rename -uid "06161768-48B1-C328-E739-CF8A15CEA4D5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "controllers_GRP" -p "body";
	rename -uid "7E9967C7-4D67-7E1A-714F-088C9C8C31E7";
createNode transform -n "parentAttach_BUF" -p "controllers_GRP";
	rename -uid "A0C75E98-4B10-2ACC-0C4D-B1A8903325CF";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "leftClaviculaChildAttach_BUF" -p "controllers_GRP";
	rename -uid "483D04A1-4973-D1D6-8F46-CCAFF8E89B7B";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "rightClaviculaChildAttach_BUF" -p "controllers_GRP";
	rename -uid "52B2A5AE-4841-2AEE-9850-05B9CCC554F3";
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "rightFemurChildAttach_BUF" -p "controllers_GRP";
	rename -uid "7FA379D7-4D07-A3EA-1F6B-8B95C99C0789";
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "leftFemurChildAttach_BUF" -p "controllers_GRP";
	rename -uid "995F71EF-487B-A997-E673-23AEFED517AC";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "headChildAttach_BUF" -p "controllers_GRP";
	rename -uid "3C9EB231-4E20-0697-6205-E3B0BC3FA28C";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "hip_FK_CON" -p "controllers_GRP";
	rename -uid "379D8F15-49DA-470A-C7A1-5B98A1712FE1";
createNode nurbsCurve -n "hip_FK_CONShape" -p "hip_FK_CON";
	rename -uid "A1C1C27E-4B9B-F4C2-E376-6A82DBDA51FA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		1.9215013424343492 0 -1.9215013424343468
		1.9215013424343492 0 -0.64050044747811574
		1.9215013424343492 0 0.64050044747811563
		1.9215013424343492 0 1.9215013424343446
		0.64050044747811596 0 1.9215013424343468
		-0.64050044747811563 0 1.9215013424343468
		-1.9215013424343443 0 1.9215013424343468
		-1.9215013424343446 0 0.64050044747811574
		-1.9215013424343446 0 -0.64050044747811563
		-1.9215013424343446 0 -1.9215013424343446
		-0.64050044747811563 0 -1.9215013424343468
		0.64050044747811585 0 -1.9215013424343468
		1.9215013424343468 0 -1.9215013424343468
		;
createNode transform -n "middle_FK_CON" -p "hip_FK_CON";
	rename -uid "891F193E-4118-375B-D8C2-50A76B3B0D92";
createNode nurbsCurve -n "middle_FK_CONShape" -p "middle_FK_CON";
	rename -uid "A565A91C-4F23-84AC-7371-4DB37A4C368E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		1.9215013424343492 0 -1.9215013424343468
		1.9215013424343492 0 -0.64050044747811574
		1.9215013424343492 0 0.64050044747811563
		1.9215013424343492 0 1.9215013424343446
		0.64050044747811596 0 1.9215013424343468
		-0.64050044747811563 0 1.9215013424343468
		-1.9215013424343443 0 1.9215013424343468
		-1.9215013424343446 0 0.64050044747811574
		-1.9215013424343446 0 -0.64050044747811563
		-1.9215013424343446 0 -1.9215013424343446
		-0.64050044747811563 0 -1.9215013424343468
		0.64050044747811585 0 -1.9215013424343468
		1.9215013424343468 0 -1.9215013424343468
		;
createNode transform -n "spine_IK_CON" -p "middle_FK_CON";
	rename -uid "687B1262-4224-612F-F438-B79EF1200552";
createNode nurbsCurve -n "spine_IK_CONShape" -p "spine_IK_CON";
	rename -uid "2768FD1E-4BD8-98E0-E8C9-658ACA62948B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.289393970616882 7.8952609947793079e-17 -1.2893939706168824
		1.1165585177292187e-16 1.1165585177292187e-16 -1.8234784404884903
		-1.289393970616882 7.8952609947793066e-17 -1.2893939706168813
		-1.8234784404884916 2.1699837047998008e-32 -3.0950757427628951e-16
		-1.289393970616882 -7.8952609947793066e-17 1.289393970616882
		-1.8265908251774186e-16 -1.1165585177292192e-16 1.8234784404884918
		1.289393970616882 -7.8952609947793066e-17 1.2893939706168813
		1.8234784404884916 6.8510889207605826e-34 3.3688981180405967e-17
		1.289393970616882 7.8952609947793079e-17 -1.2893939706168824
		1.1165585177292187e-16 1.1165585177292187e-16 -1.8234784404884903
		-1.289393970616882 7.8952609947793066e-17 -1.2893939706168813
		;
createNode transform -n "middle_IK_CON" -p "spine_IK_CON";
	rename -uid "E15351A4-40D0-32AC-6E38-B0B139FF70D3";
	addAttr -ci true -sn "pinch" -ln "pinch" -nn "Pinch" -min 0 -max 1 -at "double";
	setAttr -k on ".pinch" 0.5;
createNode nurbsCurve -n "middle_IK_CONShape" -p "middle_IK_CON";
	rename -uid "84996771-47E5-E1A6-0353-BC96A76CE058";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		0.71177112004730114 0 -0.7117711200472997
		2.1070285970432745 0 -0.70234286568109161
		2.1070285970432745 0 0.70234286568109161
		0.71177112004730114 0 0.71177112004729948
		0.70234286568109217 0 2.1070285970432741
		-0.7023428656810915 0 2.1070285970432741
		-0.71177112004729903 0 0.7117711200472997
		-2.1070285970432736 0 0.70234286568109161
		-2.1070285970432736 0 -0.70234286568109161
		-0.71177112004729948 0 -0.71177112004729948
		-0.7023428656810915 0 -2.1070285970432741
		0.70234286568109172 0 -2.1070285970432741
		0.7117711200472997 0 -0.7117711200472997
		;
createNode transform -n "hip_IK_CON" -p "hip_FK_CON";
	rename -uid "9950E432-47E7-A50D-18DC-859D59E958FA";
createNode nurbsCurve -n "hip_IK_CONShape" -p "hip_IK_CON";
	rename -uid "6ACC4274-4CEE-A953-B81E-A796A3CC45B9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.289393970616882 7.8952609947793079e-17 -1.2893939706168824
		1.1165585177292187e-16 1.1165585177292187e-16 -1.8234784404884903
		-1.289393970616882 7.8952609947793066e-17 -1.2893939706168813
		-1.8234784404884916 2.1699837047998008e-32 -3.0950757427628951e-16
		-1.289393970616882 -7.8952609947793066e-17 1.289393970616882
		-1.8265908251774186e-16 -1.1165585177292192e-16 1.8234784404884918
		1.289393970616882 -7.8952609947793066e-17 1.2893939706168813
		1.8234784404884916 6.8510889207605826e-34 3.3688981180405967e-17
		1.289393970616882 7.8952609947793079e-17 -1.2893939706168824
		1.1165585177292187e-16 1.1165585177292187e-16 -1.8234784404884903
		-1.289393970616882 7.8952609947793066e-17 -1.2893939706168813
		;
createNode transform -n "options_BUF" -p "controllers_GRP";
	rename -uid "E6D4D922-40B3-9143-FC03-3CA04B1A4F73";
createNode transform -n "options_CON" -p "options_BUF";
	rename -uid "C42E8964-47AF-2CAF-CDA1-CDBAAE758613";
	addAttr -ci true -sn "squashStretchDistribution" -ln "squashStretchDistribution" 
		-nn "Squash Stretch Distribution" -dv 2 -min 1 -max 2 -at "double";
	addAttr -ci true -sn "squashStretchScale" -ln "squashStretchScale" -nn "Squash Stretch Scale" 
		-dv 1 -min 0 -at "double";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr -k on ".squashStretchDistribution";
	setAttr -k on ".squashStretchScale" 5.5000000000000009;
createNode nurbsCurve -n "options_CONShape" -p "options_CON";
	rename -uid "79C18F1A-446A-2289-8CE4-E7AF6A237720";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.030008572692768493 0.030008572692768878 3.3140546097740697e-16
		6.7857323231109122e-17 1.1081941875543881 3.9992703827849085e-16
		-0.030008572692768493 0.03000857269276885 3.3140546097740697e-16
		-1.1081941875543881 3.9051588976279528e-16 3.3306690738754686e-16
		-0.030008572692768493 -0.030008572692768118 3.2967073750143016e-16
		-1.1100856969603225e-16 -1.1081941875543881 3.4441588704723302e-16
		0.030008572692768493 -0.030008572692768097 3.3140546097740697e-16
		1.1081941875543881 1.8194285730955109e-16 3.3306690738754686e-16
		0.030008572692768493 0.030008572692768878 3.3140546097740697e-16
		6.7857323231109122e-17 1.1081941875543881 3.9992703827849085e-16
		-0.030008572692768493 0.03000857269276885 3.3140546097740697e-16
		;
createNode transform -n "algo_GRP" -p "body";
	rename -uid "0A2C38DC-45BC-4E5B-E472-D2BB55F7208A";
	setAttr ".v" no;
createNode transform -n "spineCurve" -p "algo_GRP";
	rename -uid "C47F800A-4179-DA70-DBE0-95A0AF072B9D";
	setAttr ".v" no;
createNode nurbsCurve -n "spineCurveShape" -p "spineCurve";
	rename -uid "9C627648-4A14-5A9E-1470-8E9957A0DB1D";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 0 0
		0 2 0
		0 6 0
		0 8 0
		;
createNode joint -n "topSquashStretch_JNT" -p "algo_GRP";
	rename -uid "A5B49A62-4769-C562-9B15-12865D114B08";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6 0 1;
	setAttr ".radi" 0.66;
createNode joint -n "bottomSquashStretch_JNT" -p "algo_GRP";
	rename -uid "BB3CA8C6-4F53-4E81-149A-73B28D84BA91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4 0 1;
	setAttr ".radi" 0.66;
createNode transform -n "bone000_BUF" -p "algo_GRP";
	rename -uid "51FCAEA2-4A38-45CF-D76A-AA877A4E9153";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "bone008_BUF" -p "algo_GRP";
	rename -uid "CE2D9641-41BD-A34B-7E50-87A003748DC8";
	setAttr ".t" -type "double3" 10 0 0 ;
createNode transform -n "tangentTop_BUF" -p "algo_GRP";
	rename -uid "EAD499AA-4A2F-F647-17B4-968202C5EAEB";
	setAttr ".dh" yes;
createNode transform -n "tangentBottom_BUF" -p "algo_GRP";
	rename -uid "10B96ACF-4728-BC9E-FA23-DEB9D4E8CEF6";
	setAttr ".dh" yes;
createNode transform -n "bones_GRP" -p "body";
	rename -uid "BA9F8194-46EF-82DE-E852-BAB5856C7802";
createNode joint -n "bone000_JNT" -p "bones_GRP";
	rename -uid "5E48D391-4728-B0EA-484C-5F9154FC5786";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone001_JNT" -p "bones_GRP";
	rename -uid "2987214C-4581-BA82-AC03-B1A579B118C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone002_JNT" -p "bones_GRP";
	rename -uid "324FEADD-43B2-9400-0E0B-86816E2E978C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone003_JNT" -p "bones_GRP";
	rename -uid "BFEA1D08-4A7A-4575-D6BD-5EBB3A3CB769";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone004_JNT" -p "bones_GRP";
	rename -uid "F7706180-48B1-6358-7047-B5A9C908B782";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone005_JNT" -p "bones_GRP";
	rename -uid "4C7BC9A0-4A1B-78E6-9533-DE8B4A93AF92";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone006_JNT" -p "bones_GRP";
	rename -uid "C53CA510-4D6C-3E1D-D11C-FAA6518B4574";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone007_JNT" -p "bones_GRP";
	rename -uid "82F33B49-4B05-6D48-7B2D-4A9C1023661C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode joint -n "bone008_JNT" -p "bones_GRP";
	rename -uid "0AC9CEBE-4E4B-B478-02E6-0F8B7EF0DF39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.33;
createNode multMatrix -n "hipToParentAttachBUFConstraint";
	rename -uid "E07CC002-4B34-B9E1-DBE5-F18C812D9D6B";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockHipWorldMatrix";
	rename -uid "50D3DAD3-4A3D-1741-83D2-7C91E27B7B59";
createNode floatConstant -n "nodesStocker";
	rename -uid "CD5CC78B-4AE5-BE7E-6B23-3998F4B44EA2";
	setAttr "._f" 0;
createNode multMatrix -n "getLeftClaviculaChildAttachBUFParentMatrix";
	rename -uid "152F5117-44F0-5900-488D-9C8D158A9E10";
	setAttr -s 4 ".i";
createNode pickMatrix -n "stockLeftClaviculaWorldMatrix";
	rename -uid "E9FD2960-42DB-6E3E-2B4B-A893156AA00E";
createNode inverseMatrix -n "inverseNeckWorldMatrix";
	rename -uid "1580AB6F-40F9-4B0C-B319-F581E03FCAC6";
createNode pickMatrix -n "stockNeckWorldMatrix";
	rename -uid "BF56396D-4964-061C-5AC3-B2B9611EF3C6";
createNode multMatrix -n "getRightClaviculaChildAttachBUFParentMatrix";
	rename -uid "3E27F216-49F9-5FE3-201A-A786ACACD9A9";
	setAttr -s 4 ".i";
createNode pickMatrix -n "stockRightClaviculaWorldMatrix";
	rename -uid "A645FD3D-4317-271F-D8DE-7888307DBF4A";
createNode multMatrix -n "getRightFemurChildAttachBUFParentMatrix";
	rename -uid "5C018651-4C0D-9549-86AD-D2B079E83DF2";
	setAttr -s 4 ".i";
createNode pickMatrix -n "stockRightFemurWorldMatrix";
	rename -uid "147CFA73-4BE5-4CF7-848A-668B8946D270";
createNode inverseMatrix -n "inverseHipWorldMatrix";
	rename -uid "3A730385-4EB4-0498-A420-5281E7C19870";
createNode multMatrix -n "getLeftFemurChildAttachBUFParentMatrix";
	rename -uid "EF287A30-4014-6477-AB21-96A10BCF9536";
	setAttr -s 4 ".i";
createNode pickMatrix -n "stockLeftFemurWorldMatrix";
	rename -uid "6A41DB10-440E-55E6-3D76-39940C6A6483";
createNode multMatrix -n "spineIKCONToHeadChildAttachBUFConstraint";
	rename -uid "B1177F01-40A0-6058-CB64-DEBAFE74ED8E";
	setAttr -s 2 ".i";
createNode multMatrix -n "parentAttachBUFToHipFKCONConstraint";
	rename -uid "7E84F660-492B-B059-D749-C4BCECAF5C8A";
	setAttr -s 2 ".i";
createNode multMatrix -n "getMiddleLocalMatrix";
	rename -uid "E2CA40B3-4F1B-5B7D-A741-82ACA5712C8F";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockMiddleWorldMatrix";
	rename -uid "F0B3AEC6-43A2-7343-F8FB-67A60174C2AC";
createNode multMatrix -n "getNeckLocalMatrix";
	rename -uid "26244836-4147-79F1-2DB2-3FAB5A2493BF";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "inverseMiddleWorldMatrix";
	rename -uid "BA7B6987-449E-C6F3-42FE-A9943676B5DB";
createNode multMatrix -n "getMiddleIKCONLocalMatrix";
	rename -uid "B6CA8F7D-47B9-0E81-BCFB-D7B9950C5B1B";
	setAttr -s 2 ".i";
createNode multMatrix -n "parentAttachBUFToOptionsBUFConstraint";
	rename -uid "ECBF1097-401B-64F2-B411-9783488ABB6F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeHipIKCONWorldMatrix";
	rename -uid "8BCE32D1-4B2B-4AFF-ED0D-C597613C76F0";
createNode decomposeMatrix -n "decomposeTangentBottomBUFWorldMatrix";
	rename -uid "64B7ED67-4419-89A6-C88A-9BB8B00CA6C6";
createNode decomposeMatrix -n "decomposeTangentTopBUFWorldMatrix";
	rename -uid "AE97BFBD-4D42-244E-CA65-3AB0039BB384";
createNode decomposeMatrix -n "decomposeSpineIKCONWorldMatrix";
	rename -uid "4398B251-4E86-A7E3-5BBA-26B31DB391ED";
createNode multMatrix -n "getTopSquashStretchJNTConstraintMatrix";
	rename -uid "95BDF834-4B6E-BBF1-827E-DDA8051C4A6C";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getTopSquashStretchJNTParentMatrix";
	rename -uid "87FEE6B3-46FF-4193-7710-66894EEBF99D";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode floatMath -n "spineSecondHalfStretchFactor";
	rename -uid "A1C2E7CA-4385-A14E-3D40-ABAF5CF6D315";
	setAttr "._cnd" 3;
createNode distanceBetween -n "spineSecondHalfCurrentLength";
	rename -uid "2A2FFE0A-4BC2-6325-AD0F-4FB0E11CF097";
createNode floatMath -n "spineSecondHalfScaledLEngth";
	rename -uid "934411BB-40F7-FE56-E8A7-BC887BF8FB94";
	setAttr "._cnd" 2;
createNode distanceBetween -n "spineSecondHalfOrigLength";
	rename -uid "3E0DB1C5-495A-6D98-B9CC-67861AF81B92";
createNode floatMath -n "spineSecondHalfSquashFactor";
	rename -uid "6D5329F2-415A-DE03-D145-548673024F1A";
	setAttr "._cnd" 3;
createNode multMatrix -n "getBottomSquashStretchJNTConstraintMatrix";
	rename -uid "88098AB4-462C-A6CD-7CD8-E58EF2C8BAFB";
	setAttr -s 2 ".i";
createNode blendMatrix -n "getBottomSquashStretchJNTParentMatrix";
	rename -uid "9D6FC15E-4735-E10F-2228-8BA96FC419D0";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode floatMath -n "spineFirstHalfStretchFactor";
	rename -uid "0ECE136F-4011-7A3D-B4B3-62AD539683BC";
	setAttr "._cnd" 3;
createNode distanceBetween -n "spineFirstHalfCurrentLength";
	rename -uid "DA9DB0A0-4A9D-5F83-C464-3B92E687398F";
createNode floatMath -n "spineFirstHalfScaledLength";
	rename -uid "BFB47845-4A33-4402-C364-DF9870FEEBAF";
	setAttr "._cnd" 2;
createNode distanceBetween -n "spineFirstHalfOrigLength";
	rename -uid "241A938B-40F1-7AD0-9364-638D9F4E38F7";
createNode floatMath -n "spineFirstHalfSquashFactor";
	rename -uid "38438FD7-40B4-F700-8856-A48C38859EC9";
	setAttr "._cnd" 3;
createNode multMatrix -n "bone000JNTToBone000BUFConstraint";
	rename -uid "20483641-49EA-C97C-A06E-ED811E12766D";
	setAttr -s 2 ".i";
createNode multMatrix -n "bone008JNTToBone008BUFConstraint";
	rename -uid "34CFF6EF-4483-08BA-8A59-17B96F7F26E2";
	setAttr -s 2 ".i";
createNode multMatrix -n "getTangentTopBUFLocalMatrix";
	rename -uid "965704F3-4652-18E0-5D67-27B35AE771BA";
	setAttr -s 4 ".i";
createNode blendMatrix -n "getTangentTopBUFWorldMatrix";
	rename -uid "37860233-48C3-9771-E099-DE92634C776B";
createNode floatMath -n "inversePinch";
	rename -uid "4B76BAEF-43BE-EF8A-5913-7BA6AD4522F5";
	setAttr "._cnd" 1;
createNode multMatrix -n "getTangentBottomBUFParentMatrix";
	rename -uid "9B3C8094-4201-76B5-E873-C8AE9CB55025";
	setAttr -s 4 ".i";
createNode blendMatrix -n "getTangentBottomBUFWorldMatrix";
	rename -uid "301BF90C-46AB-5DA5-C818-F89AD365B0C5";
createNode multMatrix -n "getBone000JNTParentMatrix";
	rename -uid "3BB93527-4909-63CC-F35F-13A0C1BC089E";
	setAttr -s 2 ".i";
createNode composeMatrix -n "getBone000JNTPositionWorldMatrix";
	rename -uid "94F1C142-4112-D827-3EB8-6183B7A6FFE3";
createNode motionPath -n "getBone000JNTWorldPosition";
	rename -uid "93E14997-4289-3909-19A5-EFBA80327AE9";
	setAttr ".f" yes;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone000JNTWorldScale";
	rename -uid "FF112D73-4EC6-9F1E-B757-04B51AF58FA2";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multMatrix -n "getBone001JNTParentMatrix";
	rename -uid "E45875DD-4082-C371-CC6E-EFBD2C85A7A8";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone001JNTAimMatrix";
	rename -uid "A650B1F7-4245-C5AC-36CB-C2973BA5EF92";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone001JNTPositionWorldMatrix";
	rename -uid "60F65C96-4C5A-D2AB-1EC9-F88D71FAC0B0";
createNode motionPath -n "getBone001JNTWorldPosition";
	rename -uid "38D36375-4D7F-36BC-A889-91AE8486C190";
	setAttr ".u" 0.125;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone001JNTWorldScale";
	rename -uid "48324BFF-44FA-C1A2-5CCC-FAB8F16DB723";
	setAttr ".v" -type "float3" 0.125 0.125 0.125 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode composeMatrix -n "getBone002JNTPositionWorldMatrix";
	rename -uid "3976ECB4-447A-2750-82F0-94A5CEB3B389";
createNode motionPath -n "getBone002JNTWorldPosition";
	rename -uid "C1B1A654-433E-9677-665E-31B27E355A26";
	setAttr ".u" 0.25;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone002JNTWorldScale";
	rename -uid "BE6E52DA-496B-656A-7919-48930670D6F7";
	setAttr ".v" -type "float3" 0.25 0.25 0.25 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone001LocalTorsionMatrix";
	rename -uid "D8B8C280-47D3-F878-5FD5-3B8C25BD5B0B";
	setAttr ".env" 0.125;
createNode unitConversion -n "unitConversion4";
	rename -uid "99159650-4CC2-610B-70B4-488BFFFDC03F";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone001JNTTorsionFromMiddleIKCON";
	rename -uid "A2B9A4F9-4058-83AF-2E4D-019CA415F7A6";
	setAttr "._fb" 0.25;
	setAttr "._cnd" 2;
createNode unitConversion -n "unitConversion1";
	rename -uid "FBEB000A-4508-B296-347C-FFAF8FED948A";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "getBone001LocalScale";
	rename -uid "2F14850F-4C66-6D69-C66D-558182D525C4";
createNode setRange -n "getBone001SquashStretchScale";
	rename -uid "8E794374-4F29-76A9-DD94-3480BB934A1A";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode floatMath -n "getSquashStretchDistributionCondition";
	rename -uid "3347E734-469D-BE37-7257-738E805C03FD";
	setAttr "._cnd" 1;
createNode plusMinusAverage -n "getSingleDistribSquashStretchFirstQuarterScaleAmount";
	rename -uid "BBC921A4-44DA-63EC-DA1B-B8A4A4E46555";
	setAttr ".op" 3;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "bottomSquashStretchJNTFirstQuarterScale";
	rename -uid "DE43F890-4BF8-CEC6-3B5D-F48B9F3D767C";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "bottomSquashStretchJNTFirstQuarterScaleAmount";
	rename -uid "B22457B6-498C-C7EA-8417-47A4B37BEE70";
	setAttr ".i2" -type "float3" 0.33000001 0.33000001 0.33000001 ;
createNode plusMinusAverage -n "bottomSquashStretchJNTScaleAmount";
	rename -uid "DDB8DD59-4549-F448-0662-2D81E5ECFBD8";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "getBottomSquashStretchJNTScaledScale";
	rename -uid "F5E992D7-4EEF-C121-F742-318DB8BB5852";
	setAttr ".op" 3;
createNode floatMath -n "squashStretchScaleDecreaseValue";
	rename -uid "CDD6CB8B-429B-8100-FA5C-49901AB723D4";
	setAttr "._fb" 0.10000000149011612;
	setAttr "._cnd" 2;
createNode floatConstant -n "one";
	rename -uid "88AEEFA2-469E-DFB8-0B52-5FABCC45890E";
createNode plusMinusAverage -n "topSquashStretchJNTFirstQuarterScale";
	rename -uid "BFF672D3-43E0-1C48-EE2B-339547C70BEC";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "topSquashStretchJNTFirstQuarterScaleAmount";
	rename -uid "401B57FE-4EA9-491B-36D4-288173ADFBB8";
	setAttr ".i2" -type "float3" 0.33000001 0.33000001 0.33000001 ;
createNode plusMinusAverage -n "topSquashStretchJNTScaleAmount";
	rename -uid "B634EF8F-4654-A485-7427-978D01F1ECA9";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "getTopSquashStretchJNTScaledScale";
	rename -uid "811107D5-48AF-21D0-9029-A28F27A04430";
	setAttr ".op" 3;
createNode plusMinusAverage -n "bottomSquashStretchJNTHalfScale";
	rename -uid "DB9B5E39-43E9-1E44-4BC1-BEB709F8798B";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "bottomSquashStretchJNTHalfScaleAmount";
	rename -uid "8859917B-4F38-AA49-5C31-8EBD802AC1F1";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode plusMinusAverage -n "middleIKCONFirstQuarterLocalScale";
	rename -uid "82693525-446F-82D0-4EBA-D5986C80B3AF";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "middleIKCONFirstQuarterLocalScaleAmount";
	rename -uid "1C9475EA-47A8-AF56-B0A2-DEA7FEFC947C";
	setAttr ".i2" -type "float3" 0.33000001 0.33000001 0.33000001 ;
createNode plusMinusAverage -n "getMiddleIKCONLocalScaleAmount";
	rename -uid "87AAE447-491D-A955-7EB8-57B11B8D7749";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multMatrix -n "getBone002JNTParentMatrix";
	rename -uid "BFE30D98-4F9C-80E7-B005-C5895112F208";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone002JNTAimMatrix";
	rename -uid "FFCC8CD4-4A3D-3038-807C-E098AD7BE2B3";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone003JNTPositionWorldMatrix";
	rename -uid "6D57D1D0-4E08-CAF2-1B36-E7BEA66A5C08";
createNode motionPath -n "getBone003JNTWorldPosition";
	rename -uid "0D482C00-4C0F-004E-43D2-1B9725E3B3E4";
	setAttr ".u" 0.375;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone003JNTWorldScale";
	rename -uid "A9066D5A-4B36-0581-349C-59AA67FE93A1";
	setAttr ".v" -type "float3" 0.375 0.375 0.375 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone002LocalTorsionMatrix";
	rename -uid "2B8EDC9B-48E2-932D-8A33-25A2024AEEEC";
	setAttr ".env" 0.25;
createNode unitConversion -n "unitConversion6";
	rename -uid "8917129E-4927-614D-0EF1-28B6853DC8D9";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone002JNTTorsionFromMiddleIKCON";
	rename -uid "360B3B42-4DF6-0B06-CFA9-99BDBBE8510A";
	setAttr "._fb" 0.5;
	setAttr "._cnd" 2;
createNode unitConversion -n "unitConversion2";
	rename -uid "7FFC2A63-4B50-D973-2C77-5BBA309B20DC";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "getBone002LocalScale";
	rename -uid "8BBE1A71-470C-D685-721F-6DB6DE619E1D";
createNode setRange -n "getBone002SquashStretchScale";
	rename -uid "80341855-4BB7-C1CE-0C73-6E8C9F4069A0";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "getSingleDistribSquashStretchHalfScaleAmount";
	rename -uid "4B027966-43DA-F5FA-4ECD-158A10093C54";
	setAttr ".op" 3;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "topSquashStretchJNTHalfScale";
	rename -uid "AF26E80B-4C19-7D99-1ACA-9A94655BCCBE";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "topSquashStretchJNTHalfScaleAmount";
	rename -uid "21691019-406B-DE99-D887-6190F7DD7D5E";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode plusMinusAverage -n "middleIKCONHalfLocalScale";
	rename -uid "52111518-4AE5-050D-F676-618EC3C02BD2";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "middleIKCONHalfLocalScaleAmount";
	rename -uid "24D481C6-452B-DCAF-B993-11A919C3E41B";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode multMatrix -n "getBone003JNTParentMatrix";
	rename -uid "04F0047B-4487-A634-3F24-0B81E3B08C25";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone003JNTAimMatrix";
	rename -uid "9E7B9A62-4F5D-C774-1212-A884C55B8B6F";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone004JNTPositionWorldMatrix";
	rename -uid "7D40ADAF-4725-1361-3A6F-FD86FFF99B58";
createNode motionPath -n "getBone004JNTWorldPosition";
	rename -uid "6C0A0565-4F61-ECFB-ED34-EEA861D08F34";
	setAttr ".u" 0.5;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone004JNTWorldScale";
	rename -uid "94C3F6E7-43B6-BA34-3BDE-38995FD3F4A7";
	setAttr ".v" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone003LocalTorsionMatrix";
	rename -uid "864F623C-4911-23E8-4114-6DB16D398DFC";
	setAttr ".env" 0.375;
createNode unitConversion -n "unitConversion8";
	rename -uid "862E095F-43F8-38AA-C84F-A3BE5E2228AD";
	setAttr ".cf" 0.017453292519943295;
createNode floatMath -n "getBone003JNTTorsionFromMiddleIKCON";
	rename -uid "6C7800F4-4325-5030-6B4C-8F980C6E69A1";
	setAttr "._fb" 0.75;
	setAttr "._cnd" 2;
createNode unitConversion -n "unitConversion3";
	rename -uid "1BCF545D-4026-A813-38D7-EB9B57319DB0";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "getBone003LocalScale";
	rename -uid "BEF1EAAE-44C3-713E-CB7A-B9BF02F3881F";
createNode setRange -n "getBone003SquashStretchScale";
	rename -uid "F3E8400C-47BD-12DA-D6AE-F5B0234ADC15";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "getSingleDistribSquashStretchThirdQuarterScaleAmount";
	rename -uid "EA27F1B1-466E-998C-CAA7-AF9CE71C0BFB";
	setAttr ".op" 3;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "bottomSquashStretchJNTThirdQuarterScale";
	rename -uid "AEECD38E-40A2-933F-F272-ACA78BE74C89";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "bottomSquashStretchJNTThirdQuarterScaleAmount";
	rename -uid "98EE21F3-4791-19B5-4441-53A97E61F80B";
	setAttr ".i2" -type "float3" 0.89999998 0.89999998 0.89999998 ;
createNode plusMinusAverage -n "topSquashStretchJNTThirdQuarterScale";
	rename -uid "57402616-47A9-029B-0975-64B03E4C6F03";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "topSquashStretchJNTThirdQuarterScaleAmount";
	rename -uid "CF639CDC-4CDD-588E-2227-3C80323EB7BE";
	setAttr ".i2" -type "float3" 0.89999998 0.89999998 0.89999998 ;
createNode plusMinusAverage -n "middleIKCONThirdQuarterLocalScale";
	rename -uid "32D74EB8-4BA5-10A9-0266-0DA1C1A18103";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "middleIKCONThirdQuarterLocalScaleAmount";
	rename -uid "F7383A52-477F-B528-7713-55B4AB60D9C2";
	setAttr ".i2" -type "float3" 0.89999998 0.89999998 0.89999998 ;
createNode multMatrix -n "getBone004JNTParentMatrix";
	rename -uid "6025660E-440C-D0FA-CC4E-5282E9C30918";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone004JNTAimMatrix";
	rename -uid "E25C50C7-406B-1300-A642-E886DCB29F2F";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone005JNTPositionWorldMatrix";
	rename -uid "6EAD7A6F-4A8C-9C1D-7E7A-DFA9E7F9840A";
createNode motionPath -n "getBone005JNTWorldPosition";
	rename -uid "33C6D4FD-4047-FCC1-AD74-5DBA4F173CAE";
	setAttr ".u" 0.625;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone005JNTWorldScale";
	rename -uid "C7E60929-423C-08A1-D258-59867541DA82";
	setAttr ".v" -type "float3" 0.625 0.625 0.625 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone004LocalTorsionMatrix";
	rename -uid "ACF3A6D9-42C4-36F8-3949-BABCE73F061A";
	setAttr ".env" 0.5;
createNode multiplyDivide -n "getBone004LocalScale";
	rename -uid "CC0B9C89-4BA8-540C-316C-1FB74E9E24BD";
createNode setRange -n "getBone004SquashStretchScale";
	rename -uid "D25CFEB4-474E-E4D5-C801-7D978B4CEFAB";
	setAttr ".m" -type "float3" 1 1 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "getSingleDistribSquashStretchFullScaleAmount";
	rename -uid "17531484-47B6-4619-17FC-0BA719DA380F";
	setAttr ".op" 3;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multMatrix -n "getBone005JNTParentMatrix";
	rename -uid "8A602645-4553-E2EF-0E83-72890DDCE412";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone005JNTAimMatrix";
	rename -uid "73312626-4414-A769-89BA-8798DAA1839D";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone006JNTPositionWorldMatrix";
	rename -uid "44963522-4FD9-A89B-8EA6-CCBD4F2958D4";
createNode motionPath -n "getBone006JNTWorldPosition";
	rename -uid "A42EAD5C-4872-3552-875F-C7826431D242";
	setAttr ".u" 0.75;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone006JNTWorldScale";
	rename -uid "C93ABCDA-41FB-4AF5-022F-9A8D2773B245";
	setAttr ".v" -type "float3" 0.75 0.75 0.75 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone005LocalTorsionMatrix";
	rename -uid "1AAFE004-4457-A5C4-12C7-35B0D181C86B";
	setAttr ".env" 0.625;
createNode unitConversion -n "unitConversion9";
	rename -uid "8EA18270-4CFF-C30F-5BB4-68B22937E09F";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "getBone005LocalScale";
	rename -uid "3BBB6CCD-481D-157C-017E-72B8492014E8";
createNode setRange -n "getBone005SquashStretchScale";
	rename -uid "9B31A3FD-4B07-EC62-D495-74B284925AAB";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multMatrix -n "getBone006JNTParentMatrix";
	rename -uid "352D31EB-4445-E5CB-B171-1A864755266D";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone006JNTAimMatrix";
	rename -uid "A3535711-42F7-22B7-AFB9-1794C48AA46E";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode composeMatrix -n "getBone007JNTPositionWorldMatrix";
	rename -uid "4497D74B-49C8-A1B3-B5F0-458F4B8574B6";
createNode motionPath -n "getBone007JNTWorldPosition";
	rename -uid "2E2DF5FB-451E-C9D0-482F-B48ABFB68715";
	setAttr ".u" 0.875;
	setAttr ".ua" 0;
	setAttr ".wut" 2;
	setAttr ".wu" -type "double3" 1 0 0 ;
createNode setRange -n "getBone007JNTWorldScale";
	rename -uid "72DE7D35-4698-C476-4F93-B1AC19135FB3";
	setAttr ".v" -type "float3" 0.875 0.875 0.875 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode blendMatrix -n "getBone006LocalTorsionMatrix";
	rename -uid "A702EE65-4328-F095-6F06-7C831867F675";
	setAttr ".env" 0.75;
createNode unitConversion -n "unitConversion7";
	rename -uid "1AD9409D-4BDC-5CF6-5A59-9B98DC5DD4A1";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "getBone006LocalScale";
	rename -uid "AA982B38-4DAE-3E75-72BE-76844FE6E57A";
createNode setRange -n "getBone006SquashStretchScale";
	rename -uid "17A979E9-4F47-3715-3B4B-EEAAA81A15BD";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multMatrix -n "getBone007JNTParentMatrix";
	rename -uid "1C12AFA1-47EA-426A-9CBC-FB9E239C4673";
	setAttr -s 2 ".i";
createNode aimMatrix -n "getBone007JNTAimMatrix";
	rename -uid "06961049-4352-065E-7434-7D9C57B2ADCA";
	setAttr ".pmi" -type "double3" 0 1 0 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode blendMatrix -n "getBone007LocalTorsionMatrix";
	rename -uid "5E97BD95-4302-C549-2318-A6BA634D633C";
	setAttr ".env" 0.875;
createNode unitConversion -n "unitConversion5";
	rename -uid "CC87FFA2-4D93-ABC9-5B4A-AAAABF6B922C";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "getBone007LocalScale";
	rename -uid "ADC2DD14-4443-FFE5-4EA8-AAB49E701E6A";
createNode setRange -n "getBone007SquashStretchScale";
	rename -uid "F2402620-4AD2-BFCA-2EF6-6C853D62A387";
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multMatrix -n "spineIKCONToBone008JNTConstraint";
	rename -uid "9BD58A61-4BCA-F741-3141-84935434B314";
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
	setAttr -s 179 ".u";
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
connectAttr "hipToParentAttachBUFConstraint.o" "parentAttach_BUF.opm";
connectAttr "getLeftClaviculaChildAttachBUFParentMatrix.o" "leftClaviculaChildAttach_BUF.opm"
		;
connectAttr "getRightClaviculaChildAttachBUFParentMatrix.o" "rightClaviculaChildAttach_BUF.opm"
		;
connectAttr "getRightFemurChildAttachBUFParentMatrix.o" "rightFemurChildAttach_BUF.opm"
		;
connectAttr "getLeftFemurChildAttachBUFParentMatrix.o" "leftFemurChildAttach_BUF.opm"
		;
connectAttr "spineIKCONToHeadChildAttachBUFConstraint.o" "headChildAttach_BUF.opm"
		;
connectAttr "parentAttachBUFToHipFKCONConstraint.o" "hip_FK_CON.opm";
connectAttr "getMiddleLocalMatrix.o" "middle_FK_CON.opm";
connectAttr "getNeckLocalMatrix.o" "spine_IK_CON.opm";
connectAttr "getMiddleIKCONLocalMatrix.o" "middle_IK_CON.opm";
connectAttr "parentAttachBUFToOptionsBUFConstraint.o" "options_BUF.opm";
connectAttr "algo_GRP.wim" "spineCurve.opm";
connectAttr "decomposeHipIKCONWorldMatrix.ot" "spineCurveShape.cp[0]";
connectAttr "decomposeTangentBottomBUFWorldMatrix.ot" "spineCurveShape.cp[1]";
connectAttr "decomposeTangentTopBUFWorldMatrix.ot" "spineCurveShape.cp[2]";
connectAttr "decomposeSpineIKCONWorldMatrix.ot" "spineCurveShape.cp[3]";
connectAttr "getTopSquashStretchJNTConstraintMatrix.o" "topSquashStretch_JNT.opm"
		;
connectAttr "spineSecondHalfStretchFactor.of" "topSquashStretch_JNT.sy";
connectAttr "spineSecondHalfSquashFactor.of" "topSquashStretch_JNT.sz";
connectAttr "spineSecondHalfSquashFactor.of" "topSquashStretch_JNT.sx";
connectAttr "getBottomSquashStretchJNTConstraintMatrix.o" "bottomSquashStretch_JNT.opm"
		;
connectAttr "spineFirstHalfStretchFactor.of" "bottomSquashStretch_JNT.sy";
connectAttr "spineFirstHalfSquashFactor.of" "bottomSquashStretch_JNT.sz";
connectAttr "spineFirstHalfSquashFactor.of" "bottomSquashStretch_JNT.sx";
connectAttr "bone000JNTToBone000BUFConstraint.o" "bone000_BUF.opm";
connectAttr "bone008JNTToBone008BUFConstraint.o" "bone008_BUF.opm";
connectAttr "getTangentTopBUFLocalMatrix.o" "tangentTop_BUF.opm";
connectAttr "getTangentBottomBUFParentMatrix.o" "tangentBottom_BUF.opm";
connectAttr "getBone000JNTParentMatrix.o" "bone000_JNT.opm";
connectAttr "getBone001JNTParentMatrix.o" "bone001_JNT.opm";
connectAttr "unitConversion4.o" "bone001_JNT.ry";
connectAttr "getBone001LocalScale.o" "bone001_JNT.s";
connectAttr "getBone002JNTParentMatrix.o" "bone002_JNT.opm";
connectAttr "unitConversion6.o" "bone002_JNT.ry";
connectAttr "getBone002LocalScale.o" "bone002_JNT.s";
connectAttr "getBone003JNTParentMatrix.o" "bone003_JNT.opm";
connectAttr "unitConversion8.o" "bone003_JNT.ry";
connectAttr "getBone003LocalScale.o" "bone003_JNT.s";
connectAttr "getBone004JNTParentMatrix.o" "bone004_JNT.opm";
connectAttr "middle_IK_CON.ry" "bone004_JNT.ry";
connectAttr "getBone004LocalScale.o" "bone004_JNT.s";
connectAttr "getBone005JNTParentMatrix.o" "bone005_JNT.opm";
connectAttr "unitConversion9.o" "bone005_JNT.ry";
connectAttr "getBone005LocalScale.o" "bone005_JNT.s";
connectAttr "getBone006JNTParentMatrix.o" "bone006_JNT.opm";
connectAttr "unitConversion7.o" "bone006_JNT.ry";
connectAttr "getBone006LocalScale.o" "bone006_JNT.s";
connectAttr "getBone007JNTParentMatrix.o" "bone007_JNT.opm";
connectAttr "unitConversion5.o" "bone007_JNT.ry";
connectAttr "getBone007LocalScale.o" "bone007_JNT.s";
connectAttr "spineIKCONToBone008JNTConstraint.o" "bone008_JNT.opm";
connectAttr "stockHipWorldMatrix.tmat" "hipToParentAttachBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "hipToParentAttachBUFConstraint.i[1]";
connectAttr "hip.wm" "stockHipWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockHipWorldMatrix.nds";
connectAttr "stockLeftClaviculaWorldMatrix.tmat" "getLeftClaviculaChildAttachBUFParentMatrix.i[0]"
		;
connectAttr "inverseNeckWorldMatrix.omat" "getLeftClaviculaChildAttachBUFParentMatrix.i[1]"
		;
connectAttr "spine_IK_CON.wm" "getLeftClaviculaChildAttachBUFParentMatrix.i[2]";
connectAttr "controllers_GRP.wim" "getLeftClaviculaChildAttachBUFParentMatrix.i[3]"
		;
connectAttr "leftClavicula.wm" "stockLeftClaviculaWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockLeftClaviculaWorldMatrix.nds";
connectAttr "stockNeckWorldMatrix.tmat" "inverseNeckWorldMatrix.imat";
connectAttr "neck.wm" "stockNeckWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockNeckWorldMatrix.nds";
connectAttr "stockRightClaviculaWorldMatrix.tmat" "getRightClaviculaChildAttachBUFParentMatrix.i[0]"
		;
connectAttr "inverseNeckWorldMatrix.omat" "getRightClaviculaChildAttachBUFParentMatrix.i[1]"
		;
connectAttr "spine_IK_CON.wm" "getRightClaviculaChildAttachBUFParentMatrix.i[2]"
		;
connectAttr "controllers_GRP.wim" "getRightClaviculaChildAttachBUFParentMatrix.i[3]"
		;
connectAttr "rightClavicula.wm" "stockRightClaviculaWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockRightClaviculaWorldMatrix.nds";
connectAttr "stockRightFemurWorldMatrix.tmat" "getRightFemurChildAttachBUFParentMatrix.i[0]"
		;
connectAttr "inverseHipWorldMatrix.omat" "getRightFemurChildAttachBUFParentMatrix.i[1]"
		;
connectAttr "hip_IK_CON.wm" "getRightFemurChildAttachBUFParentMatrix.i[2]";
connectAttr "controllers_GRP.wim" "getRightFemurChildAttachBUFParentMatrix.i[3]"
		;
connectAttr "rightFemur.wm" "stockRightFemurWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockRightFemurWorldMatrix.nds";
connectAttr "stockHipWorldMatrix.imat" "inverseHipWorldMatrix.imat";
connectAttr "stockLeftFemurWorldMatrix.tmat" "getLeftFemurChildAttachBUFParentMatrix.i[0]"
		;
connectAttr "inverseHipWorldMatrix.omat" "getLeftFemurChildAttachBUFParentMatrix.i[1]"
		;
connectAttr "hip_IK_CON.wm" "getLeftFemurChildAttachBUFParentMatrix.i[2]";
connectAttr "controllers_GRP.wim" "getLeftFemurChildAttachBUFParentMatrix.i[3]";
connectAttr "leftFemur.wm" "stockLeftFemurWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockLeftFemurWorldMatrix.nds";
connectAttr "spine_IK_CON.wm" "spineIKCONToHeadChildAttachBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "spineIKCONToHeadChildAttachBUFConstraint.i[1]"
		;
connectAttr "parentAttach_BUF.wm" "parentAttachBUFToHipFKCONConstraint.i[0]";
connectAttr "controllers_GRP.wim" "parentAttachBUFToHipFKCONConstraint.i[1]";
connectAttr "stockMiddleWorldMatrix.tmat" "getMiddleLocalMatrix.i[0]";
connectAttr "inverseHipWorldMatrix.omat" "getMiddleLocalMatrix.i[1]";
connectAttr "middle.wm" "stockMiddleWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockMiddleWorldMatrix.nds";
connectAttr "stockNeckWorldMatrix.tmat" "getNeckLocalMatrix.i[0]";
connectAttr "inverseMiddleWorldMatrix.omat" "getNeckLocalMatrix.i[1]";
connectAttr "stockMiddleWorldMatrix.tmat" "inverseMiddleWorldMatrix.imat";
connectAttr "stockMiddleWorldMatrix.tmat" "getMiddleIKCONLocalMatrix.i[0]";
connectAttr "inverseNeckWorldMatrix.omat" "getMiddleIKCONLocalMatrix.i[1]";
connectAttr "parentAttach_BUF.wm" "parentAttachBUFToOptionsBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "parentAttachBUFToOptionsBUFConstraint.i[1]";
connectAttr "hip_IK_CON.wm" "decomposeHipIKCONWorldMatrix.imat";
connectAttr "tangentBottom_BUF.wm" "decomposeTangentBottomBUFWorldMatrix.imat";
connectAttr "tangentTop_BUF.wm" "decomposeTangentTopBUFWorldMatrix.imat";
connectAttr "spine_IK_CON.wm" "decomposeSpineIKCONWorldMatrix.imat";
connectAttr "getTopSquashStretchJNTParentMatrix.omat" "getTopSquashStretchJNTConstraintMatrix.i[0]"
		;
connectAttr "algo_GRP.wim" "getTopSquashStretchJNTConstraintMatrix.i[1]";
connectAttr "spine_IK_CON.wm" "getTopSquashStretchJNTParentMatrix.imat";
connectAttr "middle_IK_CON.wm" "getTopSquashStretchJNTParentMatrix.tgt[0].tmat";
connectAttr "spineSecondHalfCurrentLength.d" "spineSecondHalfStretchFactor._fa";
connectAttr "spineSecondHalfScaledLEngth.of" "spineSecondHalfStretchFactor._fb";
connectAttr "middle_IK_CON.wm" "spineSecondHalfCurrentLength.im1";
connectAttr "spine_IK_CON.wm" "spineSecondHalfCurrentLength.im2";
connectAttr "spineSecondHalfOrigLength.d" "spineSecondHalfScaledLEngth._fa";
connectAttr "decomposeSpineIKCONWorldMatrix.osy" "spineSecondHalfScaledLEngth._fb"
		;
connectAttr "stockMiddleWorldMatrix.tmat" "spineSecondHalfOrigLength.im1";
connectAttr "stockNeckWorldMatrix.tmat" "spineSecondHalfOrigLength.im2";
connectAttr "spineSecondHalfCurrentLength.d" "spineSecondHalfSquashFactor._fb";
connectAttr "spineSecondHalfScaledLEngth.of" "spineSecondHalfSquashFactor._fa";
connectAttr "getBottomSquashStretchJNTParentMatrix.omat" "getBottomSquashStretchJNTConstraintMatrix.i[0]"
		;
connectAttr "algo_GRP.wim" "getBottomSquashStretchJNTConstraintMatrix.i[1]";
connectAttr "hip_IK_CON.wm" "getBottomSquashStretchJNTParentMatrix.imat";
connectAttr "middle_IK_CON.wm" "getBottomSquashStretchJNTParentMatrix.tgt[0].tmat"
		;
connectAttr "spineFirstHalfCurrentLength.d" "spineFirstHalfStretchFactor._fa";
connectAttr "spineFirstHalfScaledLength.of" "spineFirstHalfStretchFactor._fb";
connectAttr "hip_IK_CON.wm" "spineFirstHalfCurrentLength.im1";
connectAttr "middle_IK_CON.wm" "spineFirstHalfCurrentLength.im2";
connectAttr "spineFirstHalfOrigLength.d" "spineFirstHalfScaledLength._fa";
connectAttr "decomposeHipIKCONWorldMatrix.osy" "spineFirstHalfScaledLength._fb";
connectAttr "stockHipWorldMatrix.tmat" "spineFirstHalfOrigLength.im1";
connectAttr "stockMiddleWorldMatrix.tmat" "spineFirstHalfOrigLength.im2";
connectAttr "spineFirstHalfScaledLength.of" "spineFirstHalfSquashFactor._fa";
connectAttr "spineFirstHalfCurrentLength.d" "spineFirstHalfSquashFactor._fb";
connectAttr "bone000_JNT.wm" "bone000JNTToBone000BUFConstraint.i[0]";
connectAttr "algo_GRP.wim" "bone000JNTToBone000BUFConstraint.i[1]";
connectAttr "bone008_JNT.wm" "bone008JNTToBone008BUFConstraint.i[0]";
connectAttr "algo_GRP.wim" "bone008JNTToBone008BUFConstraint.i[1]";
connectAttr "getTangentTopBUFWorldMatrix.omat" "getTangentTopBUFLocalMatrix.i[0]"
		;
connectAttr "inverseMiddleWorldMatrix.omat" "getTangentTopBUFLocalMatrix.i[1]";
connectAttr "middle_IK_CON.wm" "getTangentTopBUFLocalMatrix.i[2]";
connectAttr "algo_GRP.wim" "getTangentTopBUFLocalMatrix.i[3]";
connectAttr "stockMiddleWorldMatrix.tmat" "getTangentTopBUFWorldMatrix.imat";
connectAttr "stockNeckWorldMatrix.tmat" "getTangentTopBUFWorldMatrix.tgt[0].tmat"
		;
connectAttr "inversePinch.of" "getTangentTopBUFWorldMatrix.env";
connectAttr "middle_IK_CON.pinch" "inversePinch._fb";
connectAttr "getTangentBottomBUFWorldMatrix.omat" "getTangentBottomBUFParentMatrix.i[0]"
		;
connectAttr "inverseMiddleWorldMatrix.omat" "getTangentBottomBUFParentMatrix.i[1]"
		;
connectAttr "middle_IK_CON.wm" "getTangentBottomBUFParentMatrix.i[2]";
connectAttr "algo_GRP.wim" "getTangentBottomBUFParentMatrix.i[3]";
connectAttr "stockMiddleWorldMatrix.tmat" "getTangentBottomBUFWorldMatrix.imat";
connectAttr "stockHipWorldMatrix.tmat" "getTangentBottomBUFWorldMatrix.tgt[0].tmat"
		;
connectAttr "inversePinch.of" "getTangentBottomBUFWorldMatrix.env";
connectAttr "getBone000JNTPositionWorldMatrix.omat" "getBone000JNTParentMatrix.i[0]"
		;
connectAttr "bones_GRP.wim" "getBone000JNTParentMatrix.i[1]";
connectAttr "getBone000JNTWorldPosition.ac" "getBone000JNTPositionWorldMatrix.it"
		;
connectAttr "getBone000JNTWorldPosition.r" "getBone000JNTPositionWorldMatrix.ir"
		;
connectAttr "getBone000JNTWorldScale.o" "getBone000JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone000JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone000JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone000JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone000JNTWorldScale.m";
connectAttr "getBone001JNTAimMatrix.tmat" "getBone001JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone001JNTParentMatrix.i[2]";
connectAttr "getBone001JNTPositionWorldMatrix.omat" "getBone001JNTAimMatrix.imat"
		;
connectAttr "getBone002JNTPositionWorldMatrix.omat" "getBone001JNTAimMatrix.pmat"
		;
connectAttr "getBone001LocalTorsionMatrix.omat" "getBone001JNTAimMatrix.smat";
connectAttr "getBone001JNTWorldPosition.ac" "getBone001JNTPositionWorldMatrix.it"
		;
connectAttr "getBone001JNTWorldScale.o" "getBone001JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone001JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone001JNTWorldPosition.wum";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone001JNTWorldScale.m";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone001JNTWorldScale.n";
connectAttr "getBone002JNTWorldPosition.ac" "getBone002JNTPositionWorldMatrix.it"
		;
connectAttr "getBone002JNTWorldScale.o" "getBone002JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone002JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone002JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone002JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone002JNTWorldScale.m";
connectAttr "bone000_BUF.wm" "getBone001LocalTorsionMatrix.imat";
connectAttr "bone008_BUF.wm" "getBone001LocalTorsionMatrix.tgt[0].tmat";
connectAttr "getBone001JNTTorsionFromMiddleIKCON.of" "unitConversion4.i";
connectAttr "unitConversion1.o" "getBone001JNTTorsionFromMiddleIKCON._fa";
connectAttr "middle_IK_CON.ry" "unitConversion1.i";
connectAttr "getBone001SquashStretchScale.o" "getBone001LocalScale.i1";
connectAttr "middleIKCONFirstQuarterLocalScale.o3" "getBone001LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone001SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone001SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone001SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchFirstQuarterScaleAmount.o3" "getBone001SquashStretchScale.n"
		;
connectAttr "bottomSquashStretchJNTHalfScale.o3" "getBone001SquashStretchScale.m"
		;
connectAttr "options_CON.squashStretchDistribution" "getSquashStretchDistributionCondition._fa"
		;
connectAttr "bottomSquashStretchJNTFirstQuarterScale.o3" "getSingleDistribSquashStretchFirstQuarterScaleAmount.i3[0]"
		;
connectAttr "topSquashStretchJNTFirstQuarterScale.o3" "getSingleDistribSquashStretchFirstQuarterScaleAmount.i3[1]"
		;
connectAttr "bottomSquashStretchJNTFirstQuarterScaleAmount.o" "bottomSquashStretchJNTFirstQuarterScale.i3[0]"
		;
connectAttr "one.of" "bottomSquashStretchJNTFirstQuarterScale.i3[1].i3x";
connectAttr "one.of" "bottomSquashStretchJNTFirstQuarterScale.i3[1].i3y";
connectAttr "one.of" "bottomSquashStretchJNTFirstQuarterScale.i3[1].i3z";
connectAttr "bottomSquashStretchJNTScaleAmount.o3" "bottomSquashStretchJNTFirstQuarterScaleAmount.i1"
		;
connectAttr "getBottomSquashStretchJNTScaledScale.o" "bottomSquashStretchJNTScaleAmount.i3[0]"
		;
connectAttr "one.of" "bottomSquashStretchJNTScaleAmount.i3[1].i3x";
connectAttr "one.of" "bottomSquashStretchJNTScaleAmount.i3[1].i3y";
connectAttr "one.of" "bottomSquashStretchJNTScaleAmount.i3[1].i3z";
connectAttr "bottomSquashStretch_JNT.s" "getBottomSquashStretchJNTScaledScale.i1"
		;
connectAttr "squashStretchScaleDecreaseValue.of" "getBottomSquashStretchJNTScaledScale.i2x"
		;
connectAttr "squashStretchScaleDecreaseValue.of" "getBottomSquashStretchJNTScaledScale.i2y"
		;
connectAttr "squashStretchScaleDecreaseValue.of" "getBottomSquashStretchJNTScaledScale.i2z"
		;
connectAttr "options_CON.squashStretchScale" "squashStretchScaleDecreaseValue._fa"
		;
connectAttr "nodesStocker.of" "one.nds";
connectAttr "topSquashStretchJNTFirstQuarterScaleAmount.o" "topSquashStretchJNTFirstQuarterScale.i3[0]"
		;
connectAttr "one.of" "topSquashStretchJNTFirstQuarterScale.i3[1].i3x";
connectAttr "one.of" "topSquashStretchJNTFirstQuarterScale.i3[1].i3y";
connectAttr "one.of" "topSquashStretchJNTFirstQuarterScale.i3[1].i3z";
connectAttr "topSquashStretchJNTScaleAmount.o3" "topSquashStretchJNTFirstQuarterScaleAmount.i1"
		;
connectAttr "getTopSquashStretchJNTScaledScale.o" "topSquashStretchJNTScaleAmount.i3[0]"
		;
connectAttr "one.of" "topSquashStretchJNTScaleAmount.i3[1].i3x";
connectAttr "one.of" "topSquashStretchJNTScaleAmount.i3[1].i3y";
connectAttr "one.of" "topSquashStretchJNTScaleAmount.i3[1].i3z";
connectAttr "topSquashStretch_JNT.s" "getTopSquashStretchJNTScaledScale.i1";
connectAttr "squashStretchScaleDecreaseValue.of" "getTopSquashStretchJNTScaledScale.i2x"
		;
connectAttr "squashStretchScaleDecreaseValue.of" "getTopSquashStretchJNTScaledScale.i2y"
		;
connectAttr "squashStretchScaleDecreaseValue.of" "getTopSquashStretchJNTScaledScale.i2z"
		;
connectAttr "bottomSquashStretchJNTHalfScaleAmount.o" "bottomSquashStretchJNTHalfScale.i3[0]"
		;
connectAttr "one.of" "bottomSquashStretchJNTHalfScale.i3[1].i3x";
connectAttr "one.of" "bottomSquashStretchJNTHalfScale.i3[1].i3y";
connectAttr "one.of" "bottomSquashStretchJNTHalfScale.i3[1].i3z";
connectAttr "bottomSquashStretchJNTScaleAmount.o3" "bottomSquashStretchJNTHalfScaleAmount.i1"
		;
connectAttr "middleIKCONFirstQuarterLocalScaleAmount.o" "middleIKCONFirstQuarterLocalScale.i3[0]"
		;
connectAttr "one.of" "middleIKCONFirstQuarterLocalScale.i3[1].i3x";
connectAttr "one.of" "middleIKCONFirstQuarterLocalScale.i3[1].i3y";
connectAttr "one.of" "middleIKCONFirstQuarterLocalScale.i3[1].i3z";
connectAttr "getMiddleIKCONLocalScaleAmount.o3" "middleIKCONFirstQuarterLocalScaleAmount.i1"
		;
connectAttr "middle_IK_CON.s" "getMiddleIKCONLocalScaleAmount.i3[0]";
connectAttr "one.of" "getMiddleIKCONLocalScaleAmount.i3[1].i3x";
connectAttr "one.of" "getMiddleIKCONLocalScaleAmount.i3[1].i3y";
connectAttr "one.of" "getMiddleIKCONLocalScaleAmount.i3[1].i3z";
connectAttr "getBone002JNTAimMatrix.tmat" "getBone002JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone002JNTParentMatrix.i[2]";
connectAttr "getBone002JNTPositionWorldMatrix.omat" "getBone002JNTAimMatrix.imat"
		;
connectAttr "getBone003JNTPositionWorldMatrix.omat" "getBone002JNTAimMatrix.pmat"
		;
connectAttr "getBone002LocalTorsionMatrix.omat" "getBone002JNTAimMatrix.smat";
connectAttr "getBone003JNTWorldPosition.ac" "getBone003JNTPositionWorldMatrix.it"
		;
connectAttr "getBone003JNTWorldScale.o" "getBone003JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone003JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone003JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone003JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone003JNTWorldScale.m";
connectAttr "bone000_BUF.wm" "getBone002LocalTorsionMatrix.imat";
connectAttr "bone008_BUF.wm" "getBone002LocalTorsionMatrix.tgt[0].tmat";
connectAttr "getBone002JNTTorsionFromMiddleIKCON.of" "unitConversion6.i";
connectAttr "unitConversion2.o" "getBone002JNTTorsionFromMiddleIKCON._fa";
connectAttr "middle_IK_CON.ry" "unitConversion2.i";
connectAttr "getBone002SquashStretchScale.o" "getBone002LocalScale.i1";
connectAttr "middleIKCONHalfLocalScale.o3" "getBone002LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone002SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone002SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone002SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchHalfScaleAmount.o3" "getBone002SquashStretchScale.n"
		;
connectAttr "getBottomSquashStretchJNTScaledScale.o" "getBone002SquashStretchScale.m"
		;
connectAttr "bottomSquashStretchJNTHalfScale.o3" "getSingleDistribSquashStretchHalfScaleAmount.i3[0]"
		;
connectAttr "topSquashStretchJNTHalfScale.o3" "getSingleDistribSquashStretchHalfScaleAmount.i3[1]"
		;
connectAttr "topSquashStretchJNTHalfScaleAmount.o" "topSquashStretchJNTHalfScale.i3[0]"
		;
connectAttr "one.of" "topSquashStretchJNTHalfScale.i3[1].i3x";
connectAttr "one.of" "topSquashStretchJNTHalfScale.i3[1].i3y";
connectAttr "one.of" "topSquashStretchJNTHalfScale.i3[1].i3z";
connectAttr "topSquashStretchJNTScaleAmount.o3" "topSquashStretchJNTHalfScaleAmount.i1"
		;
connectAttr "middleIKCONHalfLocalScaleAmount.o" "middleIKCONHalfLocalScale.i3[0]"
		;
connectAttr "one.of" "middleIKCONHalfLocalScale.i3[1].i3x";
connectAttr "one.of" "middleIKCONHalfLocalScale.i3[1].i3y";
connectAttr "one.of" "middleIKCONHalfLocalScale.i3[1].i3z";
connectAttr "getMiddleIKCONLocalScaleAmount.o3" "middleIKCONHalfLocalScaleAmount.i1"
		;
connectAttr "getBone003JNTAimMatrix.tmat" "getBone003JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone003JNTParentMatrix.i[2]";
connectAttr "getBone003JNTPositionWorldMatrix.omat" "getBone003JNTAimMatrix.imat"
		;
connectAttr "getBone004JNTPositionWorldMatrix.omat" "getBone003JNTAimMatrix.pmat"
		;
connectAttr "getBone003LocalTorsionMatrix.omat" "getBone003JNTAimMatrix.smat";
connectAttr "getBone004JNTWorldPosition.ac" "getBone004JNTPositionWorldMatrix.it"
		;
connectAttr "getBone004JNTWorldScale.o" "getBone004JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone004JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone004JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone004JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone004JNTWorldScale.m";
connectAttr "bone000_BUF.wm" "getBone003LocalTorsionMatrix.imat";
connectAttr "bone008_BUF.wm" "getBone003LocalTorsionMatrix.tgt[0].tmat";
connectAttr "getBone003JNTTorsionFromMiddleIKCON.of" "unitConversion8.i";
connectAttr "unitConversion3.o" "getBone003JNTTorsionFromMiddleIKCON._fa";
connectAttr "middle_IK_CON.ry" "unitConversion3.i";
connectAttr "getBone003SquashStretchScale.o" "getBone003LocalScale.i1";
connectAttr "middleIKCONThirdQuarterLocalScale.o3" "getBone003LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone003SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone003SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone003SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchThirdQuarterScaleAmount.o3" "getBone003SquashStretchScale.n"
		;
connectAttr "bottomSquashStretchJNTHalfScale.o3" "getBone003SquashStretchScale.m"
		;
connectAttr "bottomSquashStretchJNTThirdQuarterScale.o3" "getSingleDistribSquashStretchThirdQuarterScaleAmount.i3[0]"
		;
connectAttr "topSquashStretchJNTThirdQuarterScale.o3" "getSingleDistribSquashStretchThirdQuarterScaleAmount.i3[1]"
		;
connectAttr "bottomSquashStretchJNTThirdQuarterScaleAmount.o" "bottomSquashStretchJNTThirdQuarterScale.i3[0]"
		;
connectAttr "one.of" "bottomSquashStretchJNTThirdQuarterScale.i3[1].i3x";
connectAttr "one.of" "bottomSquashStretchJNTThirdQuarterScale.i3[1].i3y";
connectAttr "one.of" "bottomSquashStretchJNTThirdQuarterScale.i3[1].i3z";
connectAttr "bottomSquashStretchJNTScaleAmount.o3" "bottomSquashStretchJNTThirdQuarterScaleAmount.i1"
		;
connectAttr "topSquashStretchJNTThirdQuarterScaleAmount.o" "topSquashStretchJNTThirdQuarterScale.i3[0]"
		;
connectAttr "one.of" "topSquashStretchJNTThirdQuarterScale.i3[1].i3x";
connectAttr "one.of" "topSquashStretchJNTThirdQuarterScale.i3[1].i3y";
connectAttr "one.of" "topSquashStretchJNTThirdQuarterScale.i3[1].i3z";
connectAttr "topSquashStretchJNTScaleAmount.o3" "topSquashStretchJNTThirdQuarterScaleAmount.i1"
		;
connectAttr "middleIKCONThirdQuarterLocalScaleAmount.o" "middleIKCONThirdQuarterLocalScale.i3[0]"
		;
connectAttr "one.of" "middleIKCONThirdQuarterLocalScale.i3[1].i3x";
connectAttr "one.of" "middleIKCONThirdQuarterLocalScale.i3[1].i3y";
connectAttr "one.of" "middleIKCONThirdQuarterLocalScale.i3[1].i3z";
connectAttr "getMiddleIKCONLocalScaleAmount.o3" "middleIKCONThirdQuarterLocalScaleAmount.i1"
		;
connectAttr "getBone004JNTAimMatrix.tmat" "getBone004JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone004JNTParentMatrix.i[2]";
connectAttr "getBone004JNTPositionWorldMatrix.omat" "getBone004JNTAimMatrix.imat"
		;
connectAttr "getBone005JNTPositionWorldMatrix.omat" "getBone004JNTAimMatrix.pmat"
		;
connectAttr "getBone004LocalTorsionMatrix.omat" "getBone004JNTAimMatrix.smat";
connectAttr "getBone005JNTWorldPosition.ac" "getBone005JNTPositionWorldMatrix.it"
		;
connectAttr "getBone005JNTWorldScale.o" "getBone005JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone005JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone005JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone005JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone005JNTWorldScale.m";
connectAttr "bone008_BUF.wm" "getBone004LocalTorsionMatrix.tgt[0].tmat";
connectAttr "bone000_BUF.wm" "getBone004LocalTorsionMatrix.imat";
connectAttr "getBone004SquashStretchScale.o" "getBone004LocalScale.i1";
connectAttr "middle_IK_CON.s" "getBone004LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone004SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone004SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone004SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchFullScaleAmount.o3" "getBone004SquashStretchScale.n"
		;
connectAttr "getBottomSquashStretchJNTScaledScale.o" "getSingleDistribSquashStretchFullScaleAmount.i3[0]"
		;
connectAttr "getTopSquashStretchJNTScaledScale.o" "getSingleDistribSquashStretchFullScaleAmount.i3[1]"
		;
connectAttr "getBone005JNTAimMatrix.tmat" "getBone005JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone005JNTParentMatrix.i[2]";
connectAttr "getBone005JNTPositionWorldMatrix.omat" "getBone005JNTAimMatrix.imat"
		;
connectAttr "getBone006JNTPositionWorldMatrix.omat" "getBone005JNTAimMatrix.pmat"
		;
connectAttr "getBone005LocalTorsionMatrix.omat" "getBone005JNTAimMatrix.smat";
connectAttr "getBone006JNTWorldPosition.ac" "getBone006JNTPositionWorldMatrix.it"
		;
connectAttr "getBone006JNTWorldScale.o" "getBone006JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone006JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone006JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone006JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone006JNTWorldScale.m";
connectAttr "bone008_BUF.wm" "getBone005LocalTorsionMatrix.tgt[0].tmat";
connectAttr "bone000_BUF.wm" "getBone005LocalTorsionMatrix.imat";
connectAttr "getBone003JNTTorsionFromMiddleIKCON.of" "unitConversion9.i";
connectAttr "getBone005SquashStretchScale.o" "getBone005LocalScale.i1";
connectAttr "middleIKCONThirdQuarterLocalScale.o3" "getBone005LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone005SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone005SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone005SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchThirdQuarterScaleAmount.o3" "getBone005SquashStretchScale.n"
		;
connectAttr "topSquashStretchJNTHalfScale.o3" "getBone005SquashStretchScale.m";
connectAttr "getBone006JNTAimMatrix.tmat" "getBone006JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone006JNTParentMatrix.i[2]";
connectAttr "getBone006JNTPositionWorldMatrix.omat" "getBone006JNTAimMatrix.imat"
		;
connectAttr "getBone007JNTPositionWorldMatrix.omat" "getBone006JNTAimMatrix.pmat"
		;
connectAttr "getBone006LocalTorsionMatrix.omat" "getBone006JNTAimMatrix.smat";
connectAttr "getBone007JNTWorldPosition.ac" "getBone007JNTPositionWorldMatrix.it"
		;
connectAttr "getBone007JNTWorldScale.o" "getBone007JNTPositionWorldMatrix.is";
connectAttr "spineCurveShape.ws" "getBone007JNTWorldPosition.gp";
connectAttr "hip_IK_CON.wm" "getBone007JNTWorldPosition.wum";
connectAttr "decomposeHipIKCONWorldMatrix.os" "getBone007JNTWorldScale.n";
connectAttr "decomposeSpineIKCONWorldMatrix.os" "getBone007JNTWorldScale.m";
connectAttr "bone008_BUF.wm" "getBone006LocalTorsionMatrix.tgt[0].tmat";
connectAttr "bone000_BUF.wm" "getBone006LocalTorsionMatrix.imat";
connectAttr "getBone002JNTTorsionFromMiddleIKCON.of" "unitConversion7.i";
connectAttr "getBone006SquashStretchScale.o" "getBone006LocalScale.i1";
connectAttr "middleIKCONHalfLocalScale.o3" "getBone006LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone006SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone006SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone006SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchHalfScaleAmount.o3" "getBone006SquashStretchScale.n"
		;
connectAttr "getTopSquashStretchJNTScaledScale.o" "getBone006SquashStretchScale.m"
		;
connectAttr "getBone007JNTAimMatrix.tmat" "getBone007JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone007JNTParentMatrix.i[2]";
connectAttr "getBone007JNTPositionWorldMatrix.omat" "getBone007JNTAimMatrix.imat"
		;
connectAttr "bone008_JNT.wm" "getBone007JNTAimMatrix.pmat";
connectAttr "getBone007LocalTorsionMatrix.omat" "getBone007JNTAimMatrix.smat";
connectAttr "bone008_BUF.wm" "getBone007LocalTorsionMatrix.tgt[0].tmat";
connectAttr "bone000_BUF.wm" "getBone007LocalTorsionMatrix.imat";
connectAttr "getBone001JNTTorsionFromMiddleIKCON.of" "unitConversion5.i";
connectAttr "getBone007SquashStretchScale.o" "getBone007LocalScale.i1";
connectAttr "middleIKCONFirstQuarterLocalScale.o3" "getBone007LocalScale.i2";
connectAttr "getSquashStretchDistributionCondition.of" "getBone007SquashStretchScale.vx"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone007SquashStretchScale.vy"
		;
connectAttr "getSquashStretchDistributionCondition.of" "getBone007SquashStretchScale.vz"
		;
connectAttr "getSingleDistribSquashStretchFirstQuarterScaleAmount.o3" "getBone007SquashStretchScale.n"
		;
connectAttr "topSquashStretchJNTHalfScale.o3" "getBone007SquashStretchScale.m";
connectAttr "spine_IK_CON.wm" "spineIKCONToBone008JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "spineIKCONToBone008JNTConstraint.i[1]";
connectAttr "nodesStocker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipToParentAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "parentAttachBUFToHipFKCONConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getMiddleLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "inverseHipWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getNeckLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "inverseMiddleWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getMiddleIKCONLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "inverseNeckWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTangentTopBUFLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getTangentBottomBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getLeftClaviculaChildAttachBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getRightClaviculaChildAttachBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getLeftFemurChildAttachBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getRightFemurChildAttachBUFParentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spineFirstHalfOrigLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineSecondHalfOrigLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getTopSquashStretchJNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBottomSquashStretchJNTConstraintMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spineFirstHalfCurrentLength.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spineSecondHalfCurrentLength.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spineFirstHalfStretchFactor.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spineFirstHalfSquashFactor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineSecondHalfStretchFactor.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spineSecondHalfSquashFactor.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spineIKCONToBone008JNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone000JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone001JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone002JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone003JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone004JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone005JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone006JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone007JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineFirstHalfScaledLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineSecondHalfScaledLEngth.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "bone008JNTToBone008BUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bone000JNTToBone000BUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone001JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone002JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone003JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone004JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone005JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone006JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone007JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone000JNTWorldScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone001JNTTorsionFromMiddleIKCON.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone002JNTTorsionFromMiddleIKCON.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone003JNTTorsionFromMiddleIKCON.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTFirstQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTHalfScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTThirdQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topSquashStretchJNTFirstQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topSquashStretchJNTHalfScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topSquashStretchJNTThirdQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone002SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone003SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone001SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone004SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone005SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone006SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone007SquashStretchScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getSquashStretchDistributionCondition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "one.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "topSquashStretchJNTScaleAmount.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "bottomSquashStretchJNTFirstQuarterScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTHalfScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bottomSquashStretchJNTThirdQuarterScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topSquashStretchJNTFirstQuarterScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topSquashStretchJNTHalfScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "topSquashStretchJNTThirdQuarterScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "inversePinch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getSingleDistribSquashStretchFirstQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getSingleDistribSquashStretchHalfScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getSingleDistribSquashStretchThirdQuarterScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getSingleDistribSquashStretchFullScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "middleIKCONFirstQuarterLocalScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "middleIKCONHalfLocalScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "middleIKCONThirdQuarterLocalScaleAmount.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone001LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone002LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone003LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone004LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone005LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone006LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone007LocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getMiddleIKCONLocalScaleAmount.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "middleIKCONFirstQuarterLocalScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "middleIKCONHalfLocalScale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "middleIKCONThirdQuarterLocalScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBottomSquashStretchJNTScaledScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getTopSquashStretchJNTScaledScale.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "parentAttachBUFToOptionsBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "squashStretchScaleDecreaseValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spineIKCONToHeadChildAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of body_rigModule.ma
