//Maya ASCII 2023 scene
//Name: arm_rigModule.ma
//Last modified: Sat, Feb 17, 2024 04:10:50 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "floatCondition" -nodeType "floatConstant" -nodeType "floatLogic"
		 -nodeType "floatMath" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "A570C7CB-4F67-5B68-DB43-3D9D0DC5A8F2";
createNode transform -n "arm";
	rename -uid "3B3CD3D0-4C01-3421-AADA-F39F34314B03";
createNode transform -n "install" -p "arm";
	rename -uid "15DC99EA-41DC-5305-F165-ABB445F70D15";
	setAttr ".v" no;
	setAttr ".oclr" -type "float3" 0.45100001 0.45100001 0.45100001 ;
createNode transform -n "humerus" -p "install";
	rename -uid "912925C4-4094-BAF8-CE53-4F9F0789B892";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "humerusShape" -p "humerus";
	rename -uid "30C54990-43AB-7462-5157-DAA86E0EC089";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "radius" -p "humerus";
	rename -uid "58DBBDA8-4DB2-A221-0CD5-C294077B7FED";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 2.3205016 0.60570478 0.57376188 ;
createNode locator -n "radiusShape" -p "radius";
	rename -uid "A35692EF-47A4-32D3-6979-AC85723BA1C1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "wrist" -p "radius";
	rename -uid "0379AFE0-4C9C-46F6-A274-1898738D9B1F";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "wristShape" -p "wrist";
	rename -uid "04B63BFC-4AFB-8771-FD02-DD9C77B218D5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "controllers_GRP" -p "arm";
	rename -uid "94D1BDAD-41D1-4F35-47E8-D2B157BBBDBE";
createNode transform -n "parentAttach_BUF" -p "controllers_GRP";
	rename -uid "D6C549BC-4E4E-DED1-0537-2D8E293B042F";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "childAttach_BUF" -p "controllers_GRP";
	rename -uid "7C0615D0-46FE-568A-BB58-84BD46093B15";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "IK_GRP" -p "controllers_GRP";
	rename -uid "F92D532E-4B3B-4B82-8D06-F8A4F731BC7E";
createNode transform -n "root_IK_CON" -p "IK_GRP";
	rename -uid "65167CC9-4771-D1A1-FF9A-DF91D0E4F6B5";
createNode nurbsCurve -n "root_IK_CONShape" -p "root_IK_CON";
	rename -uid "B637D5A5-4989-9A9B-5D06-B3AD28FB62FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		4.7612645919995182e-16 -1.9813855407007559 -1.9813855407007563
		4.7612645919995182e-16 -1.9813855407007559 -0.66046184690025211
		4.7612645919995182e-16 -1.9813855407007559 0.66046184690025156
		4.7612645919995182e-16 -1.9813855407007559 1.9813855407007559
		-1.2881299898501847e-16 -0.66046184690025156 1.9813855407007563
		-1.5631024708433526e-16 0.66046184690025211 1.9813855407007563
		9.1164985809515935e-17 1.9813855407007559 1.9813855407007563
		9.1164985809515935e-17 1.9813855407007563 0.66046184690025211
		9.1164985809515935e-17 1.9813855407007563 -0.66046184690025156
		9.1164985809515935e-17 1.9813855407007563 -1.9813855407007559
		-1.5631024708433526e-16 0.66046184690025211 -1.9813855407007563
		3.6170489610882429e-17 -0.66046184690025156 -1.9813855407007563
		1.461594820081497e-16 -1.9813855407007555 -1.9813855407007563
		;
createNode transform -n "IK_BUF" -p "IK_GRP";
	rename -uid "013B17DC-48A7-18AE-9743-D69A704951F1";
	setAttr ".opm" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999978 0 0
		 0 0 0.99999999999999956 0 0 0 0 1;
createNode transform -n "upVector_IK_CON" -p "IK_BUF";
	rename -uid "CBA1DDF9-46AD-9412-49A8-3295A44AC3E5";
createNode nurbsCurve -n "upVector_IK_CONShape" -p "upVector_IK_CON";
	rename -uid "863C5A8E-4C3C-7909-5457-CD9C9C8EA71D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		0.92738825507967027 -0.92738825507966971 1.3877787807814457e-16
		0.30912941835988994 -0.92738825507966971 2.2204460492503131e-16
		-0.30912941835988972 -0.92738825507966971 2.3592239273284576e-16
		-0.92738825507966993 -0.92738825507966971 4.163336342344337e-16
		-0.92738825507967038 -0.30912941835988972 -2.7755575615628914e-17
		-0.92738825507967038 0.30912941835989005 -2.7755575615628914e-17
		-0.92738825507967038 0.92738825507966971 5.5511151231257827e-17
		-0.30912941835989 0.92738825507967015 6.9388939039072284e-17
		0.30912941835988977 0.92738825507967015 1.3877787807814457e-17
		0.92738825507966982 0.92738825507967015 -1.3877787807814457e-16
		0.92738825507967027 0.30912941835989005 -1.1102230246251565e-16
		0.92738825507967038 -0.30912941835988972 -5.5511151231257827e-17
		0.92738825507967038 -0.92738825507966949 2.7755575615628914e-17
		;
createNode transform -n "wrist_IK_CON" -p "IK_BUF";
	rename -uid "CAF62B5D-4E34-E86B-5EBE-8B90B73FB812";
createNode nurbsCurve -n "wrist_IK_CONShape" -p "wrist_IK_CON";
	rename -uid "0BD42A37-4318-DFFA-7F17-2BBB787067A6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		4.7612645919995182e-16 -1.9813855407007559 -1.9813855407007563
		4.7612645919995182e-16 -1.9813855407007559 -0.66046184690025211
		4.7612645919995182e-16 -1.9813855407007559 0.66046184690025156
		4.7612645919995182e-16 -1.9813855407007559 1.9813855407007559
		-1.2881299898501847e-16 -0.66046184690025156 1.9813855407007563
		-1.5631024708433526e-16 0.66046184690025211 1.9813855407007563
		9.1164985809515935e-17 1.9813855407007559 1.9813855407007563
		9.1164985809515935e-17 1.9813855407007563 0.66046184690025211
		9.1164985809515935e-17 1.9813855407007563 -0.66046184690025156
		9.1164985809515935e-17 1.9813855407007563 -1.9813855407007559
		-1.5631024708433526e-16 0.66046184690025211 -1.9813855407007563
		3.6170489610882429e-17 -0.66046184690025156 -1.9813855407007563
		1.461594820081497e-16 -1.9813855407007555 -1.9813855407007563
		;
createNode transform -n "FK_GRP" -p "controllers_GRP";
	rename -uid "72D541B2-42E8-4018-3AFC-4692FE5C29D4";
createNode transform -n "humerus_FK_CON" -p "FK_GRP";
	rename -uid "034493AF-41CE-1A93-8B28-DCA5F5191F41";
createNode nurbsCurve -n "humerus_FK_CONShape" -p "humerus_FK_CON";
	rename -uid "26A3B20F-4DCA-637D-EB40-25BE82B8ECEB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		-1.2214318181599648e-16 1.0340816827544695e-16 1.9947495375978987
		-8.6368272137792508e-17 -1.4105009248042042 1.4105009248042042
		-1.2235166060055459e-32 -1.9947495375978992 1.9981542545285805e-16
		8.6368272137792508e-17 -1.410500924804204 -1.4105009248042042
		1.2214318181599648e-16 -2.7202329014039262e-16 -1.9947495375978987
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		;
createNode transform -n "radius_FK_CON" -p "humerus_FK_CON";
	rename -uid "D08C03DF-4546-7F67-8C32-8B8C1601870B";
