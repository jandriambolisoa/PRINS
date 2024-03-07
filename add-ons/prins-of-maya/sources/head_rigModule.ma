//Maya ASCII 2023 scene
//Name: head_rigModule.ma
//Last modified: Sat, Feb 17, 2024 04:07:04 PM
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
fileInfo "UUID" "7C6EE774-4119-2F2F-16D3-11A4B3D6EF6E";
createNode transform -n "head";
	rename -uid "05D83DF6-4AD7-8B2F-2EEB-8F8B5A513E2E";
createNode transform -n "install" -p "|head";
	rename -uid "664420F4-41DA-4585-8D41-F0876B807EAD";
	setAttr ".v" no;
createNode transform -n "neck" -p "install";
	rename -uid "C7A0393B-4535-6882-4716-BF9E42C61AE0";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode locator -n "neckShape" -p "neck";
	rename -uid "742FC306-4846-FF0E-EBF3-6DA3D713C8CF";
	setAttr -k off ".v";
createNode transform -n "head" -p "neck";
	rename -uid "F37E9D70-410A-6F9F-8D61-33972363E780";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode locator -n "headShape" -p "|head|install|neck|head";
	rename -uid "273598F8-4311-01A1-027B-FA8D061CD2C0";
	setAttr -k off ".v";
createNode transform -n "jaw" -p "|head|install|neck|head";
	rename -uid "35C00380-4B9A-3F23-FC7D-38BB3BCD03DF";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0 0 2 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "jawShape" -p "jaw";
	rename -uid "7F5C1C39-4C9D-F9EE-774F-C48C021B0E79";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "R_eye" -p "|head|install|neck|head";
	rename -uid "6DD1704B-49C1-726A-480B-10A44C2DC321";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -1.5 3 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "R_eyeShape" -p "R_eye";
	rename -uid "63E16444-4DB0-81DD-3FE2-3398F8649A37";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "L_eye" -p "|head|install|neck|head";
	rename -uid "2DD93715-4E48-3D98-4A96-07B2C4318752";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 1.5 3 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 1 ;
createNode locator -n "L_eyeShape" -p "L_eye";
	rename -uid "4C5DBCF9-4FB8-4766-39B0-10B37E819383";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.66 0.66 0.66 ;
createNode transform -n "controllers_GRP" -p "|head";
	rename -uid "A3B8F633-4B42-50E9-A98B-E18E3900A18B";
createNode transform -n "parentAttach_BUF" -p "controllers_GRP";
	rename -uid "1C0F9037-4114-1CC8-6CF1-3DA6620BB7DD";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode transform -n "neck_BUF" -p "controllers_GRP";
	rename -uid "37B88DF7-4DCF-23ED-ACFC-23ABBA58B7D8";
createNode transform -n "neck_CON" -p "neck_BUF";
	rename -uid "F09CF80D-4AC9-6238-43F9-92B52E5BE9ED";
createNode nurbsCurve -n "neck_CONShape" -p "neck_CON";
	rename -uid "85068C86-438F-9C6A-6999-DFBDDD6B303B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4105141888630339 8.6369084327151978e-17 -1.4105141888630341
		1.2214433042520383e-16 1.2214433042520383e-16 -1.9947682958097859
		-1.4105141888630339 8.6369084327151966e-17 -1.4105141888630339
		-1.9947682958097872 2.6053923567355665e-32 -3.6986830438060056e-16
		-1.4105141888630339 -8.6369084327151966e-17 1.4105141888630339
		-1.9981730447577247e-16 -1.2214433042520388e-16 1.9947682958097881
		1.4105141888630339 -8.6369084327151966e-17 1.4105141888630339
		1.9947682958097872 3.0651606954104382e-33 5.5666845149880803e-18
		1.4105141888630339 8.6369084327151978e-17 -1.4105141888630341
		1.2214433042520383e-16 1.2214433042520383e-16 -1.9947682958097859
		-1.4105141888630339 8.6369084327151966e-17 -1.4105141888630339
		;
