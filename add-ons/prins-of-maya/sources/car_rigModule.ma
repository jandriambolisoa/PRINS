//Maya ASCII 2023 scene
//Name: car_rigModule.ma
//Last modified: Fri, Mar 08, 2024 10:56:03 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "floatConstant" "lookdevKit" "1.0";
requires -nodeType "inverseMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "7F676316-4DCD-AB39-4BEE-3294552ED253";
createNode transform -n "car";
	rename -uid "7C716916-402C-44D3-8F43-64A4D48BCA35";
createNode transform -n "install" -p "car";
	rename -uid "3155EDD2-4372-6F62-7D15-6AB104731776";
	setAttr ".v" no;
	setAttr ".oclr" -type "float3" 0.45100001 0.45100001 0.45100001 ;
createNode transform -n "FL_tyre" -p "install";
	rename -uid "D2F81DAA-4204-E5E8-02FB-EBBC069DFB9E";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 7 3 12 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "FL_tyreShape" -p "FL_tyre";
	rename -uid "50B27870-4F70-C0CA-4CFA-C8A1EE4BFB50";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 4 4 4 ;
createNode transform -n "FR_tyre" -p "install";
	rename -uid "B9F87C4B-4D10-2723-5902-25B904B3680B";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -7 3 12 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "FR_tyreShape" -p "FR_tyre";
	rename -uid "FD6ED269-4D98-DDC7-F946-4F99A76EEC03";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 4 4 4 ;
createNode transform -n "RL_tyre" -p "install";
	rename -uid "88109859-480F-C4C2-C48A-DE93DF633CC0";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 7 3 -9 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "RL_tyreShape" -p "RL_tyre";
	rename -uid "1699C1D3-45BB-7411-5AC7-D4AF02531C72";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 4 4 4 ;
createNode transform -n "RR_tyre" -p "install";
	rename -uid "A9EDB3B6-4B52-01F0-2D86-04899F25A382";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -7 3 -9 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "RR_tyreShape" -p "RR_tyre";
	rename -uid "03418556-43C8-464C-3A61-949E8563D921";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 4 4 4 ;
createNode transform -n "ChassisGravityCenter" -p "install";
	rename -uid "7027EBAB-4F87-1319-F793-8EBF6542F27D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 4 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
createNode locator -n "ChassisGravityCenterShape" -p "ChassisGravityCenter";
	rename -uid "493C2C7D-402C-A6E9-5245-43BBE7889C6A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "controllers_GRP" -p "car";
	rename -uid "BE74B572-4425-9B67-FFE2-85AB2641E56F";
createNode transform -n "parentAttach_BUF" -p "controllers_GRP";
	rename -uid "58ACA1E4-41B2-BF91-EEDC-5AA46C51AAD9";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "childAttach_BUF" -p "controllers_GRP";
	rename -uid "91628E34-4E62-F8D3-D1BF-628C225F2E74";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "FL_tyreAnim_BUF" -p "controllers_GRP";
	rename -uid "5759E667-4016-1097-D34C-52839A3B7F54";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "FL_tyre_CON" -p "FL_tyreAnim_BUF";
	rename -uid "953B96C5-420E-3715-33E4-48B1EE905B7F";
createNode nurbsCurve -n "FL_tyre_CONShape" -p "FL_tyre_CON";
	rename -uid "6675E0BB-4845-18F3-DDFE-5E81ED4DBDDB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		1.0000000000000018 1.4351292688209536 -1.4351292688209536
		1.0000000000000018 2.0295792757251756 -1.0521374805043574e-16
		1.0000000000000018 1.4351292688209536 1.4351292688209536
		1.0000000000000018 2.033043441422162e-16 2.0295792757251756
		1.0000000000000018 -1.4351292688209536 1.4351292688209536
		1.0000000000000018 -2.0295792757251756 2.7677300923120107e-16
		1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		1.0000000000000018 1.4351292688209536 -1.4351292688209536
		;