createNode nurbsCurve -n "radius_FK_CONShape" -p "radius_FK_CON";
	rename -uid "97F95FE7-449B-7964-7105-038951A59450";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		-1.2214318181599648e-16 1.0340816827544695e-16 1.9947495375978987
		-8.6368272137792508e-17 -1.4105009248042042 1.4105009248042042
		-1.2235166060055459e-32 -1.9947495375978992 1.9981542545285805e-16
		8.6368272137792508e-17 -1.410500924804204 -1.4105009248042042
		1.2214318181599648e-16 -2.7202329014039262e-16 -1.9947495375978987
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		;
createNode transform -n "wrist_FK_CON" -p "radius_FK_CON";
	rename -uid "3DD2C29D-444F-A860-DD8E-D29970F9D3C4";
createNode nurbsCurve -n "wrist_FK_CONShape" -p "wrist_FK_CON";
	rename -uid "17E7F2A0-449F-560D-9D20-FAA8E6D53386";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		-1.2214318181599648e-16 1.0340816827544695e-16 1.9947495375978987
		-8.6368272137792508e-17 -1.4105009248042042 1.4105009248042042
		-1.2235166060055459e-32 -1.9947495375978992 1.9981542545285805e-16
		8.6368272137792508e-17 -1.410500924804204 -1.4105009248042042
		1.2214318181599648e-16 -2.7202329014039262e-16 -1.9947495375978987
		8.6368272137792508e-17 1.4105009248042044 -1.4105009248042042
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-8.6368272137792508e-17 1.410500924804204 1.4105009248042042
		;
createNode transform -n "bend_GRP" -p "controllers_GRP";
	rename -uid "2FDD4396-47AA-2BA2-93E3-958DBF9138CB";
createNode transform -n "humerus_bend_CON" -p "bend_GRP";
	rename -uid "F08632AF-4B29-7FC7-653F-81B9FD587DE3";
createNode nurbsCurve -n "humerus_bend_CONShape" -p "humerus_bend_CON";
	rename -uid "15FFDFA3-438C-87DB-80EA-FF8F2A824788";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		3.5930646969390733e-16 -0.77884734365196318 -0.77884734365196362
		4.7612645919995182e-16 -1.9813855407007559 -0.66046184690025211
		4.7612645919995182e-16 -1.9813855407007559 0.66046184690025156
		3.5930646969390733e-16 -0.77884734365196318 0.77884734365196318
		-1.2881299898501847e-16 -0.66046184690025156 1.9813855407007563
		-1.5631024708433526e-16 0.66046184690025211 1.9813855407007563
		2.0798497531556063e-16 0.77884734365196318 0.77884734365196362
		9.1164985809515935e-17 1.9813855407007563 0.66046184690025211
		9.1164985809515935e-17 1.9813855407007563 -0.66046184690025156
		2.0798497531556063e-16 0.77884734365196362 -0.77884734365196318
		-1.5631024708433526e-16 0.66046184690025211 -1.9813855407007563
		3.6170489610882429e-17 -0.66046184690025156 -1.9813855407007563
		2.2960233165532442e-16 -0.77884734365196273 -0.77884734365196362
		;
createNode transform -n "radius_bend_CON" -p "bend_GRP";
	rename -uid "C7F97B89-4E94-ACB8-EA72-4589C3529E36";
createNode nurbsCurve -n "radius_bend_CONShape" -p "radius_bend_CON";
	rename -uid "DDA6FED8-40E9-466B-44ED-8D99BA010E46";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		3.5930646969390733e-16 -0.77884734365196318 -0.77884734365196362
		4.7612645919995182e-16 -1.9813855407007559 -0.66046184690025211
		4.7612645919995182e-16 -1.9813855407007559 0.66046184690025156
		3.5930646969390733e-16 -0.77884734365196318 0.77884734365196318
		-1.2881299898501847e-16 -0.66046184690025156 1.9813855407007563
		-1.5631024708433526e-16 0.66046184690025211 1.9813855407007563
		2.0798497531556063e-16 0.77884734365196318 0.77884734365196362
		9.1164985809515935e-17 1.9813855407007563 0.66046184690025211
		9.1164985809515935e-17 1.9813855407007563 -0.66046184690025156
		2.0798497531556063e-16 0.77884734365196362 -0.77884734365196318
		-1.5631024708433526e-16 0.66046184690025211 -1.9813855407007563
		3.6170489610882429e-17 -0.66046184690025156 -1.9813855407007563
		2.2960233165532442e-16 -0.77884734365196273 -0.77884734365196362
		;
createNode transform -n "options_BUF" -p "controllers_GRP";
	rename -uid "F6217F71-4D09-6214-9FA1-B28E7B656192";
createNode transform -n "options_CON" -p "options_BUF";
	rename -uid "173ABAA9-4310-8342-59CA-ADAFD09AD7EB";
	addAttr -ci true -sn "blendFKIK" -ln "blendFKIK" -nn "Blend FK / IK" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "stretchIK" -ln "stretchIK" -nn "Stretch IK" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "humerusTorsion" -ln "humerusTorsion" -nn "Humerus Torsion" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "radiusTorsion" -ln "radiusTorsion" -nn "Radius Torsion" -dv 
		1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "claviculaLocalSpace" -ln "claviculaLocalSpace" -nn "Clavicula Local Space" 
		-min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 3 -3 ;
	setAttr -k on ".blendFKIK" 0.5;
	setAttr -k on ".stretchIK" 1;
	setAttr -k on ".humerusTorsion";
	setAttr -k on ".radiusTorsion";
	setAttr -k on ".claviculaLocalSpace" 1;
createNode nurbsCurve -n "options_CONShape" -p "options_CON";
	rename -uid "5149C410-4C61-04B8-5730-06A4F3EF4D99";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5692262952371739e-17 0.25627410226846303 -0.25627410226846309
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-1.5692262952371739e-17 0.25627410226846287 0.25627410226846309
		-1.2214318181599648e-16 1.0340816827544695e-16 1.9947495375978987
		-1.5692262952371739e-17 -0.25627410226846309 0.25627410226846309
		-1.2235166060055459e-32 -1.9947495375978992 1.9981542545285805e-16
		1.5692262952371739e-17 -0.25627410226846309 -0.25627410226846309
		1.2214318181599648e-16 -2.7202329014039262e-16 -1.9947495375978987
		1.5692262952371739e-17 0.25627410226846303 -0.25627410226846309
		7.4791128324316613e-33 1.9947495375978979 -1.2214318181599643e-16
		-1.5692262952371739e-17 0.25627410226846287 0.25627410226846309
		;
createNode transform -n "algo_GRP" -p "arm";
	rename -uid "BB7F4DCC-43BC-7142-AA87-65A139841563";
	setAttr ".v" no;
createNode joint -n "humerus_IK_JNT" -p "algo_GRP";
	rename -uid "A6B6AC17-49EA-EDFF-C666-4CBDB2C08588";
	setAttr ".r" -type "double3" 0 1.7683628851157159e-05 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "radius_IK_JNT" -p "humerus_IK_JNT";
	rename -uid "4EFC5EBA-478D-A2BE-41AD-7BBD80A734F9";
	setAttr ".r" -type "double3" 0 -3.537961365576531e-05 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -90 0 ;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "wrist_IK_JNT" -p "radius_IK_JNT";
	rename -uid "6F7D358D-48C7-DB63-9111-92962DD7EF05";
	setAttr ".r" -type "double3" -0.16425123086471974 0.99776026917683869 0.23502916234785179 ;
	setAttr ".s" -type "double3" 1 0.99999330993282798 0.99988250497390552 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".is" -type "double3" 1.5815131664276123 1 1 ;
	setAttr ".radi" 0.65517241379310343;