createNode transform -n "head_CON" -p "neck_CON";
	rename -uid "420C94AB-4F06-8EAB-9549-F682BC240113";
createNode nurbsCurve -n "head_CONShape" -p "head_CON";
	rename -uid "B6F9484F-4FA1-32F2-753B-E2A08F666D25";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4105141888630339 8.6369084327151978e-17 -1.4105141888630341
		1.2214433042520383e-16 1.2214433042520383e-16 -1.9947682958097859
		-1.4105141888630339 8.6369084327151966e-17 -1.4105141888630339
		-1.9947682958097872 2.6053923567355665e-32 -3.6986830438060056e-16
		-1.4105141888630339 -8.6369084327151966e-17 1.4105141888630339
		-1.9981730447577247e-16 -1.2214433042520388e-16 1.9947682958097881
		1.4105141888630339 -8.6369084327151966e-17 1.4105141888630339
		1.9947682958097872 3.0651606954104382e-33 5.5666845149880803e-18
		1.4105141888630339 8.6369084327151978e-17 -1.4105141888630341
		1.2214433042520383e-16 1.2214433042520383e-16 -1.9947682958097859
		-1.4105141888630339 8.6369084327151966e-17 -1.4105141888630339
		;
createNode transform -n "jaw_CON" -p "head_CON";
	rename -uid "7091D183-4466-D36B-96A6-289D48811126";
createNode nurbsCurve -n "jaw_CONShape" -p "jaw_CON";
	rename -uid "59ECA439-4DA8-42B1-0531-EAACD3D81201";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		1.560385431670736 0.5 0.71916069974966579
		1.560385431670736 0.16666666666666663 0.71916069974966579
		1.560385431670736 -0.16666666666666663 0.71916069974966579
		1.560385431670736 -0.5 0.71916069974966579
		0.58482148141894541 -0.5 1.4633086383518412
		-0.58482148141894408 -0.5 1.4633086383518412
		-1.5603854316707342 -0.5 0.71916069974966579
		-1.5603854316707351 -0.16666666666666663 0.71916069974966579
		-1.5603854316707351 0.16666666666666663 0.71916069974966579
		-1.5603854316707351 0.5 0.71916069974966579
		-0.58482148141894486 0.5 1.4633086383518412
		0.5848214814189453 0.5 1.4633086383518412
		1.5603854316707353 0.5 0.71916069974966579
		;
createNode transform -n "L_eye_CON" -p "head_CON";
	rename -uid "A8923F50-4917-8EDF-2515-09A3954E4DDD";
createNode nurbsCurve -n "L_eye_CONShape" -p "L_eye_CON";
	rename -uid "797FA8DA-4D6B-F251-9B73-848A7D6D2866";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58647778082546054 0.72827397209978317 1.0642713609874546
		-1.712582063096953e-16 0.82940483167384194 0.84209240700251897
		-0.58647778082546098 0.72827397209978306 1.0642713609874546
		-0.82940483167384238 2.0918114743074272e-16 1.2976143552200741
		-0.58647778082546098 -0.72827397209978206 1.0642713609874543
		-3.051266541697382e-16 -0.82940483167384216 0.84209240700251919
		0.58647778082546054 -0.72827397209978206 1.0642713609874546
		0.82940483167384194 5.3079010443947138e-17 1.2976143552200741
		0.58647778082546054 0.72827397209978317 1.0642713609874546
		-1.712582063096953e-16 0.82940483167384194 0.84209240700251897
		-0.58647778082546098 0.72827397209978306 1.0642713609874546
		;
createNode transform -n "R_eye_CON" -p "head_CON";
	rename -uid "243516CA-4B15-E6AD-D3C1-068C1E5D7406";