createNode transform -n "FL_tyreOffset_BUF" -p "FL_tyre_CON";
	rename -uid "E4D00740-4258-5296-04BA-0091D8D27A32";
createNode transform -n "FL_tyreSecondary_CON" -p "FL_tyreOffset_BUF";
	rename -uid "951E6ADD-4179-CCD8-8C6F-D0837ABBCB1D";
createNode nurbsCurve -n "FL_tyreSecondary_CONShape" -p "FL_tyreSecondary_CON";
	rename -uid "C70ED0BF-4B80-AB3D-DD91-6E9933C5804C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		1.0000000000000018 1.0950578600623107 -1.0950578600623107
		1.0000000000000018 1.5486456772833781 -8.0282065380703674e-17
		1.0000000000000018 1.0950578600623107 1.0950578600623107
		1.0000000000000018 1.5512889666075237e-16 1.5486456772833781
		1.0000000000000018 -1.0950578600623107 1.0950578600623107
		1.0000000000000018 -1.5486456772833781 2.111882642186831e-16
		1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		1.0000000000000018 1.0950578600623107 -1.0950578600623107
		;
createNode transform -n "FR_tyreAnim_BUF" -p "controllers_GRP";
	rename -uid "58C759AA-457C-BFE7-EB31-CAA49FCD2F1B";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "FR_tyre_CON" -p "FR_tyreAnim_BUF";
	rename -uid "D315CF75-4A91-F971-49E8-D5A95CF2B998";
createNode nurbsCurve -n "FR_tyre_CONShape" -p "FR_tyre_CON";
	rename -uid "006ADB2B-4E5E-E671-8A60-FE86FAD219B8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		-1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		-1.0000000000000018 1.4351292688209536 -1.4351292688209536
		-1.0000000000000018 2.0295792757251756 -1.0521374805043574e-16
		-1.0000000000000018 1.4351292688209536 1.4351292688209536
		-1.0000000000000018 2.033043441422162e-16 2.0295792757251756
		-1.0000000000000018 -1.4351292688209536 1.4351292688209536
		-1.0000000000000018 -2.0295792757251756 2.7677300923120107e-16
		-1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		-1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		-1.0000000000000018 1.4351292688209536 -1.4351292688209536
		;
createNode transform -n "FR_tyreOffset_BUF" -p "FR_tyre_CON";
	rename -uid "678D9F07-48F5-8B1D-C441-7DB6DD14F409";
createNode transform -n "FR_tyreSecondary_CON" -p "FR_tyreOffset_BUF";
	rename -uid "9B51FD54-4C44-86AF-2A78-8AA1C3599699";
createNode nurbsCurve -n "FR_tyreSecondary_CONShape" -p "FR_tyreSecondary_CON";
	rename -uid "21FDA378-4D15-C0EA-CB5B-C3B245972AEC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		-1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		-1.0000000000000018 1.0950578600623107 -1.0950578600623107
		-1.0000000000000018 1.5486456772833781 -8.0282065380703674e-17
		-1.0000000000000018 1.0950578600623107 1.0950578600623107
		-1.0000000000000018 1.5512889666075237e-16 1.5486456772833781
		-1.0000000000000018 -1.0950578600623107 1.0950578600623107
		-1.0000000000000018 -1.5486456772833781 2.111882642186831e-16
		-1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		-1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		-1.0000000000000018 1.0950578600623107 -1.0950578600623107
		;
createNode transform -n "RL_tyreAnim_BUF" -p "controllers_GRP";
	rename -uid "AE6AA526-4517-7EC7-912B-8BB77819C4AB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode transform -n "RL_tyre_CON" -p "RL_tyreAnim_BUF";
	rename -uid "C4CF0090-4DF8-1BB9-035B-19874102E0FA";