createNode ikEffector -n "arm_effector" -p "radius_IK_JNT";
	rename -uid "42223A5A-4E74-6610-4E21-10BB004AB7DF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "arm_ikHandle" -p "algo_GRP";
	rename -uid "3F716FC4-4EE5-C216-FFCD-59901D01BCEC";
	setAttr ".v" no;
	setAttr ".hsh" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "arm_ikHandle_poleVectorConstraint" -p "arm_ikHandle";
	rename -uid "AB2C6978-4E91-626E-2052-1EB9E96C9E74";
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
	setAttr ".rst" -type "double3" 4 0 -4 ;
	setAttr -k on ".w0";
createNode joint -n "humerus_JNT" -p "algo_GRP";
	rename -uid "B7508DE9-4429-F2EE-F0B4-D2A435CF6DE3";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "radius_JNT" -p "humerus_JNT";
	rename -uid "2D94A414-40BD-6FB9-C212-9993F9E71084";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "wrist_JNT" -p "radius_JNT";
	rename -uid "753B9FBB-49B8-6999-6BD1-CFBC206E50E8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.65517241379310343;
createNode transform -n "bones_GRP" -p "arm";
	rename -uid "439A0B72-49B4-CA07-6E48-8FAA0749EF1A";
createNode joint -n "bone000_JNT" -p "bones_GRP";
	rename -uid "FFEABBD6-4E1F-CBE0-C3F8-ED9A22027913";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995237 0 -3.086375471533499e-07 0 0 1 0 0
		 3.086375471533499e-07 0 0.99999999999995237 0 0 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone001_JNT" -p "bones_GRP";
	rename -uid "6F3D67CB-4B53-7750-689D-4D801850C188";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995237 0 -3.086375471533499e-07 0 0 1 0 0
		 3.086375471533499e-07 0 0.99999999999995237 0 0.99999999999995237 0 -3.086375471533499e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone002_JNT" -p "bones_GRP";
	rename -uid "D1B777B6-4A3A-D875-64DD-A280AB6AB5EC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995237 0 -3.086375471533499e-07 0 0 1 0 0
		 3.086375471533499e-07 0 0.99999999999995237 0 1.9999999999999047 0 -6.172750943066998e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone003_JNT" -p "bones_GRP";
	rename -uid "49E7DC46-424E-5FD0-06B7-C69EF3C166E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995237 0 -3.086375471533499e-07 0 0 1 0 0
		 3.086375471533499e-07 0 0.99999999999995237 0 2.999999999999857 0 -9.2591264146004975e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone004_JNT" -p "bones_GRP";
	rename -uid "578769EA-4BE6-7C04-5418-46B6CF5227D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995237 0 3.0885319922329236e-07 0 0 1 0 0
		 -3.0885319922329236e-07 0 0.99999999999995237 0 3.9999999999998095 0 -1.2345501886133996e-06 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone005_JNT" -p "bones_GRP";
	rename -uid "F465ACE6-4EE5-7F83-CFD0-688FE6100A3D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995204 0 3.0885319922329226e-07 0 0 0.99999999999999956 0 0
		 -3.0885319922329215e-07 0 0.99999999999995171 0 4.999999999999762 0 -9.2569698939010724e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone006_JNT" -p "bones_GRP";
	rename -uid "AA5BDE3E-48F9-9407-F499-AFBA85EFC151";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995204 0 3.0885319922329226e-07 0 0 0.99999999999999956 0 0
		 -3.0885319922329215e-07 0 0.99999999999995171 0 5.999999999999714 0 -6.1684379016681487e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone007_JNT" -p "bones_GRP";
	rename -uid "510DA9C4-4A96-568B-E22E-ADAA121D7C3A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999995204 0 3.0885319922329226e-07 0 0 0.99999999999999978 0 0
		 -3.0885319922329221e-07 0 0.99999999999995182 0 6.999999999999666 0 -3.0799059094352251e-07 1;
	setAttr ".radi" 0.5;
createNode joint -n "bone008_JNT" -p "bones_GRP";
	rename -uid "0780309D-429C-F4F0-A121-1291D886B7BC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 0 -4.2351647362715017e-22 0 0 0.99999999999999978 0 0
		 4.2351647362715017e-22 0 0.99999999999999933 0 7.999999999999619 0 8.6260827976985392e-10 1;
	setAttr ".radi" 0.5;
createNode multMatrix -n "humerusToParentAttachBUFConstraint";
	rename -uid "1C149EA2-42E6-B97D-C8FF-B0AD397D5E07";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockHumerusWorldMatrix";
	rename -uid "4B490865-4F5A-257A-256C-59B2D2DCE2E0";
createNode floatConstant -n "nodesStocker";
	rename -uid "1DDB31C0-49D9-4909-B59C-F8BE5A843279";
	setAttr "._f" 0;
createNode multMatrix -n "bone008JNTToChildAttachBUFConstraint";
	rename -uid "589A6FF0-488A-3496-3631-BC8C0FF4FF2D";
	setAttr -s 2 ".i";
createNode floatLogic -n "getIKGRPVisibility";
	rename -uid "B7C259D3-443F-D59C-7282-6596258B59DE";
	setAttr "._ab" 0;
	setAttr "._op" 3;
createNode multMatrix -n "humerusToRootIKCONConstraint";
	rename -uid "D0689A3B-4C3D-3A30-9747-B59D811BDB9D";
	setAttr -s 2 ".i";
createNode multMatrix -n "radiusToUpVectorIKCONConstraint";
	rename -uid "840C0F11-493D-C518-0B97-FEA4AF048294";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockRadiusWorldMatrix";
	rename -uid "80B74FF2-4CC4-AC21-CC60-66919D373561";
createNode multMatrix -n "wristToWristIKCONConstraint";
	rename -uid "BA69F47E-4BE3-03EE-7DA8-DDB6ACDD130B";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockWristWorldMatrix";
	rename -uid "6855F4D1-4EE6-ADE1-537C-D8B78175357A";
createNode floatLogic -n "getFKGRPVisibility";
	rename -uid "30D78A73-4110-41D4-94A0-8D81FEAF4C14";
	setAttr "._op" 2;
createNode blendMatrix -n "blendClaviculaLocalSpaceHumerusFKCONParentMatrix";
	rename -uid "FC161D4C-498A-CBB0-AE0A-BAAABEBF1180";
	setAttr -s 2 ".tgt";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].tra" 0;
	setAttr ".tgt[0].she" 0;
	setAttr ".tgt[1].rot" 0;
createNode multMatrix -n "humerusToHumerusFKCONConstraint";
	rename -uid "D90BF758-4FAD-B776-689E-6A9529420519";
	setAttr -s 2 ".i";
createNode multMatrix -n "getHumerusBendCONParentMatrix";
	rename -uid "D4FF0241-4477-8A5A-548B-65BB8FF070FF";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBone002JNTLocalMatrix";
	rename -uid "DA0E694E-46BD-3D5B-DA21-12A9875B8277";
	setAttr ".env" 0.5;
createNode blendMatrix -n "blendBone004JNTTorsionLocalMatrix";
	rename -uid "D0A9F1B4-4941-6ADD-E87A-EC9C559B34C1";
createNode composeMatrix -n "composeBone004JNTLocalMatrixWithTorsion";
	rename -uid "D313E105-4A32-B0E6-A2F4-15A61DB71393";
createNode decomposeMatrix -n "decomposeBone004JNTBlendedLocalMatrix";
	rename -uid "1235AEF8-4298-91C0-F778-C196B4B653FA";
createNode blendMatrix -n "blendFKIKBone004JNTParentMatrix";
	rename -uid "4961D81A-4162-71A9-16E4-C0BC8879B52A";
createNode multMatrix -n "computeBone004JNTFKLocalMatrix";
	rename -uid "7DB35E43-4553-E1DA-7FD2-A78FF24BF242";
	setAttr -s 2 ".i";