createNode nurbsCurve -n "R_eye_CONShape" -p "R_eye_CON";
	rename -uid "F0C58444-455B-D7DF-1497-1FB6D4E32E46";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58647778082546054 0.72827397209978317 1.0642713609874546
		-1.712582063096953e-16 0.82940483167384194 0.84209240700251897
		-0.58647778082546098 0.72827397209978306 1.0642713609874546
		-0.82940483167384238 2.0918114743074272e-16 1.2976143552200741
		-0.58647778082546098 -0.72827397209978206 1.0642713609874543
		-3.051266541697382e-16 -0.82940483167384216 0.84209240700251919
		0.58647778082546054 -0.72827397209978206 1.0642713609874546
		0.82940483167384194 5.3079010443947138e-17 1.2976143552200741
		0.58647778082546054 0.72827397209978317 1.0642713609874546
		-1.712582063096953e-16 0.82940483167384194 0.84209240700251897
		-0.58647778082546098 0.72827397209978306 1.0642713609874546
		;
createNode transform -n "options_BUF" -p "controllers_GRP";
	rename -uid "8BF9C080-47C3-345E-DAF3-278D9F47A6D7";
createNode transform -n "options_CON" -p "options_BUF";
	rename -uid "A669142A-4677-05F9-AAC8-32B42CA0A9F2";
	addAttr -ci true -sn "localSpaceHead" -ln "localSpaceHead" -nn "Local Space Head" 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "localSpaceLookAt" -ln "localSpaceLookAt" -nn "Local Space Look At" 
		-dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 5 0 0 ;
	setAttr -k on ".localSpaceHead";
	setAttr -k on ".localSpaceLookAt";
createNode nurbsCurve -n "options_CONShape" -p "options_CON";
	rename -uid "553421FE-4DE6-110F-D39D-37BE8CEE512D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14320709324934322 0.14320709324934411 4.1104331377142109e-16
		1.1059048869626092e-16 1.8060797410854841 4.2097962995421556e-16
		-0.14320709324934322 0.14320709324934411 4.0089850432980965e-16
		-1.8060797410854841 6.3644336434307611e-16 3.120143157118223e-16
		-0.14320709324934322 -0.14320709324934247 3.8568129016739205e-16
		-1.8091624289902722e-16 -1.8060797410854841 3.3051031801497872e-16
		0.14320709324934322 -0.14320709324934247 4.0597090905061527e-16
		1.8060797410854841 2.9652141503030579e-16 3.120143157118223e-16
		0.14320709324934322 0.14320709324934411 4.1104331377142109e-16
		1.1059048869626092e-16 1.8060797410854841 4.2097962995421556e-16
		-0.14320709324934322 0.14320709324934411 4.0089850432980965e-16
		;
createNode transform -n "eyes_BUF" -p "controllers_GRP";
	rename -uid "6070B244-46ED-1157-53A4-00ADB3A216FC";
createNode transform -n "eyesLookAt_CON" -p "eyes_BUF";
	rename -uid "50965945-4A35-71DC-D9DC-B5ACD386F582";
createNode nurbsCurve -n "eyesLookAt_CONShape" -p "eyesLookAt_CON";
	rename -uid "A400E080-4B6C-4E96-4367-A3B624DF34AF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		0.99016637587700296 0.14118797053479357 -8.3266726846886741e-17
		0.99016637587700296 0.047062656844931224 -6.9388939039072284e-18
		0.99016637587700296 -0.047062656844931224 2.0816681711721685e-17
		0.99016637587700296 -0.14118797053479357 -2.7755575615628914e-17
		0.33005545862566787 -0.14118797053479357 8.3266726846886741e-17
		-0.33005545862566649 -0.14118797053479357 8.3266726846886741e-17
		-0.99016637587700185 -0.14118797053479357 8.3266726846886741e-17
		-0.99016637587700185 -0.047062656844931224 6.9388939039072284e-18
		-0.99016637587700185 0.047062656844931224 -2.0816681711721685e-17
		-0.99016637587700185 0.14118797053479357 2.7755575615628914e-17
		-0.3300554586256666 0.14118797053479357 -8.3266726846886741e-17
		0.33005545862566782 0.14118797053479357 -8.3266726846886741e-17
		0.99016637587700185 0.14118797053479357 -8.3266726846886741e-17
		;