createNode nurbsCurve -n "RL_tyre_CONShape" -p "RL_tyre_CON";
	rename -uid "0AA55379-49F0-32CB-787F-7DA66781B157";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		1.0000000000000018 1.4351292688209536 -1.4351292688209536
		1.0000000000000018 2.0295792757251756 -1.0521374805043574e-16
		1.0000000000000018 1.4351292688209536 1.4351292688209536
		1.0000000000000018 2.033043441422162e-16 2.0295792757251756
		1.0000000000000018 -1.4351292688209536 1.4351292688209536
		1.0000000000000018 -2.0295792757251756 2.7677300923120107e-16
		1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		1.0000000000000018 1.4351292688209536 -1.4351292688209536
		;
createNode transform -n "RL_tyreOffset_BUF" -p "RL_tyre_CON";
	rename -uid "AB3CBE74-4E04-0532-7026-8298E1A09EA9";
createNode transform -n "RL_tyreSecondary_CON" -p "RL_tyreOffset_BUF";
	rename -uid "6C45C5B7-4549-6625-7C35-D8827BA6314D";
createNode nurbsCurve -n "RL_tyreSecondary_CONShape" -p "RL_tyreSecondary_CON";
	rename -uid "BDAD8D85-43EC-2213-B79A-1C8A22346324";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		1.0000000000000018 1.0950578600623107 -1.0950578600623107
		1.0000000000000018 1.5486456772833781 -8.0282065380703674e-17
		1.0000000000000018 1.0950578600623107 1.0950578600623107
		1.0000000000000018 1.5512889666075237e-16 1.5486456772833781
		1.0000000000000018 -1.0950578600623107 1.0950578600623107
		1.0000000000000018 -1.5486456772833781 2.111882642186831e-16
		1.0000000000000018 -1.0950578600623107 -1.0950578600623109
		1.0000000000000018 -9.4827198584923661e-17 -1.5486456772833768
		1.0000000000000018 1.0950578600623107 -1.0950578600623107
		;
createNode transform -n "RR_tyreAnim_BUF" -p "controllers_GRP";
	rename -uid "2E1112D7-4570-20A0-8978-ECA53605CBAE";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "RR_tyre_CON" -p "RR_tyreAnim_BUF";
	rename -uid "FCC2CB6E-409B-5C94-4DC4-8E98CF69C94F";
createNode nurbsCurve -n "RR_tyre_CONShape" -p "RR_tyre_CON";
	rename -uid "AA6394B3-4EA1-9ABD-09B7-AFAE0A591120";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		-1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		-1.0000000000000018 1.4351292688209536 -1.4351292688209536
		-1.0000000000000018 2.0295792757251756 -1.0521374805043574e-16
		-1.0000000000000018 1.4351292688209536 1.4351292688209536
		-1.0000000000000018 2.033043441422162e-16 2.0295792757251756
		-1.0000000000000018 -1.4351292688209536 1.4351292688209536
		-1.0000000000000018 -2.0295792757251756 2.7677300923120107e-16
		-1.0000000000000018 -1.4351292688209536 -1.4351292688209538
		-1.0000000000000018 -1.2427588818163198e-16 -2.0295792757251743
		-1.0000000000000018 1.4351292688209536 -1.4351292688209536
		;
createNode transform -n "RR_tyreOffset_BUF" -p "RR_tyre_CON";
	rename -uid "5B8A06C0-4F14-4CF1-35F4-DCB2B70FBAD8";
createNode transform -n "RR_tyreSecondary_CON" -p "RR_tyreOffset_BUF";
	rename -uid "E0505A96-416F-21F3-A184-2D9809A0ECDE";
