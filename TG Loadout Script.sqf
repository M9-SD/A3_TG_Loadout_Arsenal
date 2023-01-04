
private _object = cursorObject;

if (_object getVariable ['hasTGLoadouts', false]) exitWith {

	systemChat "Error: Object already has loadout actions added.";
	playSound "addItemFailed";
	
};

_object setVariable ['hasTGLoadouts', false, true];

TG_loadouts = 
	[
		"TG Sniper", 
		[]
	],
	[
		"TG Diver", 
		[]
	],
	[
		"TG Autorifleman", 
		[]
	],
	[
		"TG CQB", 
		[]
	],
	[
		"TG AA", 
		[]
	],
	[
		"TG Engineer", 
		[]
	],
	[
		"TG HAT", 
		[]
	],
	[
		"TG LAT", 
		[]
	],
	[
		"TG Medic", 
		[]
	],
	[
		"TG Rifleman", 
		[]
	],
	[
		"TG UAV", 
		[]
	],
	[
		"TG Ammobearer", 
		[]
	]
];

publicVariable 'TG_loadouts';

private _color = "#4285f4"

private _priority = 1.5;

private _showWindow = false;

private _hideOnUse = false;

private _shortcut = '';

private _condition = str {

	comment "_target";
	comment "_this";
	comment "_actionID";
	if (_this != vehicle _this) exitWith {false};

};

private _radius = 5;

{
	private _loadout_package = _x;
	private _loadout_name = _loadout_package # 0;
	private _loadout_array = _loadout_package # 1;
	private _codeStr = format ["
		private _object = _this;
		_object addAction [
			""<t color='%1'>%8</t>"",
			{
				private _unit = _this select 1;
				_unit setUnitLoadout %9;
				systemChat 'Loadout “%8” applied.';
				playSound 'click';	
			}, nil, %2, %3, %4, %5, %6, %7
		];
	", _color, _priority, _showWindow, _hideOnUse, _shortcut, _condition, _radius, _loadout_name, _loadout_array];
	private _result = _object call (compile _codeStr);
} forEach TG_loadouts;