createNode unitConversion -n "unitConversion2";
	rename -uid "0DF3CF7E-43C9-848A-9A1C-0A9AAA7AAE44";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "stabilizeBone004JNTBlendedLocalRotationX";
	rename -uid "E60B0A3F-46C2-96ED-8D3C-36A29807C14C";
	setAttr ".om" -type "float3" 0.75 0 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "58BED9BF-450E-2E49-75B1-A69AF5DC3E05";
	setAttr ".cf" 57.295779513082323;
createNode composeMatrix -n "composeBone004JNTLocalMatrixWithoutTorsion";
	rename -uid "A33E9FCF-4ABF-B666-012E-C7909BD93294";
createNode multMatrix -n "getRadiusBendCONParentMatrix";
	rename -uid "F97B7D75-4887-11A7-9E20-97B4DE726977";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBone006JNTLocalMatrix";
	rename -uid "EFFFDA20-4603-6A26-A8C6-23AF9923971C";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].she" 0;
	setAttr ".imat" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999944 0 0
		 0 0 0.99999999999999933 0 0 0 0 1;
createNode blendMatrix -n "blendBone008JNTTorsionLocalMatrix";
	rename -uid "6DCA1F62-4147-52AC-EED1-7CA685424BDD";
createNode composeMatrix -n "composeBone008JNTLocalMatrixWithoutTorsion";
	rename -uid "9A76FB71-4489-AAFF-D177-9DA11214DD75";
createNode decomposeMatrix -n "decomposeBone008JNTBlendedLocalMatrix";
	rename -uid "E2AABBE7-4433-83E8-52B2-9581EDB66383";
createNode blendMatrix -n "blendFKIKBone008JNTParentMatrix";
	rename -uid "AA31A83B-438B-A955-A3C7-90B2728A20F1";
	setAttr -s 2 ".tgt";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].rot" 0;
	setAttr ".tgt[0].she" 0;
	setAttr ".tgt[1].tra" 0;
createNode multMatrix -n "computeBone008JNTFKLocalMatrix";
	rename -uid "CC6800E0-4E13-ED7D-0467-EF8FB94377BB";
	setAttr -s 2 ".i";
createNode multMatrix -n "wristIKCONToWristIKJNTConstraint";
	rename -uid "714ABB4E-4721-33E8-E459-38B7944FDE1D";
	setAttr -s 2 ".i";
createNode composeMatrix -n "composeBone008JNTLocalMatrixWithTorsion";
	rename -uid "B452A554-4522-2190-A5AB-3990C5307E12";
createNode multMatrix -n "humerusToOptionsBUFConstraint";
	rename -uid "6D13E65B-45AD-EFA4-7C4B-8FABEBA52581";
	setAttr -s 2 ".i";
createNode multMatrix -n "rootIKCONToHumerusIKJNTConstraint";
	rename -uid "E8A81607-4199-51BD-6B61-64A44F9000D5";
	setAttr -s 2 ".i";
createNode setRange -n "blendIkStretch";
	rename -uid "5B132BF6-4340-A22D-96AC-A385C6EF94AD";
	setAttr ".n" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 1 0 0 ;
createNode floatCondition -n "ikStretchCondition";
	rename -uid "FF3196F0-496D-E470-578C-AA9E03956EAE";
createNode floatMath -n "stretchFactor";
	rename -uid "53590AB9-416F-DABA-8E68-BD8CBD4020FD";
	setAttr "._cnd" 3;
createNode floatMath -n "armScaledLength";
	rename -uid "B1C9A3E1-430E-6A22-B690-A78A043F7D4B";
	setAttr "._cnd" 2;
createNode floatMath -n "armOriginalLength";
	rename -uid "205A0BFB-4B59-9665-0240-E4B0FABDDE62";
createNode distanceBetween -n "humerusLength";
	rename -uid "A447D901-4429-F68B-A83F-EAA46290962F";
createNode distanceBetween -n "radiusLength";
	rename -uid "E7CB1A8F-4B9D-C6FE-DD1A-CDAE5C8EF7BB";
createNode decomposeMatrix -n "decomposeRootIKCONWorldMatrix";
	rename -uid "2F65B705-4C14-D2C5-0ECF-37A91775D0AD";
createNode distanceBetween -n "IkLength";
	rename -uid "F91C4BCF-41E2-F513-4131-F6A47DC7F79D";
createNode floatLogic -n "ikStretchLogic";
	rename -uid "EC7E6FEE-4116-47D5-9B22-F7AC7D9ECB7B";
	setAttr "._op" 2;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "D5A42529-4EC5-DF85-D887-10842764DFA7";
createNode multMatrix -n "wristIKCONToArmIkHandleConstraint";
	rename -uid "6A272C56-42CD-64AF-3CED-769C7D88BC36";
	setAttr -s 2 ".i";
createNode multMatrix -n "humerusFKCONToHumerusJNTConstraint";
	rename -uid "BC8EFC46-4F38-B069-3C41-36A598982836";
	setAttr -s 2 ".i";
createNode multMatrix -n "radiusFKCONToRadiusJNTConstraint";
	rename -uid "A6814670-4C86-4BEA-9FB6-1394CD1F153B";
	setAttr -s 2 ".i";
createNode multMatrix -n "wristFKCONToWristJNTConstraint";
	rename -uid "9F9641A6-4D2B-0793-1455-4BB1E64AF9D1";
	setAttr -s 2 ".i";
createNode blendMatrix -n "blendFKIKBone000JNTParentMatrix";
	rename -uid "1D75571D-41A6-ED14-DC7A-2183470D8A31";
createNode multMatrix -n "humerusJNTToBone000JNTConstraint";
	rename -uid "6E611A44-4EB0-9D00-7FF2-0EA118B22699";
	setAttr -s 2 ".i";
createNode multMatrix -n "humerusIKJNTToBone000JNTConstraint";
	rename -uid "4A917DA3-401D-95FA-DFEB-F9AA9486A7FA";
	setAttr -s 2 ".i";
createNode multMatrix -n "getBone001JNTParentMatrix";
	rename -uid "3CE072D6-44B6-BFF5-9BED-21B220AE434F";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBone001JNTLocalMatrix";
	rename -uid "E572E60B-4967-90B8-243D-6FB0F5FFB368";
	setAttr ".env" 0.25;
createNode multiplyDivide -n "humerusBendCONHalfLocalTranslation";
	rename -uid "8CABF3B9-4D11-57C4-44F6-9185A637558D";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode unitConversion -n "unitConversion7";
	rename -uid "8AB5CC23-407B-AFED-56A9-7B8D774C278E";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "getBone001JNTCumulatedRotations";
	rename -uid "AE342208-420B-075B-D82C-B7A3AB6E983D";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "humerusBendCONHalfLocalRotation";
	rename -uid "EF8E33FE-4365-57F3-E5CF-C0962711AD2F";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "6A81F679-4C1E-5FF3-D624-808501659EB9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "64BDD873-4C81-E680-D295-3085B765A84C";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "getBone001JNTAimRotation";
	rename -uid "400FDC38-4B7F-ED0B-8601-81BC04DFE2D5";
createNode aimMatrix -n "getBone001JNTAimRotationMatrix";
	rename -uid "6FB671C3-4740-1142-C174-6AAFDA38672F";
createNode multMatrix -n "getBone002JNTTransformedLocalMatrix";
	rename -uid "9BB2BEA6-46DB-030D-7218-7681CC091AE7";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "humerusBendCONHalfLocalScale";
	rename -uid "5096C9CF-42A1-0B32-CDBE-5B874385EAC1";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode multMatrix -n "getBone002JNTParentMatrix";
	rename -uid "AA41EA17-405C-9E7A-9DA1-B981E5C122DE";
	setAttr -s 3 ".i";