createNode nurbsCurve -n "RR_tyreSecondary_CONShape" -p "RR_tyreSecondary_CON";
	rename -uid "8C0C7BCF-49C9-20B0-0FEB-4B9ADAE9F63F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0000000000000009 -1.0950578600623107 -1.0950578600623109
		-1.0000000000000009 -9.4827198584923661e-17 -1.5486456772833768
		-1.0000000000000009 1.0950578600623107 -1.0950578600623107
		-1.0000000000000009 1.5486456772833781 -8.0282065380703674e-17
		-1.0000000000000009 1.0950578600623107 1.0950578600623107
		-1.0000000000000009 1.5512889666075237e-16 1.5486456772833781
		-1.0000000000000009 -1.0950578600623107 1.0950578600623107
		-1.0000000000000009 -1.5486456772833781 2.111882642186831e-16
		-1.0000000000000009 -1.0950578600623107 -1.0950578600623109
		-1.0000000000000009 -9.4827198584923661e-17 -1.5486456772833768
		-1.0000000000000009 1.0950578600623107 -1.0950578600623107
		;
createNode transform -n "chassisDynamic_BUF" -p "controllers_GRP";
	rename -uid "A6D89217-4102-58D2-3925-54A32BFDEB57";
createNode transform -n "chassis_CON" -p "chassisDynamic_BUF";
	rename -uid "E60F6AA3-4035-D5C6-2164-5C866BC3C30C";
	addAttr -ci true -sn "dynamicChassis" -ln "dynamicChassis" -nn "Dynamic Chassis" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "dynamicChassisSensivity" -ln "dynamicChassisSensivity" -nn "Dynamic Chassis Sensivity" 
		-dv 10 -at "double";
	addAttr -ci true -sn "dynamicChassisStiffness" -ln "dynamicChassisStiffness" -nn "Dynamic Chassis Stiffness" 
		-at "double";
	addAttr -ci true -sn "dynamicChassisDelay" -ln "dynamicChassisDelay" -nn "Dynamic Chassis Delay" 
		-dv 0.5 -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k on ".dynamicChassis" 1;
	setAttr -k on ".dynamicChassisSensivity";
	setAttr -k on ".dynamicChassisStiffness" 2;
	setAttr -k on ".dynamicChassisDelay";
createNode nurbsCurve -n "chassis_CONShape" -p "chassis_CON";
	rename -uid "4CF91D1A-4CB4-D354-DC62-1882236C89C6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		9.0905392147683397 0.287421819924712 -11.931531895220802
		9.8552259716703841 -2.0648927133398765 -4.3117333393733945
		9.8552259716703841 -2.0648927133398765 4.3117333393733945
		9.0905392147683397 0.287421819924712 11.931531895220798
		3.2850753238901302 3.696589323215945 12.935200018120172
		-3.2850753238901254 3.696589323215945 12.935200018120172
		-9.090539214768329 0.287421819924712 11.931531895220802
		-9.8552259716703734 -2.0648927133398765 4.3117333393733945
		-9.8552259716703734 -2.0648927133398765 -4.3117333393733945
		-9.090539214768329 0.287421819924712 -11.931531895220798
		-3.2850753238901294 3.696589323215945 -12.935200018120172
		3.2850753238901294 3.696589323215945 -12.935200018120172
		9.0905392147683326 0.287421819924712 -11.931531895220802
		;
createNode transform -n "chassisParent_BUF" -p "controllers_GRP";
	rename -uid "B5B6D7B7-4939-9727-F09D-3E9B1A903B8D";
createNode transform -n "dynamicAimTarget_BUF" -p "chassisParent_BUF";
	rename -uid "2AE20973-4936-BC83-F0A1-4196187DAF9C";
createNode transform -n "algo_GRP" -p "car";
	rename -uid "F85528B9-43D8-9AF2-3B31-23B4C3B25442";
	setAttr ".v" no;
createNode transform -n "chassisAimTargetParticle" -p "algo_GRP";
	rename -uid "C5F7BEE9-4135-4F2B-EE67-1B900E236BA1";
	setAttr ".t" -type "double3" 0 14 0 ;
