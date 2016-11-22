(allCurators select 0) addCuratorEditableObjects [allUnits,true];

[
	[grp_qrf_mob_3,grp_qrf_mob_2,grp_qrf_mob_1],
	"EAST",
	getMarkerPos "marker_hq",
	1000
] execFSM "qrf.fsm";