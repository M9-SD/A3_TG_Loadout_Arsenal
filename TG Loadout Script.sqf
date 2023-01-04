
private _object = cursorObject;

if (_object getVariable ['hasTGLoadouts', false]) exitWith {
	systemChat "Error: Object already has loadout actions added.";
	playSound "addItemFailed";
};
_object setVariable ['hasTGLoadouts', false, true];

TG_loadout_sniper = [];
TG_loadout_diver = [];
TG_loadout_autorifleman = [];
TG_loadout_cqb = [];
TG_loadout_aa = [];
TG_loadout_engineer = [];
TG_loadout_hat = [];
TG_loadout_lat = [];
TG_loadout_medic = [];
TG_loadout_rifleman = [];
TG_loadout_uav = [];
TG_loadout_ammobearer = [];

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

TG_action_loadout_sniper = _object addAction [
	format ["<t color='%1'>TG Sniper</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_sniper;
		systemChat format ["Loadout “TG Sniper” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_diver = _object addAction [
	format ["<t color='%1'>TG Diver</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_diver;
		systemChat format ["Loadout “TG Diver applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_autorifleman = _object addAction [
	format ["<t color='%1'>TG Auitorifleman</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_autorifleman;
		systemChat format ["Loadout “TG Autorifleman” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_cqb = _object addAction [
	format ["<t color='%1'>TG CQB</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_cqb;
		systemChat format ["Loadout “TG CQB” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_aa = _object addAction [
	format ["<t color='%1'>TG AA</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_aa;
		systemChat format ["Loadout “TG AA” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_engineer = _object addAction [
	format ["<t color='%1'>TG Engineer</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_engineer;
		systemChat format ["Loadout “TG Engineer” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_hat = _object addAction [
	format ["<t color='%1'>TG HAT</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_hat;
		systemChat format ["Loadout “TG HAT” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_lat = _object addAction [
	format ["<t color='%1'>TG LAT</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_lat;
		systemChat format ["Loadout “TG LAT” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_medic = _object addAction [
	format ["<t color='%1'>TG Medic</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_medic;
		systemChat format ["Loadout “TG Medic” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_rifleman = _object addAction [
	format ["<t color='%1'>TG Rifleman</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_rifleman;
		systemChat format ["Loadout “TG Rifleman” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_uav = _object addAction [
	format ["<t color='%1'>TG UAV</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_uav;
		systemChat format ["Loadout “TG UAV” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];

TG_action_loadout_ammobearer = _object addAction [
	format ["<t color='%1'>TG Ammo Bearer</t>", _color],
	{
		private _unit = _this select 1;
		_unit setUnitLoadout TG_loadout_ammobearer;
		systemChat format ["Loadout “TG Ammo Bearer” applied.";
		playSound 'click';	
	},
	nil,
	_priority,
	_showWindow,
	_hideOnUse,
	_shortcut,
	_condition,
	_radius
];


{



} {
	// Current result is saved in variable _x
	_ get array
	name is idx 0
	loadout is idx 1

	// build string fnc
	_object call compile stringFnc

} forEach _array of arrays of loadout names and loadout arrays;