createNode particle -n "chassisAimTargetParticleShape" -p "chassisAimTargetParticle";
	rename -uid "146ED351-4695-E591-DE62-179F1C9DD284";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "goalPP" -ln "goalPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "goalPP0" -ln "goalPP0" -dt "doubleArray";
	addAttr -s false -ci true -h true -sn "goalPPCache" -ln "goalPPCache" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 1 0 0 0 ;
	setAttr ".vel0" -type "vectorArray" 1 0 0 0 ;
	setAttr ".acc0" -type "vectorArray" 1 0 0 0 ;
	setAttr ".usc" yes;
	setAttr ".scp" -type "string" "car_module_v005_startup";
	setAttr ".mas0" -type "doubleArray" 1 1 ;
	setAttr ".id0" -type "doubleArray" 1 0 ;
	setAttr ".nid" 1;
	setAttr ".nid0" 1;
	setAttr ".bt0" -type "doubleArray" 1 0.041666666666666664 ;
	setAttr ".ag0" -type "doubleArray" 1 0 ;
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr ".cts" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 1 3.4028234663852886e+38 ;
	setAttr -k on ".lifespan" 1;
	setAttr ".goalPP0" -type "doubleArray" 1 1 ;
createNode transform -n "bones_GRP" -p "car";
	rename -uid "C27C9F00-42C1-E537-29E5-3C9864ADB697";
createNode joint -n "FR_tyre_JNT" -p "bones_GRP";
	rename -uid "A9C9929D-4BDE-4B4A-A2BC-78A44B38B39E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "FL_tyre_JNT" -p "bones_GRP";
	rename -uid "3AC4D0E6-4BC3-A584-F9EE-FFAF933858E5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "RR_tyre_JNT" -p "bones_GRP";
	rename -uid "51CD2393-4210-450D-125B-D5AC211DF82C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "RL_tyre_JNT" -p "bones_GRP";
	rename -uid "59A20D06-41D2-18DD-D021-EA92AD73DA05";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "chassis_JNT" -p "bones_GRP";
	rename -uid "49036FBA-41E0-7E3B-4782-63A1BD5C0438";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode multMatrix -n "FLTyreParentedWorldMatrix";
	rename -uid "38D55143-40E3-D3F2-7F45-C3BE9910E0E0";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FLTyreWorldMatrix";
	rename -uid "04B86881-4FC7-8B14-51FC-A8ACF80875DA";
createNode floatConstant -n "nodesStocker";
	rename -uid "10A108D2-412F-7D81-8A8D-AAA24252B807";
	setAttr "._f" 0;
createNode multMatrix -n "FRTyreParentedWorldMatrix";
	rename -uid "B53C989B-4E13-1A1F-C418-84BB34A4005C";
	setAttr -s 2 ".i";
createNode pickMatrix -n "FRTyreWorldMatrix";
	rename -uid "BCC18977-403F-9A27-9DB7-678340439219";
createNode multMatrix -n "RLTyreParentedWorldMatrix";
	rename -uid "55024631-4C9A-7A54-1C3F-708E761B3782";
	setAttr -s 2 ".i";
createNode pickMatrix -n "RLTyreWorldMatrix";
	rename -uid "EFF2297B-4193-8E6E-2E1E-7996000158AC";
createNode multMatrix -n "RRTyreParentedWorldMatrix";
	rename -uid "9E0C25B5-48D1-D6B1-3C01-C1A9CE301AE2";
	setAttr -s 2 ".i";
createNode pickMatrix -n "RRTyreWorldMatrix";
	rename -uid "F39FAC5A-41F8-399D-139F-F2ACD63DDA3D";
createNode aimMatrix -n "chassisDynamicAimConstraint";
	rename -uid "65D593F7-4419-C9A8-30D7-DFB98A6FE884";
	setAttr ".pmi" -type "double3" 0 1 0 ;
createNode multMatrix -n "chassisAimTargetParticleParentedWorldMatrix";
	rename -uid "98DFE112-43BC-D76D-D5DB-B2BE220901CA";
	setAttr -s 2 ".i";
createNode composeMatrix -n "chassisAimTargetParticleWorldMatrix";
	rename -uid "36A76F33-483E-79EA-500C-CDABF08CD9B0";