createNode transform -n "L_eyeLookAt_CON" -p "eyesLookAt_CON";
	rename -uid "F0778B42-4DD8-A0D8-195F-5DBDCFD9EBAE";
createNode nurbsCurve -n "L_eyeLookAt_CONShape" -p "L_eyeLookAt_CON";
	rename -uid "BC00F6DE-47AB-377B-048E-25BBF6602DDA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.31711078311501584 0.31711078311501584 3.3696254776089721e-17
		2.7460400313602759e-17 0.44846237025600794 -2.246416985072647e-17
		-0.31711078311501584 0.31711078311501584 1.1232084925363235e-17
		-0.44846237025600805 2.324836846659156e-17 0
		-0.31711078311501584 -0.31711078311501584 -1.1232084925363235e-17
		-4.4922782346003489e-17 -0.44846237025600827 4.4928339701452941e-17
		0.31711078311501584 -0.31711078311501584 -1.1232084925363235e-17
		0.44846237025600805 -6.1156655089692489e-17 -2.4940238597366793e-33
		0.31711078311501584 0.31711078311501584 3.3696254776089721e-17
		2.7460400313602759e-17 0.44846237025600794 -2.246416985072647e-17
		-0.31711078311501584 0.31711078311501584 1.1232084925363235e-17
		;
createNode transform -n "R_eyeLookAt_CON" -p "eyesLookAt_CON";
	rename -uid "048FE162-4BEF-A535-248F-A4859AF9D6A5";
createNode nurbsCurve -n "R_eyeLookAt_CONShape" -p "R_eyeLookAt_CON";
	rename -uid "7BA0A8F2-446F-B48B-AAF4-CCBB3B278E9A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.31711078311501584 0.31711078311501584 3.3696254776089721e-17
		2.7460400313602759e-17 0.44846237025600794 -2.246416985072647e-17
		-0.31711078311501584 0.31711078311501584 1.1232084925363235e-17
		-0.44846237025600805 2.324836846659156e-17 0
		-0.31711078311501584 -0.31711078311501584 -1.1232084925363235e-17
		-4.4922782346003489e-17 -0.44846237025600827 4.4928339701452941e-17
		0.31711078311501584 -0.31711078311501584 -1.1232084925363235e-17
		0.44846237025600805 -6.1156655089692489e-17 -2.4940238597366793e-33
		0.31711078311501584 0.31711078311501584 3.3696254776089721e-17
		2.7460400313602759e-17 0.44846237025600794 -2.246416985072647e-17
		-0.31711078311501584 0.31711078311501584 1.1232084925363235e-17
		;
createNode transform -n "bones_GRP" -p "|head";
	rename -uid "116FD85C-4DCF-9883-B294-539726FD1A32";
createNode joint -n "bone000_JNT" -p "bones_GRP";
	rename -uid "B5706BD5-460B-11E4-B83F-05A89BAFD5A4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "bone001_JNT" -p "bones_GRP";
	rename -uid "53F20D90-4637-D9FB-9EE6-1185526D9119";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "jaw_JNT" -p "bones_GRP";
	rename -uid "555DC71C-46F0-39FF-577F-69967E87ADA7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "R_eye_JNT" -p "bones_GRP";
	rename -uid "EED006BC-4C85-6516-B049-47878FF43BD4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "L_eye_JNT" -p "bones_GRP";
	rename -uid "7FE66FE6-4BF9-71AF-35F4-ADAD5A35508C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode multMatrix -n "neckToParentAttachBUFConstraint";
	rename -uid "4A19A9CB-4F73-A2C2-7F15-CF9BBFF0B340";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockNeckWorldMatrix";
	rename -uid "6471AD87-4CAE-272D-FBCB-FDA7D705DA25";
createNode floatConstant -n "nodesStocker";
	rename -uid "7760EF59-4275-C27D-BF90-26970F7707B3";
	setAttr "._f" 0;