createNode multMatrix -n "getBone003JNTParentMatrix";
	rename -uid "76859D54-4095-662C-080F-57BEC322B2E4";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBonne003JNTLocalMatrix";
	rename -uid "2C3A9BB2-44EE-8901-53DD-D2B9AEAF606C";
	setAttr ".env" 0.75;
createNode unitConversion -n "unitConversion9";
	rename -uid "1DF85734-4DFF-7338-5248-0B86EF5CDA41";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "getBone003JNTCumulatedRotations";
	rename -uid "78B3DD57-4D88-01A7-1BF1-94ABC611CC45";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion8";
	rename -uid "976DD371-4D79-FB49-9E12-3797FFE3E32B";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "getBone003JNTAimRotation";
	rename -uid "ED2FE2D8-40DC-3B8C-E139-CE996F141113";
createNode aimMatrix -n "getBone003JNTAimRotationMatrix";
	rename -uid "93EB6A9C-499D-952F-AB38-4A9B8B310733";
createNode multMatrix -n "getBone004JNTTransformedLocalMatrix";
	rename -uid "C5C07080-43D0-A4FB-88F6-99824395E847";
	setAttr -s 2 ".i";
createNode multMatrix -n "computeBone004JNTParentMatrix";
	rename -uid "A2E50226-49A1-7657-7AA4-DFB07B2C1F68";
	setAttr -s 3 ".i";
createNode multMatrix -n "getBone005JNTParentMatrix";
	rename -uid "4E4C8D93-450A-DCBE-5BED-B7802A2766B0";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBone005JNTLocalMatrix";
	rename -uid "BEF3CCA5-4076-B896-3E69-42ADF13B5860";
	setAttr ".env" 0.25;
	setAttr ".imat" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999944 0 0
		 0 0 0.99999999999999933 0 0 0 0 1;
createNode multiplyDivide -n "radiusBendCONHalfLocalScale";
	rename -uid "0AD5E445-4000-6ED0-1C7A-0C8B61BAE1AD";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 0.5 0.5 ;
createNode multiplyDivide -n "radiusBendCONHalfLocalTranslation";
	rename -uid "EC00EBFC-4BFE-7350-75E8-A6BEE3CB66F8";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode unitConversion -n "unitConversion12";
	rename -uid "B7B540A7-4AD7-C1A8-1479-1BBDBCF6B5D8";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "getBone005JNTCumulatedRotations";
	rename -uid "FAAF4962-4CB9-943A-3502-C88F852F0244";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "radiusBendCONHalfLocalRotation";
	rename -uid "B6AC4BEB-44DC-C4BF-099E-2992618E118D";
	setAttr ".i2" -type "float3" 0.66000003 0.66000003 0.66000003 ;
createNode unitConversion -n "unitConversion10";
	rename -uid "49E21C45-4FFF-2227-B460-22907944A7FD";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "9660E0D7-4855-36C9-85BE-C896E758AA95";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "getBone005JNTAimRotation";
	rename -uid "41279DE1-4181-0EF1-96F7-7BADB195E18F";
createNode aimMatrix -n "getBone005JNTAimRotationMatrix";
	rename -uid "9C6DA2DA-45EE-01BB-8008-75B7AEC70B0E";
createNode multMatrix -n "getBone006JNTTransformedLocalMatrix";
	rename -uid "1384FFE6-4B04-0DCD-68A7-A89B92C3369E";
	setAttr -s 2 ".i";
createNode multMatrix -n "getBone006JNTParentMatrix";
	rename -uid "C230FF3E-4046-C45B-3E45-BA8F370C0A99";
	setAttr -s 3 ".i";
createNode multMatrix -n "getBone007JNTParentMatrix";
	rename -uid "289760E6-4000-C243-730B-C0BA61FBACAE";
	setAttr -s 3 ".i";
createNode blendMatrix -n "getBone007JNTLocalMatrix";
	rename -uid "9E1E4905-4736-C1D7-C032-E0BA06EFF404";
	setAttr ".env" 0.75;
createNode unitConversion -n "unitConversion14";
	rename -uid "0E029A1B-444D-C78C-54CA-17A5DF1EE00E";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "getBone007JNTCumulatedRotations";
	rename -uid "3C83CCB8-483A-4291-20F6-D3B19117F849";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion13";
	rename -uid "028CA0A5-4F05-46D4-7D77-6DAE5A8FD8AE";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "getBone007JNTAimRotation";
	rename -uid "A852C28B-4EAE-528E-121E-5AA4C34DB796";
createNode aimMatrix -n "getBone007JNTAimRotationMatrix";
	rename -uid "B9301218-415F-7D49-E2AF-E796F6480FA9";
	setAttr ".imat" -type "matrix" 0.99999999999999944 0 0 0 0 0.99999999999999933 0 0
		 0 0 1 0 0 0 0 1;
createNode multMatrix -n "getBone008JNTTransformedLocalMatrix";
	rename -uid "4521BA87-43CE-0658-41FA-488837C1589A";
	setAttr -s 2 ".i";
createNode multMatrix -n "computeBone008JNTParentMatrix";
	rename -uid "C7ADBD44-404A-2203-21C2-778CBC482739";
	setAttr -s 3 ".i";
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
	setAttr -s 54 ".u";
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
connectAttr "humerusToParentAttachBUFConstraint.o" "parentAttach_BUF.opm";
connectAttr "bone008JNTToChildAttachBUFConstraint.o" "childAttach_BUF.opm";
connectAttr "getIKGRPVisibility.ob" "IK_GRP.v";
connectAttr "humerusToRootIKCONConstraint.o" "root_IK_CON.opm";
connectAttr "radiusToUpVectorIKCONConstraint.o" "upVector_IK_CON.opm";
connectAttr "wristToWristIKCONConstraint.o" "wrist_IK_CON.opm";
connectAttr "getFKGRPVisibility.ob" "FK_GRP.v";
connectAttr "blendClaviculaLocalSpaceHumerusFKCONParentMatrix.omat" "humerus_FK_CON.opm"
		;
connectAttr "radius.m" "radius_FK_CON.opm";
connectAttr "wrist.m" "wrist_FK_CON.opm";
connectAttr "getHumerusBendCONParentMatrix.o" "humerus_bend_CON.opm";
connectAttr "getRadiusBendCONParentMatrix.o" "radius_bend_CON.opm";
connectAttr "humerusToOptionsBUFConstraint.o" "options_BUF.opm";
connectAttr "rootIKCONToHumerusIKJNTConstraint.o" "humerus_IK_JNT.opm";
connectAttr "blendIkStretch.ox" "humerus_IK_JNT.sx";
connectAttr "humerus_IK_JNT.s" "radius_IK_JNT.is";
connectAttr "humerusLength.d" "radius_IK_JNT.tx";
connectAttr "blendIkStretch.ox" "radius_IK_JNT.sx";
connectAttr "radiusLength.d" "wrist_IK_JNT.tx";
connectAttr "wrist_IK_JNT.tx" "arm_effector.tx";
connectAttr "wrist_IK_JNT.ty" "arm_effector.ty";
connectAttr "wrist_IK_JNT.tz" "arm_effector.tz";
connectAttr "wrist_IK_JNT.opm" "arm_effector.opm";
connectAttr "humerus_IK_JNT.msg" "arm_ikHandle.hsj";
connectAttr "arm_effector.hp" "arm_ikHandle.hee";
connectAttr "ikRPsolver.msg" "arm_ikHandle.hsv";
connectAttr "arm_ikHandle_poleVectorConstraint.ctx" "arm_ikHandle.pvx";
connectAttr "arm_ikHandle_poleVectorConstraint.cty" "arm_ikHandle.pvy";
connectAttr "arm_ikHandle_poleVectorConstraint.ctz" "arm_ikHandle.pvz";
connectAttr "wristIKCONToArmIkHandleConstraint.o" "arm_ikHandle.opm";
connectAttr "arm_ikHandle.pim" "arm_ikHandle_poleVectorConstraint.cpim";
connectAttr "humerus_IK_JNT.pm" "arm_ikHandle_poleVectorConstraint.ps";
connectAttr "humerus_IK_JNT.t" "arm_ikHandle_poleVectorConstraint.crp";
connectAttr "upVector_IK_CON.t" "arm_ikHandle_poleVectorConstraint.tg[0].tt";
connectAttr "upVector_IK_CON.rp" "arm_ikHandle_poleVectorConstraint.tg[0].trp";
connectAttr "upVector_IK_CON.rpt" "arm_ikHandle_poleVectorConstraint.tg[0].trt";
connectAttr "upVector_IK_CON.pm" "arm_ikHandle_poleVectorConstraint.tg[0].tpm";
connectAttr "arm_ikHandle_poleVectorConstraint.w0" "arm_ikHandle_poleVectorConstraint.tg[0].tw"
		;