createNode multMatrix -n "chassisParentMatrix";
	rename -uid "8D223746-47FF-759A-E22A-80B36D9B8864";
	setAttr -s 3 ".i";
createNode pickMatrix -n "ChassisGravityCenterWorldMatrix";
	rename -uid "55CCDF82-4561-D3D9-A28E-77825BC8CB8B";
createNode inverseMatrix -n "chassisPositionRestInverseWorldMatrix";
	rename -uid "9B7A2536-4E6E-ACE0-EFAF-C996704B9608";
createNode blendMatrix -n "chassisPositionRestWorldMatrix";
	rename -uid "19CA712B-4F15-B2B7-52C8-BDB44103BD67";
	setAttr ".env" 0.5;
createNode blendMatrix -n "frontAxleRestWorldMatrix";
	rename -uid "1D6206DE-4601-955A-A9BB-65AFA415EAD3";
	setAttr ".env" 0.5;
createNode blendMatrix -n "rearAxleRestWorldMatrix";
	rename -uid "C0D5B5A6-4C9D-EA0F-C85A-E28D27A7C7D7";
	setAttr ".env" 0.5;
createNode aimMatrix -n "chassisWorldMatrix";
	rename -uid "5CB025A6-465D-5966-B1AC-A7B9CE2C442A";
	setAttr ".pmi" -type "double3" 0 0 1 ;
	setAttr ".smi" -type "double3" 1 0 0 ;
	setAttr ".sm" 1;
createNode blendMatrix -n "chassisPositionWorldMatrix";
	rename -uid "02BAC4BE-4BD1-7DBA-829F-69921D8E02BC";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode blendMatrix -n "frontAxleWorldMatrix";
	rename -uid "B3A24C9D-434A-E5BB-6F5C-70BB11D4936B";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode blendMatrix -n "rearAxleWorldMatrix";
	rename -uid "4D718998-489A-B51A-0BE0-0CA7BA00A120";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode blendMatrix -n "leftSideWorldMatrix";
	rename -uid "602F8E93-4DBA-129A-9303-7EA1F3C512A2";
	setAttr ".env" 0.5;
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].she" 0;
createNode multMatrix -n "FRTyreSecondaryCONToFRTyreJNTConstraint";
	rename -uid "D679B051-46B6-293A-2DD3-B9A9C1FF7DAE";
	setAttr -s 2 ".i";
createNode multMatrix -n "FLTyreSecondaryCONToFLTyreJNTConstraint";
	rename -uid "A094928E-470A-1FD5-00A2-8D8CB6CB8112";
	setAttr -s 2 ".i";
createNode multMatrix -n "RRTyreSecondaryCONToRRTyreJNTConstraint";
	rename -uid "69C7C903-4A2A-D979-056B-029FCFB297D5";
	setAttr -s 2 ".i";
createNode multMatrix -n "RLTyreSecondaryCONToRLTypeJNTConstraint";
	rename -uid "8BC5AE63-4629-BC03-CFED-75854CC1BCE5";
	setAttr -s 2 ".i";
createNode multMatrix -n "chassisCONToChassisJNTConstraint";
	rename -uid "D7AB928C-4BE2-649F-151F-A698B3391BD9";
	setAttr -s 2 ".i";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 15 ".u";
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
	setAttr -s 4 ".sol";
connectAttr "chassis_CON.wm" "childAttach_BUF.opm";
connectAttr "FLTyreParentedWorldMatrix.o" "FL_tyreAnim_BUF.opm";
connectAttr "FRTyreParentedWorldMatrix.o" "FR_tyreAnim_BUF.opm";
connectAttr "RLTyreParentedWorldMatrix.o" "RL_tyreAnim_BUF.opm";
connectAttr "RRTyreParentedWorldMatrix.o" "RR_tyreAnim_BUF.opm";
connectAttr "chassisDynamicAimConstraint.tmat" "chassisDynamic_BUF.opm";
connectAttr "chassisParentMatrix.o" "chassisParent_BUF.opm";
connectAttr "chassis_CON.dynamicChassisSensivity" "dynamicAimTarget_BUF.ty";
connectAttr ":time1.o" "chassisAimTargetParticleShape.cti";
connectAttr "dynamicAimTarget_BUF.wm" "chassisAimTargetParticleShape.ggeo[0]";
connectAttr "chassis_CON.dynamicChassisStiffness" "chassisAimTargetParticleShape.gsm"
		;
