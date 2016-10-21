enableSaving [false,false];
enableRadio false;
enableSentences false;

waitUntil {!isnil "bis_fnc_init"};

//Enable Fast Roping script add to init
[] execVM "zlt_fastrope.sqf";

loadout = compile preprocessFileLineNumbers "loadout.sqf";
adjust_performance_parameters = compile preprocessFileLineNumbers "performance.sqf";

waitUntil {!isNull hvt};

if (local hvt) then {
	hvt addEventHandler ["killed", {
		hvt_killed = true;		
		publicVariable "hvt_killed";
	}];
};

if (!isDedicated) then {
	[player] call loadout;
	[500] call adjust_performance_parameters;

	sleep 2;

	if (side player == west) then {
		playSound "IntroBlufor";
	};

	if (side player == east) then {
		playSound "IntroOpfor";
	};
};

"time_warning" addPublicVariableEventHandler {
	hint "One minute left!";
};

if (isServer) then {
	[] spawn {
		WinningSide="none";  // end game condition
		cycles_counter = 0;  // game ticks count, each tick is 30 secs
		hvt_escaped = false; // blufor present on the map
		blufor_dead = false; // hvt didn't escape... yet.
		hvt_killed = false;  // hvt is alive

		// main game loop
		while { WinningSide == "none" } do {
			sleep 30;
			cycles_counter=cycles_counter+1;

			// hint the time warning in cycle 18 (9 minutes)
			if (cycles_counter==18) then {
				time_warning = true;
				publicVariable "time_warning"; // sends public message to clients
			};

			if (hvt_escaped) then {
				// end condition, HVT has escaped, opfor wins
				WinningSide = "east";
			};

			if (blufor_dead) then {
				// all blufor are dead, end their misery
				WinningSide = "east";
			};
			
			if (hvt_killed) then {
				// hvt is dead
				WinningSide = "west";
			};

			if (cycles_counter>=20) then {
				// timeout has occurred, 10 minutes have passed, blufor wins
				WinningSide = "west";
			};

			// Note - it's obvious the conditions can be satisfied at the same time. The order of if checks is necessary to avoid creating a FSM.
		};

		// end is near, abort all I say
		switch (WinningSide) do {
			case "west": {
				"End1" call BIS_fnc_endMissionServer; // this is a multiplayer end mission call, ends the mission on all clients (look at CfgDebriefing for End1, End2 descriptions)
			};
			case "east": {
				"End2" call BIS_fnc_endMissionServer;
			};
		};
	};
};