connectAttr "humerusFKCONToHumerusJNTConstraint.o" "humerus_JNT.opm";
connectAttr "humerus_JNT.s" "radius_JNT.is";
connectAttr "radiusFKCONToRadiusJNTConstraint.o" "radius_JNT.opm";
connectAttr "radius_JNT.s" "wrist_JNT.is";
connectAttr "wristFKCONToWristJNTConstraint.o" "wrist_JNT.opm";
connectAttr "blendFKIKBone000JNTParentMatrix.omat" "bone000_JNT.opm";
connectAttr "getBone001JNTParentMatrix.o" "bone001_JNT.opm";
connectAttr "humerusBendCONHalfLocalTranslation.o" "bone001_JNT.t";
connectAttr "unitConversion7.o" "bone001_JNT.r";
connectAttr "humerusBendCONHalfLocalScale.o" "bone001_JNT.s";
connectAttr "getBone002JNTParentMatrix.o" "bone002_JNT.opm";
connectAttr "humerus_bend_CON.r" "bone002_JNT.r";
connectAttr "humerus_bend_CON.t" "bone002_JNT.t";
connectAttr "humerus_bend_CON.s" "bone002_JNT.s";
connectAttr "getBone003JNTParentMatrix.o" "bone003_JNT.opm";
connectAttr "humerusBendCONHalfLocalTranslation.o" "bone003_JNT.t";
connectAttr "humerusBendCONHalfLocalScale.o" "bone003_JNT.s";
connectAttr "unitConversion9.o" "bone003_JNT.r";
connectAttr "computeBone004JNTParentMatrix.o" "bone004_JNT.opm";
connectAttr "getBone005JNTParentMatrix.o" "bone005_JNT.opm";
connectAttr "radiusBendCONHalfLocalScale.o" "bone005_JNT.s";
connectAttr "radiusBendCONHalfLocalTranslation.o" "bone005_JNT.t";
connectAttr "unitConversion12.o" "bone005_JNT.r";
connectAttr "getBone006JNTParentMatrix.o" "bone006_JNT.opm";
connectAttr "radius_bend_CON.t" "bone006_JNT.t";
connectAttr "radius_bend_CON.r" "bone006_JNT.r";
connectAttr "radius_bend_CON.s" "bone006_JNT.s";
connectAttr "getBone007JNTParentMatrix.o" "bone007_JNT.opm";
connectAttr "radiusBendCONHalfLocalScale.o" "bone007_JNT.s";
connectAttr "unitConversion14.o" "bone007_JNT.r";
connectAttr "radiusBendCONHalfLocalTranslation.o" "bone007_JNT.t";
connectAttr "computeBone008JNTParentMatrix.o" "bone008_JNT.opm";
connectAttr "stockHumerusWorldMatrix.tmat" "humerusToParentAttachBUFConstraint.i[0]"
		;
connectAttr "controllers_GRP.wim" "humerusToParentAttachBUFConstraint.i[1]";
connectAttr "humerus.wm" "stockHumerusWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockHumerusWorldMatrix.nds";
connectAttr "bone008_JNT.wm" "bone008JNTToChildAttachBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "bone008JNTToChildAttachBUFConstraint.i[1]";
connectAttr "options_CON.blendFKIK" "getIKGRPVisibility._aa";
connectAttr "parentAttach_BUF.wm" "humerusToRootIKCONConstraint.i[0]";
connectAttr "IK_GRP.wim" "humerusToRootIKCONConstraint.i[1]";
connectAttr "stockRadiusWorldMatrix.tmat" "radiusToUpVectorIKCONConstraint.i[0]"
		;
connectAttr "IK_GRP.wim" "radiusToUpVectorIKCONConstraint.i[1]";
connectAttr "radius.wm" "stockRadiusWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockRadiusWorldMatrix.nds";
connectAttr "stockWristWorldMatrix.tmat" "wristToWristIKCONConstraint.i[0]";
connectAttr "IK_GRP.wim" "wristToWristIKCONConstraint.i[1]";
connectAttr "wrist.wm" "stockWristWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockWristWorldMatrix.nds";
connectAttr "options_CON.blendFKIK" "getFKGRPVisibility._aa";
connectAttr "humerusToHumerusFKCONConstraint.o" "blendClaviculaLocalSpaceHumerusFKCONParentMatrix.imat"
		;
connectAttr "humerusToParentAttachBUFConstraint.o" "blendClaviculaLocalSpaceHumerusFKCONParentMatrix.tgt[0].tmat"
		;
connectAttr "humerusToHumerusFKCONConstraint.o" "blendClaviculaLocalSpaceHumerusFKCONParentMatrix.tgt[1].tmat"
		;
connectAttr "options_CON.claviculaLocalSpace" "blendClaviculaLocalSpaceHumerusFKCONParentMatrix.env"
		;
connectAttr "parentAttach_BUF.wm" "humerusToHumerusFKCONConstraint.i[0]";
connectAttr "FK_GRP.wim" "humerusToHumerusFKCONConstraint.i[1]";
connectAttr "getBone002JNTLocalMatrix.omat" "getHumerusBendCONParentMatrix.i[0]"
		;
connectAttr "bone000_JNT.wm" "getHumerusBendCONParentMatrix.i[1]";
connectAttr "bend_GRP.wim" "getHumerusBendCONParentMatrix.i[2]";
connectAttr "blendBone004JNTTorsionLocalMatrix.omat" "getBone002JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "composeBone004JNTLocalMatrixWithTorsion.omat" "blendBone004JNTTorsionLocalMatrix.tgt[0].tmat"
		;
connectAttr "composeBone004JNTLocalMatrixWithoutTorsion.omat" "blendBone004JNTTorsionLocalMatrix.imat"
		;
connectAttr "options_CON.humerusTorsion" "blendBone004JNTTorsionLocalMatrix.env"
		;
connectAttr "decomposeBone004JNTBlendedLocalMatrix.ot" "composeBone004JNTLocalMatrixWithTorsion.it"
		;
connectAttr "unitConversion2.o" "composeBone004JNTLocalMatrixWithTorsion.irx";
connectAttr "decomposeBone004JNTBlendedLocalMatrix.os" "composeBone004JNTLocalMatrixWithTorsion.is"
		;
connectAttr "decomposeBone004JNTBlendedLocalMatrix.osh" "composeBone004JNTLocalMatrixWithTorsion.ish"
		;
connectAttr "blendFKIKBone004JNTParentMatrix.omat" "decomposeBone004JNTBlendedLocalMatrix.imat"
		;
connectAttr "computeBone004JNTFKLocalMatrix.o" "blendFKIKBone004JNTParentMatrix.imat"
		;