connectAttr "chassis_CON.dynamicChassisDelay" "chassisAimTargetParticleShape.gw[0]"
		;
connectAttr "FRTyreSecondaryCONToFRTyreJNTConstraint.o" "FR_tyre_JNT.opm";
connectAttr "FLTyreSecondaryCONToFLTyreJNTConstraint.o" "FL_tyre_JNT.opm";
connectAttr "RRTyreSecondaryCONToRRTyreJNTConstraint.o" "RR_tyre_JNT.opm";
connectAttr "RLTyreSecondaryCONToRLTypeJNTConstraint.o" "RL_tyre_JNT.opm";
connectAttr "chassisCONToChassisJNTConstraint.o" "chassis_JNT.opm";
connectAttr "FLTyreWorldMatrix.tmat" "FLTyreParentedWorldMatrix.i[0]";
connectAttr "parentAttach_BUF.wm" "FLTyreParentedWorldMatrix.i[1]";
connectAttr "FL_tyre.wm" "FLTyreWorldMatrix.imat";
connectAttr "nodesStocker.of" "FLTyreWorldMatrix.nds";
connectAttr "FRTyreWorldMatrix.tmat" "FRTyreParentedWorldMatrix.i[0]";
connectAttr "parentAttach_BUF.wm" "FRTyreParentedWorldMatrix.i[1]";
connectAttr "FR_tyre.wm" "FRTyreWorldMatrix.imat";
connectAttr "nodesStocker.of" "FRTyreWorldMatrix.nds";
connectAttr "RLTyreWorldMatrix.tmat" "RLTyreParentedWorldMatrix.i[0]";
connectAttr "parentAttach_BUF.wm" "RLTyreParentedWorldMatrix.i[1]";
connectAttr "RL_tyre.wm" "RLTyreWorldMatrix.imat";
connectAttr "nodesStocker.of" "RLTyreWorldMatrix.nds";
connectAttr "RRTyreWorldMatrix.tmat" "RRTyreParentedWorldMatrix.i[0]";
connectAttr "parentAttach_BUF.wm" "RRTyreParentedWorldMatrix.i[1]";
connectAttr "RR_tyre.wm" "RRTyreWorldMatrix.imat";
connectAttr "nodesStocker.of" "RRTyreWorldMatrix.nds";
connectAttr "chassisParent_BUF.wm" "chassisDynamicAimConstraint.imat";
connectAttr "chassisAimTargetParticleParentedWorldMatrix.o" "chassisDynamicAimConstraint.pmat"
		;
connectAttr "chassis_CON.dynamicChassis" "chassisDynamicAimConstraint.env";
connectAttr "chassisAimTargetParticleWorldMatrix.omat" "chassisAimTargetParticleParentedWorldMatrix.i[0]"
		;
connectAttr "chassisAimTargetParticle.wm" "chassisAimTargetParticleParentedWorldMatrix.i[1]"
		;
connectAttr "chassisAimTargetParticleShape.ctd" "chassisAimTargetParticleWorldMatrix.it"
		;
connectAttr "ChassisGravityCenterWorldMatrix.tmat" "chassisParentMatrix.i[0]";
connectAttr "chassisPositionRestInverseWorldMatrix.omat" "chassisParentMatrix.i[1]"
		;