createNode multMatrix -n "parentAttachBUFToNeckBUFConstraint";
	rename -uid "47A465EA-4888-9A25-4FE7-658DD827BB00";
	setAttr -s 2 ".i";
createNode blendMatrix -n "blendLocalSpaceHeadNeckBUF";
	rename -uid "82F8D224-4741-91AC-206E-13BDAC064A3D";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].tra" 0;
	setAttr ".tgt[0].she" 0;
createNode floatMath -n "inverseLocalSpaceHeadValue";
	rename -uid "F257390C-49E2-5463-9661-5C9132AC9BFF";
	setAttr "._cnd" 1;
createNode multMatrix -n "getHeadLocalMatrix";
	rename -uid "5F0D6AF1-4928-D4E1-2A80-E9B2763C5B17";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockHeadWorldMatrix";
	rename -uid "A6E8F1FB-49A8-B56F-7E41-73A72C7161D4";
createNode inverseMatrix -n "neckInverseWorldMatrix";
	rename -uid "745429E9-4084-F27E-224E-ECA4CF2BB36B";
createNode multMatrix -n "getJawLocalMatrix";
	rename -uid "9F175C21-46CF-4F73-7709-1FB80FD9EE70";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockJawWorldMatrix";
	rename -uid "FD1A20B4-4DB3-36F0-C9B1-CDA1549DB41E";
createNode inverseMatrix -n "headInverseWorldMatrix";
	rename -uid "82E51F83-42F0-4C7B-ECFA-598D8BD46CAC";
createNode multMatrix -n "LEyeToLEyeLookAtCONAimLocalMatrix";
	rename -uid "050FAA90-4E40-207C-315B-419D1FBFD05B";
	setAttr -s 2 ".i";
createNode aimMatrix -n "LEyeToLEyeLookAtCONAimMatrix";
	rename -uid "527B99DD-40FD-0ADC-E536-61965DE8A983";
	setAttr ".pmi" -type "double3" 0 0 1 ;
createNode multMatrix -n "getLEyeTransformedWorldMatrix";
	rename -uid "AE3DEDB6-4D65-8B0D-757E-F48C8F9B7070";
	setAttr -s 2 ".i";
createNode multMatrix -n "getLEyeLocalMatrix";
	rename -uid "E8328EA6-4E4E-DBF1-52E2-098F8DE8EE69";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockLEyeWorldMatrix";
	rename -uid "9EEF6864-428D-B149-6935-5FB8AE78F298";
createNode multMatrix -n "REyeToREyeLookAtCONAimLocalMatrix";
	rename -uid "8CE585FB-4E21-72BC-64BA-6E8728B6F6EC";
	setAttr -s 2 ".i";
createNode aimMatrix -n "REyeToREyeLookAtCONAimMatrix";
	rename -uid "AA158330-44EE-1721-35DC-87A68ED42B39";
	setAttr ".pmi" -type "double3" 0 0 1 ;
createNode multMatrix -n "getREyeTransformedWorldMatrix";
	rename -uid "C39EC33C-4B59-53B2-38D4-13AC4C713D03";
	setAttr -s 2 ".i";
createNode multMatrix -n "getREyeLocalMatrix";
	rename -uid "5CB3C5FB-4EE4-2845-C97F-E2808AB94E9F";
	setAttr -s 2 ".i";
createNode pickMatrix -n "stockREyeWorldMatrix";
	rename -uid "EB9BA1AC-4920-B571-C590-06A332A273F7";
createNode multMatrix -n "headCONToEyesBUFConstraint";
	rename -uid "C965242D-4F96-70A4-F905-1D87AFE7E317";
	setAttr -s 2 ".i";
createNode blendMatrix -n "blendLocalSpaceLookAtEyesBUF";
	rename -uid "038CDAF0-4BCD-1517-428E-B1A1113196D9";
	setAttr ".tgt[0].sca" 0;
	setAttr ".tgt[0].tra" 0;
	setAttr ".tgt[0].she" 0;