connectAttr "radius_IK_JNT.m" "blendFKIKBone004JNTParentMatrix.tgt[0].tmat";
connectAttr "options_CON.blendFKIK" "blendFKIKBone004JNTParentMatrix.env";
connectAttr "radius_JNT.wm" "computeBone004JNTFKLocalMatrix.i[0]";
connectAttr "humerus_JNT.wim" "computeBone004JNTFKLocalMatrix.i[1]";
connectAttr "stabilizeBone004JNTBlendedLocalRotationX.ox" "unitConversion2.i";
connectAttr "options_CON.blendFKIK" "stabilizeBone004JNTBlendedLocalRotationX.vx"
		;
connectAttr "unitConversion1.o" "stabilizeBone004JNTBlendedLocalRotationX.nx";
connectAttr "decomposeBone004JNTBlendedLocalMatrix.orx" "unitConversion1.i";
connectAttr "decomposeBone004JNTBlendedLocalMatrix.os" "composeBone004JNTLocalMatrixWithoutTorsion.is"
		;
connectAttr "decomposeBone004JNTBlendedLocalMatrix.osh" "composeBone004JNTLocalMatrixWithoutTorsion.ish"
		;
connectAttr "decomposeBone004JNTBlendedLocalMatrix.ot" "composeBone004JNTLocalMatrixWithoutTorsion.it"
		;
connectAttr "getBone006JNTLocalMatrix.omat" "getRadiusBendCONParentMatrix.i[0]";
connectAttr "bone004_JNT.wm" "getRadiusBendCONParentMatrix.i[1]";
connectAttr "bend_GRP.wim" "getRadiusBendCONParentMatrix.i[2]";
connectAttr "blendBone008JNTTorsionLocalMatrix.omat" "getBone006JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "composeBone008JNTLocalMatrixWithoutTorsion.omat" "blendBone008JNTTorsionLocalMatrix.imat"
		;
connectAttr "composeBone008JNTLocalMatrixWithTorsion.omat" "blendBone008JNTTorsionLocalMatrix.tgt[0].tmat"
		;
connectAttr "options_CON.radiusTorsion" "blendBone008JNTTorsionLocalMatrix.env";
connectAttr "decomposeBone008JNTBlendedLocalMatrix.ot" "composeBone008JNTLocalMatrixWithoutTorsion.it"
		;
connectAttr "decomposeBone008JNTBlendedLocalMatrix.osh" "composeBone008JNTLocalMatrixWithoutTorsion.ish"
		;
connectAttr "decomposeBone008JNTBlendedLocalMatrix.os" "composeBone008JNTLocalMatrixWithoutTorsion.is"
		;
connectAttr "blendFKIKBone008JNTParentMatrix.omat" "decomposeBone008JNTBlendedLocalMatrix.imat"
		;
connectAttr "computeBone008JNTFKLocalMatrix.o" "blendFKIKBone008JNTParentMatrix.imat"
		;
connectAttr "wrist_IK_JNT.m" "blendFKIKBone008JNTParentMatrix.tgt[0].tmat";
connectAttr "wristIKCONToWristIKJNTConstraint.o" "blendFKIKBone008JNTParentMatrix.tgt[1].tmat"
		;
connectAttr "options_CON.blendFKIK" "blendFKIKBone008JNTParentMatrix.env";
connectAttr "wrist_JNT.wm" "computeBone008JNTFKLocalMatrix.i[0]";
connectAttr "radius_JNT.wim" "computeBone008JNTFKLocalMatrix.i[1]";
connectAttr "wrist_IK_CON.wm" "wristIKCONToWristIKJNTConstraint.i[0]";
connectAttr "radius_IK_JNT.wim" "wristIKCONToWristIKJNTConstraint.i[1]";
connectAttr "decomposeBone008JNTBlendedLocalMatrix.os" "composeBone008JNTLocalMatrixWithTorsion.is"
		;
connectAttr "decomposeBone008JNTBlendedLocalMatrix.ot" "composeBone008JNTLocalMatrixWithTorsion.it"
		;
connectAttr "decomposeBone008JNTBlendedLocalMatrix.osh" "composeBone008JNTLocalMatrixWithTorsion.ish"
		;
connectAttr "decomposeBone008JNTBlendedLocalMatrix.orx" "composeBone008JNTLocalMatrixWithTorsion.irx"
		;
connectAttr "stockHumerusWorldMatrix.tmat" "humerusToOptionsBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "humerusToOptionsBUFConstraint.i[1]";
connectAttr "root_IK_CON.wm" "rootIKCONToHumerusIKJNTConstraint.i[0]";
connectAttr "algo_GRP.wim" "rootIKCONToHumerusIKJNTConstraint.i[1]";
connectAttr "options_CON.stretchIK" "blendIkStretch.vx";
connectAttr "ikStretchCondition.of" "blendIkStretch.mx";
connectAttr "stretchFactor.of" "ikStretchCondition._fb";
connectAttr "ikStretchLogic.ob" "ikStretchCondition._cnd";
connectAttr "armScaledLength.of" "stretchFactor._fb";
connectAttr "IkLength.d" "stretchFactor._fa";
connectAttr "armOriginalLength.of" "armScaledLength._fa";
connectAttr "decomposeRootIKCONWorldMatrix.osx" "armScaledLength._fb";
connectAttr "humerusLength.d" "armOriginalLength._fa";
connectAttr "radiusLength.d" "armOriginalLength._fb";
connectAttr "humerus.wm" "humerusLength.im1";
connectAttr "radius.wm" "humerusLength.im2";
connectAttr "radius.wm" "radiusLength.im1";
connectAttr "wrist.wm" "radiusLength.im2";
connectAttr "root_IK_CON.wm" "decomposeRootIKCONWorldMatrix.imat";
connectAttr "root_IK_CON.wm" "IkLength.im1";
connectAttr "wrist_IK_CON.wm" "IkLength.im2";
connectAttr "stretchFactor.of" "ikStretchLogic._aa";
connectAttr "wrist_IK_CON.wm" "wristIKCONToArmIkHandleConstraint.i[0]";
connectAttr "algo_GRP.wim" "wristIKCONToArmIkHandleConstraint.i[1]";
connectAttr "humerus_FK_CON.wm" "humerusFKCONToHumerusJNTConstraint.i[0]";
connectAttr "algo_GRP.wim" "humerusFKCONToHumerusJNTConstraint.i[1]";
connectAttr "radius_FK_CON.wm" "radiusFKCONToRadiusJNTConstraint.i[0]";
connectAttr "humerus_JNT.wim" "radiusFKCONToRadiusJNTConstraint.i[1]";
connectAttr "wrist_FK_CON.wm" "wristFKCONToWristJNTConstraint.i[0]";
connectAttr "radius_JNT.wim" "wristFKCONToWristJNTConstraint.i[1]";
connectAttr "humerusJNTToBone000JNTConstraint.o" "blendFKIKBone000JNTParentMatrix.imat"
		;
connectAttr "humerusIKJNTToBone000JNTConstraint.o" "blendFKIKBone000JNTParentMatrix.tgt[0].tmat"
		;
connectAttr "options_CON.blendFKIK" "blendFKIKBone000JNTParentMatrix.env";
connectAttr "humerus_JNT.wm" "humerusJNTToBone000JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "humerusJNTToBone000JNTConstraint.i[1]";
connectAttr "humerus_IK_JNT.wm" "humerusIKJNTToBone000JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "humerusIKJNTToBone000JNTConstraint.i[1]";
connectAttr "getBone001JNTLocalMatrix.omat" "getBone001JNTParentMatrix.i[0]";
connectAttr "bone000_JNT.wm" "getBone001JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone001JNTParentMatrix.i[2]";
connectAttr "blendBone004JNTTorsionLocalMatrix.omat" "getBone001JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "humerus_bend_CON.t" "humerusBendCONHalfLocalTranslation.i1";
connectAttr "getBone001JNTCumulatedRotations.o3" "unitConversion7.i";
connectAttr "humerusBendCONHalfLocalRotation.o" "getBone001JNTCumulatedRotations.i3[0]"
		;