connectAttr "chassisWorldMatrix.tmat" "chassisParentMatrix.i[2]";
connectAttr "ChassisGravityCenter.wm" "ChassisGravityCenterWorldMatrix.imat";
connectAttr "nodesStocker.of" "ChassisGravityCenterWorldMatrix.nds";
connectAttr "chassisPositionRestWorldMatrix.omat" "chassisPositionRestInverseWorldMatrix.imat"
		;
connectAttr "frontAxleRestWorldMatrix.omat" "chassisPositionRestWorldMatrix.imat"
		;
connectAttr "rearAxleRestWorldMatrix.omat" "chassisPositionRestWorldMatrix.tgt[0].tmat"
		;
connectAttr "FRTyreWorldMatrix.tmat" "frontAxleRestWorldMatrix.imat";
connectAttr "FLTyreWorldMatrix.tmat" "frontAxleRestWorldMatrix.tgt[0].tmat";
connectAttr "RRTyreWorldMatrix.tmat" "rearAxleRestWorldMatrix.imat";
connectAttr "RLTyreWorldMatrix.tmat" "rearAxleRestWorldMatrix.tgt[0].tmat";
connectAttr "chassisPositionWorldMatrix.omat" "chassisWorldMatrix.imat";
connectAttr "frontAxleWorldMatrix.omat" "chassisWorldMatrix.pmat";
connectAttr "leftSideWorldMatrix.omat" "chassisWorldMatrix.smat";
connectAttr "frontAxleWorldMatrix.omat" "chassisPositionWorldMatrix.imat";
connectAttr "rearAxleWorldMatrix.omat" "chassisPositionWorldMatrix.tgt[0].tmat";
connectAttr "FR_tyreOffset_BUF.wm" "frontAxleWorldMatrix.imat";
connectAttr "FL_tyreOffset_BUF.wm" "frontAxleWorldMatrix.tgt[0].tmat";
connectAttr "RR_tyreOffset_BUF.wm" "rearAxleWorldMatrix.imat";
connectAttr "RL_tyreOffset_BUF.wm" "rearAxleWorldMatrix.tgt[0].tmat";
connectAttr "RL_tyreOffset_BUF.wm" "leftSideWorldMatrix.imat";
connectAttr "FL_tyreOffset_BUF.wm" "leftSideWorldMatrix.tgt[0].tmat";
connectAttr "FR_tyreSecondary_CON.wm" "FRTyreSecondaryCONToFRTyreJNTConstraint.i[0]"
		;
connectAttr "bones_GRP.wim" "FRTyreSecondaryCONToFRTyreJNTConstraint.i[1]";
connectAttr "FL_tyreSecondary_CON.wm" "FLTyreSecondaryCONToFLTyreJNTConstraint.i[0]"
		;
connectAttr "bones_GRP.wim" "FLTyreSecondaryCONToFLTyreJNTConstraint.i[1]";
connectAttr "RR_tyreSecondary_CON.wm" "RRTyreSecondaryCONToRRTyreJNTConstraint.i[0]"
		;
connectAttr "bones_GRP.wim" "RRTyreSecondaryCONToRRTyreJNTConstraint.i[1]";
connectAttr "RL_tyreSecondary_CON.wm" "RLTyreSecondaryCONToRLTypeJNTConstraint.i[0]"
		;
connectAttr "bones_GRP.wim" "RLTyreSecondaryCONToRLTypeJNTConstraint.i[1]";
connectAttr "chassis_CON.wm" "chassisCONToChassisJNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "chassisCONToChassisJNTConstraint.i[1]";
connectAttr "nodesStocker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chassisParentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chassisPositionRestInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FRTyreParentedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FLTyreParentedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RRTyreParentedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RLTyreParentedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chassisAimTargetParticleParentedWorldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RRTyreSecondaryCONToRRTyreJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "chassisCONToChassisJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RLTyreSecondaryCONToRLTypeJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FRTyreSecondaryCONToFRTyreJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "FLTyreSecondaryCONToFLTyreJNTConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "chassisAimTargetParticleShape.iog" ":initialParticleSE.dsm" -na;
// End of car_rigModule.ma