createNode floatMath -n "inverseLocalSpaceLookAtValue";
	rename -uid "7DBE9B7D-440A-BDF0-C8AB-908EE034B11B";
	setAttr "._cnd" 1;
createNode composeMatrix -n "getEyesLookAtCONParentMatrix";
	rename -uid "7731C567-44D9-6C44-4A08-6F9193FFA37B";
createNode decomposeMatrix -n "decomposeREyeLocalMatrix";
	rename -uid "91BC12F0-4DA1-3F4C-41EE-748203FE21D6";
createNode floatMath -n "multiplyEyesLookAtCONTranslateZ";
	rename -uid "4168E10A-410C-EE8A-D6C0-C3998B255AED";
	setAttr "._fb" 8;
	setAttr "._cnd" 2;
createNode composeMatrix -n "getLEyeLookAtCONLocalMatrix";
	rename -uid "E0A267B9-424D-E416-3F8F-B0AC5AEE347F";
createNode floatMath -n "REyeToLEyeHalfLength";
	rename -uid "2A5A8DD6-4D99-1612-9439-89A2863BE8B5";
	setAttr "._fb" 0.5;
	setAttr "._cnd" 2;
createNode distanceBetween -n "REyeToLEyeLength";
	rename -uid "5334261A-42E4-CAD1-2761-BDB1CAC4C215";
createNode composeMatrix -n "getREyeLookAtCONLocalMatrix";
	rename -uid "7E1331CC-441B-C22C-6CCF-3E946FD9A4A4";
createNode floatMath -n "negativeREyeToLEyeHalfLength";
	rename -uid "7CF4F064-4AEA-A00B-1A42-629B07C2B4EC";
	setAttr "._fb" -1;
	setAttr "._cnd" 2;
createNode multMatrix -n "neckCONToBone000JNTConstraint";
	rename -uid "C1669EBD-40BB-F9B6-E58A-5AB5C6BF4705";
	setAttr -s 2 ".i";
createNode multMatrix -n "headCONToBone001JNTConstraint";
	rename -uid "90C2FBC3-452E-3AEA-D41D-B9BFEAB89D13";
	setAttr -s 2 ".i";
createNode multMatrix -n "jawCONToJawJNTConstraint";
	rename -uid "B698AFD3-4620-B1B3-A32B-54AA06AE95C0";
	setAttr -s 2 ".i";
createNode multMatrix -n "REyeCONToREyeJNTConstraint";
	rename -uid "03EC1E5B-41B5-2C89-A298-4787A8AAD18C";
	setAttr -s 2 ".i";
createNode multMatrix -n "LEyeCONToLEyeJNTConstraint";
	rename -uid "AAB17BA5-4ADE-7FD8-B9A3-88A185B95113";
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
	setAttr -s 25 ".u";
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
connectAttr "neckToParentAttachBUFConstraint.o" "parentAttach_BUF.opm";
connectAttr "parentAttachBUFToNeckBUFConstraint.o" "neck_BUF.opm";
connectAttr "getHeadLocalMatrix.o" "head_CON.opm";
connectAttr "getJawLocalMatrix.o" "jaw_CON.opm";
connectAttr "LEyeToLEyeLookAtCONAimLocalMatrix.o" "L_eye_CON.opm";
connectAttr "REyeToREyeLookAtCONAimLocalMatrix.o" "R_eye_CON.opm";
connectAttr "headCONToEyesBUFConstraint.o" "eyes_BUF.opm";
connectAttr "getEyesLookAtCONParentMatrix.omat" "eyesLookAt_CON.opm";
connectAttr "getLEyeLookAtCONLocalMatrix.omat" "L_eyeLookAt_CON.opm";
connectAttr "getREyeLookAtCONLocalMatrix.omat" "R_eyeLookAt_CON.opm";
connectAttr "neckCONToBone000JNTConstraint.o" "bone000_JNT.opm";
connectAttr "headCONToBone001JNTConstraint.o" "bone001_JNT.opm";
connectAttr "jawCONToJawJNTConstraint.o" "jaw_JNT.opm";
connectAttr "REyeCONToREyeJNTConstraint.o" "R_eye_JNT.opm";
connectAttr "LEyeCONToLEyeJNTConstraint.o" "L_eye_JNT.opm";
connectAttr "stockNeckWorldMatrix.tmat" "neckToParentAttachBUFConstraint.i[0]";
connectAttr "controllers_GRP.wim" "neckToParentAttachBUFConstraint.i[1]";
connectAttr "neck.wm" "stockNeckWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockNeckWorldMatrix.nds";
connectAttr "blendLocalSpaceHeadNeckBUF.omat" "parentAttachBUFToNeckBUFConstraint.i[0]"
		;