connectAttr "unitConversion6.o" "getBone001JNTCumulatedRotations.i3[1]";
connectAttr "unitConversion3.o" "humerusBendCONHalfLocalRotation.i1";
connectAttr "humerus_bend_CON.r" "unitConversion3.i";
connectAttr "getBone001JNTAimRotation.or" "unitConversion6.i";
connectAttr "getBone001JNTAimRotationMatrix.tmat" "getBone001JNTAimRotation.imat"
		;
connectAttr "getBone002JNTTransformedLocalMatrix.o" "getBone001JNTAimRotationMatrix.pmat"
		;
connectAttr "humerus_bend_CON.wm" "getBone002JNTTransformedLocalMatrix.i[0]";
connectAttr "bone000_JNT.wim" "getBone002JNTTransformedLocalMatrix.i[1]";
connectAttr "humerus_bend_CON.s" "humerusBendCONHalfLocalScale.i1";
connectAttr "getBone002JNTLocalMatrix.omat" "getBone002JNTParentMatrix.i[0]";
connectAttr "bone000_JNT.wm" "getBone002JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone002JNTParentMatrix.i[2]";
connectAttr "getBonne003JNTLocalMatrix.omat" "getBone003JNTParentMatrix.i[0]";
connectAttr "bone000_JNT.wm" "getBone003JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone003JNTParentMatrix.i[2]";
connectAttr "blendBone004JNTTorsionLocalMatrix.omat" "getBonne003JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "getBone003JNTCumulatedRotations.o3" "unitConversion9.i";
connectAttr "humerusBendCONHalfLocalRotation.o" "getBone003JNTCumulatedRotations.i3[0]"
		;
connectAttr "unitConversion8.o" "getBone003JNTCumulatedRotations.i3[1]";
connectAttr "getBone003JNTAimRotation.or" "unitConversion8.i";
connectAttr "getBone003JNTAimRotationMatrix.tmat" "getBone003JNTAimRotation.imat"
		;
connectAttr "getBone004JNTTransformedLocalMatrix.o" "getBone003JNTAimRotationMatrix.pmat"
		;
connectAttr "bone004_JNT.wm" "getBone004JNTTransformedLocalMatrix.i[0]";
connectAttr "humerus_bend_CON.wim" "getBone004JNTTransformedLocalMatrix.i[1]";
connectAttr "blendFKIKBone004JNTParentMatrix.omat" "computeBone004JNTParentMatrix.i[0]"
		;
connectAttr "bone000_JNT.wm" "computeBone004JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "computeBone004JNTParentMatrix.i[2]";
connectAttr "getBone005JNTLocalMatrix.omat" "getBone005JNTParentMatrix.i[0]";
connectAttr "bone004_JNT.wm" "getBone005JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone005JNTParentMatrix.i[2]";
connectAttr "blendBone008JNTTorsionLocalMatrix.omat" "getBone005JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "radius_bend_CON.s" "radiusBendCONHalfLocalScale.i1";
connectAttr "radius_bend_CON.t" "radiusBendCONHalfLocalTranslation.i1";
connectAttr "getBone005JNTCumulatedRotations.o3" "unitConversion12.i";
connectAttr "radiusBendCONHalfLocalRotation.o" "getBone005JNTCumulatedRotations.i3[0]"
		;
connectAttr "unitConversion11.o" "getBone005JNTCumulatedRotations.i3[1]";
connectAttr "unitConversion10.o" "radiusBendCONHalfLocalRotation.i1";
connectAttr "radius_bend_CON.r" "unitConversion10.i";
connectAttr "getBone005JNTAimRotation.or" "unitConversion11.i";
connectAttr "getBone005JNTAimRotationMatrix.tmat" "getBone005JNTAimRotation.imat"
		;
connectAttr "getBone006JNTTransformedLocalMatrix.o" "getBone005JNTAimRotationMatrix.pmat"
		;
connectAttr "radius_bend_CON.wm" "getBone006JNTTransformedLocalMatrix.i[0]";
connectAttr "bone004_JNT.wim" "getBone006JNTTransformedLocalMatrix.i[1]";
connectAttr "getBone006JNTLocalMatrix.omat" "getBone006JNTParentMatrix.i[0]";
connectAttr "bone004_JNT.wm" "getBone006JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone006JNTParentMatrix.i[2]";
connectAttr "getBone007JNTLocalMatrix.omat" "getBone007JNTParentMatrix.i[0]";
connectAttr "bone004_JNT.wm" "getBone007JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "getBone007JNTParentMatrix.i[2]";
connectAttr "blendBone008JNTTorsionLocalMatrix.omat" "getBone007JNTLocalMatrix.tgt[0].tmat"
		;
connectAttr "getBone007JNTCumulatedRotations.o3" "unitConversion14.i";
connectAttr "radiusBendCONHalfLocalRotation.o" "getBone007JNTCumulatedRotations.i3[0]"
		;
connectAttr "unitConversion13.o" "getBone007JNTCumulatedRotations.i3[1]";
connectAttr "getBone007JNTAimRotation.or" "unitConversion13.i";
connectAttr "getBone007JNTAimRotationMatrix.tmat" "getBone007JNTAimRotation.imat"
		;
connectAttr "getBone008JNTTransformedLocalMatrix.o" "getBone007JNTAimRotationMatrix.pmat"
		;
connectAttr "bone008_JNT.wm" "getBone008JNTTransformedLocalMatrix.i[0]";
connectAttr "radius_bend_CON.wim" "getBone008JNTTransformedLocalMatrix.i[1]";
connectAttr "blendFKIKBone008JNTParentMatrix.omat" "computeBone008JNTParentMatrix.i[0]"
		;
connectAttr "bone004_JNT.wm" "computeBone008JNTParentMatrix.i[1]";
connectAttr "bones_GRP.wim" "computeBone008JNTParentMatrix.i[2]";
connectAttr "nodesStocker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusToRootIKCONConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "radiusToUpVectorIKCONConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wristToWristIKCONConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "humerusToHumerusFKCONConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "humerusLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "radiusLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wristIKCONToArmIkHandleConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "rootIKCONToHumerusIKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "armOriginalLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "IkLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchFactor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikStretchCondition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikStretchLogic.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendIkStretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armScaledLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusFKCONToHumerusJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "radiusFKCONToRadiusJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wristFKCONToWristJNTConstraint.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "humerusIKJNTToBone000JNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "humerusJNTToBone000JNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "computeBone004JNTFKLocalMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "computeBone004JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wristIKCONToWristIKJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "computeBone008JNTFKLocalMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "computeBone008JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "stabilizeBone004JNTBlendedLocalRotationX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone001JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone002JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone003JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone005JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone006JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getBone007JNTParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "humerusBendCONHalfLocalTranslation.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "humerusBendCONHalfLocalRotation.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "humerusBendCONHalfLocalScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone001JNTCumulatedRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone002JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone003JNTCumulatedRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone004JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "radiusBendCONHalfLocalTranslation.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "radiusBendCONHalfLocalRotation.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "radiusBendCONHalfLocalScale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getBone006JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone005JNTCumulatedRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone008JNTTransformedLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getBone007JNTCumulatedRotations.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "bone008JNTToChildAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getFKGRPVisibility.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getIKGRPVisibility.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getHumerusBendCONParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getRadiusBendCONParentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "humerusToParentAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "humerusToOptionsBUFConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of arm_rigModule.ma