connectAttr "controllers_GRP.wim" "parentAttachBUFToNeckBUFConstraint.i[1]";
connectAttr "parentAttach_BUF.wm" "blendLocalSpaceHeadNeckBUF.imat";
connectAttr "stockNeckWorldMatrix.tmat" "blendLocalSpaceHeadNeckBUF.tgt[0].tmat"
		;
connectAttr "inverseLocalSpaceHeadValue.of" "blendLocalSpaceHeadNeckBUF.env";
connectAttr "options_CON.localSpaceHead" "inverseLocalSpaceHeadValue._fb";
connectAttr "stockHeadWorldMatrix.tmat" "getHeadLocalMatrix.i[0]";
connectAttr "neckInverseWorldMatrix.omat" "getHeadLocalMatrix.i[1]";
connectAttr "|head|install|neck|head.wm" "stockHeadWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockHeadWorldMatrix.nds";
connectAttr "stockNeckWorldMatrix.tmat" "neckInverseWorldMatrix.imat";
connectAttr "stockJawWorldMatrix.tmat" "getJawLocalMatrix.i[0]";
connectAttr "headInverseWorldMatrix.omat" "getJawLocalMatrix.i[1]";
connectAttr "jaw.wm" "stockJawWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockJawWorldMatrix.nds";
connectAttr "stockHeadWorldMatrix.tmat" "headInverseWorldMatrix.imat";
connectAttr "LEyeToLEyeLookAtCONAimMatrix.tmat" "LEyeToLEyeLookAtCONAimLocalMatrix.i[0]"
		;
connectAttr "head_CON.wim" "LEyeToLEyeLookAtCONAimLocalMatrix.i[1]";
connectAttr "getLEyeTransformedWorldMatrix.o" "LEyeToLEyeLookAtCONAimMatrix.imat"
		;
connectAttr "L_eyeLookAt_CON.wm" "LEyeToLEyeLookAtCONAimMatrix.pmat";
connectAttr "getLEyeLocalMatrix.o" "getLEyeTransformedWorldMatrix.i[0]";
connectAttr "head_CON.wm" "getLEyeTransformedWorldMatrix.i[1]";
connectAttr "stockLEyeWorldMatrix.tmat" "getLEyeLocalMatrix.i[0]";
connectAttr "headInverseWorldMatrix.omat" "getLEyeLocalMatrix.i[1]";
connectAttr "L_eye.wm" "stockLEyeWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockLEyeWorldMatrix.nds";
connectAttr "REyeToREyeLookAtCONAimMatrix.tmat" "REyeToREyeLookAtCONAimLocalMatrix.i[0]"
		;
connectAttr "head_CON.wim" "REyeToREyeLookAtCONAimLocalMatrix.i[1]";
connectAttr "getREyeTransformedWorldMatrix.o" "REyeToREyeLookAtCONAimMatrix.imat"
		;
connectAttr "R_eyeLookAt_CON.wm" "REyeToREyeLookAtCONAimMatrix.pmat";
connectAttr "getREyeLocalMatrix.o" "getREyeTransformedWorldMatrix.i[0]";
connectAttr "head_CON.wm" "getREyeTransformedWorldMatrix.i[1]";
connectAttr "stockREyeWorldMatrix.tmat" "getREyeLocalMatrix.i[0]";
connectAttr "headInverseWorldMatrix.omat" "getREyeLocalMatrix.i[1]";
connectAttr "R_eye.wm" "stockREyeWorldMatrix.imat";
connectAttr "nodesStocker.of" "stockREyeWorldMatrix.nds";
connectAttr "blendLocalSpaceLookAtEyesBUF.omat" "headCONToEyesBUFConstraint.i[0]"
		;
connectAttr "controllers_GRP.wim" "headCONToEyesBUFConstraint.i[1]";
connectAttr "head_CON.wm" "blendLocalSpaceLookAtEyesBUF.imat";
connectAttr "stockHeadWorldMatrix.tmat" "blendLocalSpaceLookAtEyesBUF.tgt[0].tmat"
		;
connectAttr "inverseLocalSpaceLookAtValue.of" "blendLocalSpaceLookAtEyesBUF.env"
		;
connectAttr "options_CON.localSpaceLookAt" "inverseLocalSpaceLookAtValue._fb";
connectAttr "decomposeREyeLocalMatrix.os" "getEyesLookAtCONParentMatrix.is";
connectAttr "decomposeREyeLocalMatrix.oty" "getEyesLookAtCONParentMatrix.ity";
connectAttr "multiplyEyesLookAtCONTranslateZ.of" "getEyesLookAtCONParentMatrix.itz"
		;
connectAttr "getREyeLocalMatrix.o" "decomposeREyeLocalMatrix.imat";
connectAttr "decomposeREyeLocalMatrix.otz" "multiplyEyesLookAtCONTranslateZ._fa"
		;
connectAttr "REyeToLEyeHalfLength.of" "getLEyeLookAtCONLocalMatrix.itx";
connectAttr "REyeToLEyeLength.d" "REyeToLEyeHalfLength._fa";
connectAttr "stockREyeWorldMatrix.tmat" "REyeToLEyeLength.im1";
connectAttr "stockLEyeWorldMatrix.tmat" "REyeToLEyeLength.im2";
connectAttr "negativeREyeToLEyeHalfLength.of" "getREyeLookAtCONLocalMatrix.itx";
connectAttr "REyeToLEyeHalfLength.of" "negativeREyeToLEyeHalfLength._fa";
connectAttr "neck_CON.wm" "neckCONToBone000JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "neckCONToBone000JNTConstraint.i[1]";
connectAttr "head_CON.wm" "headCONToBone001JNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "headCONToBone001JNTConstraint.i[1]";
connectAttr "jaw_CON.wm" "jawCONToJawJNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "jawCONToJawJNTConstraint.i[1]";
connectAttr "R_eye_CON.wm" "REyeCONToREyeJNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "REyeCONToREyeJNTConstraint.i[1]";
connectAttr "L_eye_CON.wm" "LEyeCONToLEyeJNTConstraint.i[0]";
connectAttr "bones_GRP.wim" "LEyeCONToLEyeJNTConstraint.i[1]";
connectAttr "nodesStocker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckToParentAttachBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "parentAttachBUFToNeckBUFConstraint.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getHeadLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neckInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getJawLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "headInverseWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getREyeLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "getLEyeLocalMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "inverseLocalSpaceHeadValue.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "headCONToEyesBUFConstraint.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyEyesLookAtCONTranslateZ.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "REyeToLEyeLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "REyeToLEyeHalfLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negativeREyeToLEyeHalfLength.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "inverseLocalSpaceLookAtValue.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "getREyeTransformedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "REyeToREyeLookAtCONAimLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "getLEyeTransformedWorldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LEyeToLEyeLookAtCONAimLocalMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LEyeCONToLEyeJNTConstraint.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "jawCONToJawJNTConstraint.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "headCONToBone001JNTConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "neckCONToBone000JNTConstraint.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "REyeCONToREyeJNTConstraint.msg" ":defaultRenderUtilityList1.u" -na;
// End of head_rigModule.ma
