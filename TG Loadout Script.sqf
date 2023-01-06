
private _object = this;

if (_object getVariable ['hasTGLoadouts', false]) exitWith {

	systemChat "Error: Object already has loadout actions added.";
	playSound "addItemFailed";
	
};

_object setVariable ['hasTGLoadouts', false, true];


comment "
	USE: 
	
	getUnitLoadout player;
	
	TO GET <loadout array>
	
	Add new loadout to top of TG_loadouts,
	use the following format:
	
	[
		'<loadout name>',
		<loadout array>
	],
";


TG_loadouts = [
	[
		"TG Marksman (DEA)",
		[["srifle_DMR_05_tan_f","","","optic_SOS",["10Rnd_93x64_DMR_05_Mag",10],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",11],[],""],["U_C_Poloshirt_salmon",[["FirstAidKit",2],["SmokeShell",1,1]]],["V_CarrierRigKBT_01_Olive_F",[["MineDetector",1],["FirstAidKit",2],["SmokeShellBlue",1,1],["10Rnd_93x64_DMR_05_Mag",1,10]]],["B_Messenger_Coyote_F",[["muzzle_snds_H_snd_F",1],["Integrated_NVG_F",1],["acc_pointer_IR",1],["ToolKit",1],["FirstAidKit",1],["Chemlight_yellow",1,1],["Chemlight_red",1,1],["Chemlight_green",1,1],["Chemlight_blue",1,1],["MiniGrenade",1,1]]],"H_Booniehat_khk_hs","G_Aviator",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]]
	],
	[
		"TG Sniper", 
		[["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],[],["U_B_FullGhillie_ard",[["optic_tws",1],["SmokeShell",3,1]]],["V_Rangemaster_belt",[["7Rnd_408_Mag",2,7]]],["B_Carryall_cbr",[["FirstAidKit",4],["7Rnd_408_Mag",12,7]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG Diver", 
		[["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_B_Wetsuit",[["FirstAidKit",2],["SmokeShell",4,1],["20Rnd_556x45_UW_mag",4,20]]],["V_RebreatherB",[]],["B_AssaultPack_blk",[["FirstAidKit",5],["20Rnd_556x45_UW_mag",3,20],["DemoCharge_Remote_Mag",4,1],["Laserbatteries",1,1]]],"H_HelmetSpecB_snakeskin","G_B_Diving",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]]
	],
	[
		"TG Autorifleman", 
		[["LMG_Mk200_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["200Rnd_65x39_cased_Box_Tracer_Red",200],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[]],["V_PlateCarrierL_CTRG",[["FirstAidKit",4],["200Rnd_65x39_cased_Box_Tracer_Red",1,200],["9Rnd_45ACP_Mag",1,9],["SmokeShell",3,1],["HandGrenade",2,1]]],["B_Carryall_khk",[["200Rnd_65x39_cased_Box_Red",4,200],["Laserbatteries",1,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG CQB", 
		[["arifle_MXC_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],""],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["30Rnd_65x39_caseless_black_mag",4,30]]],["V_PlateCarrierL_CTRG",[["FirstAidKit",4],["9Rnd_45ACP_Mag",1,9],["MiniGrenade",2,1],["SmokeShell",4,1]]],["B_AssaultPack_Kerry",[["MineDetector",1],["100Rnd_65x39_caseless_black_mag",4,100],["Laserbatteries",1,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG AA", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],""],["launch_B_Titan_F","","","",["Titan_AA",1],[],""],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["FirstAidKit",4]]],["V_PlateCarrierL_CTRG",[["9Rnd_45ACP_Mag",1,9],["SmokeShell",2,1],["MiniGrenade",2,1],["30Rnd_65x39_caseless_black_mag",10,30]]],["B_Carryall_khk",[["Titan_AA",1,1]]],"H_HelmetB_light_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG Engineer", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["30Rnd_65x39_caseless_black_mag",3,30]]],["V_PlateCarrierL_CTRG",[["FirstAidKit",4],["9Rnd_45ACP_Mag",1,9],["MiniGrenade",2,1],["SmokeShell",3,1],["30Rnd_65x39_caseless_black_mag",7,30]]],["B_Carryall_khk",[["ToolKit",1],["MineDetector",1],["SatchelCharge_Remote_Mag",2,1],["DemoCharge_Remote_Mag",2,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG HAT", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],["launch_O_Titan_short_F","","","",["Titan_AT",1],[],""],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["SmokeShell",3,1],["30Rnd_65x39_caseless_black_mag",1,30]]],["V_PlateCarrierH_CTRG",[["FirstAidKit",3],["9Rnd_45ACP_Mag",1,9],["MiniGrenade",2,1],["30Rnd_65x39_caseless_black_mag",9,30]]],["B_Carryall_khk",[["Titan_AT",1,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG LAT", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],["launch_NLAW_F","","","",["NLAW_F",1],[],""],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["SmokeShell",3,1],["30Rnd_65x39_caseless_black_mag",1,30]]],["V_PlateCarrierH_CTRG",[["FirstAidKit",3],["9Rnd_45ACP_Mag",1,9],["MiniGrenade",2,1],["30Rnd_65x39_caseless_black_mag",9,30]]],["B_Carryall_khk",[["NLAW_F",1,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG Medic", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["HandGrenade",2,1],["SmokeShell",5,1]]],["V_PlateCarrierL_CTRG",[["HandGrenade",2,1],["SmokeShell",5,1],["30Rnd_65x39_caseless_black_mag",10,30]]],["B_Carryall_khk",[["FirstAidKit",30],["Medikit",1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG Rifleman", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["FirstAidKit",4]]],["V_PlateCarrierL_CTRG",[["SmokeShell",3,1],["HandGrenade",2,1],["30Rnd_65x39_caseless_black_mag",10,30]]],["B_Carryall_khk",[["Titan_AT",2,1],["DemoCharge_Remote_Mag",2,1],["ClaymoreDirectionalMine_Remote_Mag",2,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG UAV", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["FirstAidKit",4],["9Rnd_45ACP_Mag",1,9]]],["V_PlateCarrierL_CTRG",[["SmokeShell",3,1],["HandGrenade",2,1],["30Rnd_65x39_caseless_black_mag",10,30]]],["B_UAV_01_backpack_F",[]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	],
	[
		"TG Ammobearer", 
		[["arifle_MX_Black_F","muzzle_snds_65_TI_blk_F","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_black_mag",30],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_B_CTRG_Soldier_Arid_F",[["FirstAidKit",4],["9Rnd_45ACP_Mag",1,9]]],["V_PlateCarrierL_CTRG",[["HandGrenade",2,1],["30Rnd_65x39_caseless_black_mag",10,30]]],["B_Bergen_mcamo_F",[["Titan_AT",1,1],["Titan_AA",1,1],["SmokeShell",3,1],["DemoCharge_Remote_Mag",4,1],["30Rnd_65x39_caseless_black_mag",3,30]]],"H_HelmetSpecB_snakeskin","G_Balaclava_TI_G_blk_F",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGogglesB_blk_F"]]
	]
];

publicVariable 'TG_loadouts';

[_object, false] remoteExec ['allowDamage'];

clearBackpackCargoGlobal _object;

clearWeaponCargoGlobal _object;

clearMagazineCargoGlobal _object;

clearItemCargoGlobal _object;

private _color = "#058fff";"4285f4";

private _priority = 500;"1.5";

private _showWindow = false;

private _hideOnUse = false;

private _shortcut = '';

private _condition = true;

private _radius = 5;

{
	private _loadout_package = _x;
	private _loadout_name = _loadout_package # 0;
	private _loadout_array = _loadout_package # 1;
	private _codeStr = format ["
		private _object = _this;
		systemChat typeOf _object;
		_object addAction [
			""<t font='puristaBold' size='1.2' color='%1'>%8</t>"",
			{
				private _unit = _this select 1;
				_unit setUnitLoadout %9;
				systemChat 'Loadout “%8” applied.';
				playSound 'click';	
			}, nil, %2, %3, %4, ""%5"", ""%6"", %7
		];
	", _color, _priority, _showWindow, _hideOnUse, _shortcut, _condition, _radius, _loadout_name, _loadout_array];
	private _result = _object call (compile _codeStr);
} forEach TG_loadouts;

TG_fnc_initLoadoutHUD = 
{
	params [['_object', objNull]];
	if (isNull _object) exitWith {};
	if (_object getVariable ['TG_has3DMarker_loadouts', false]) exitWith {};
	_object setVariable ['TG_has3DMarker_loadouts', true, true];
	[_object,
	{
		if (isNull _this) exitWith {};
		if (isNil 'TG_LoadoutBoxes') then 
		{
			TG_LoadoutBoxes = [];
		};
		TG_LoadoutBoxes pushBackUnique _this;
		if (not (isNil 'TG_EH_drawLoadoutBox3D')) then 
		{
			removeMissionEventHandler ['Draw3D', TG_EH_drawLoadoutBox3D];
		};
		TG_EH_drawLoadoutBox3D = addMissionEventHandler ['Draw3D', 
		{
			if (count TG_LoadoutBoxes == 0) exitWith {};
			{
				if (!isNull _x) then 
				{
					if ((_x distance (vehicle player)) <= 15) then {
						private _position = getPos _x;						
						private _offsetX = 0;
						private _offsetY = -0.07;
						private _drawSideArrows = false;
						private _texture = '\A3\ui_f\data\logos\arsenal_1024_ca.paa';
						_position set [2, (_position # 2) + 1.8];
						private _width = 0.8;
						private _height = 0.8;
						private _angle = 0;
						private _text = '';
						private _textSize = 0.05;
						private _font = 'RobotoCondensedBold';
						private _textAlign = 'center';
						private _shadow = 2;
						drawIcon3D 
						[
							"a3\ui_f\data\gui\rsc\rscdisplayarcademap\icon_sidebar_show_down.paa",
							[1,1,1,1],
							_position,
							_width, 
							_height, 
							_angle,
							'',
							_shadow,
							_textSize,
							_font,
							_textAlign,
							_drawSideArrows,
							_offsetX,
							_offsetY
						];
						drawIcon3D 
						[
							'',
							[0.01,0.56,1,1],
							_position,
							_width, 
							_height, 
							_angle,
							'Loadouts',
							_shadow,
							_textSize,
							_font,
							_textAlign,
							_drawSideArrows,
							_offsetX,
							_offsetY + 0.01
						];
					};
				};
			} forEach TG_LoadoutBoxes;
		}];
	}] remoteExec ['call', 0, 'TG_JIP_loadoutBoxIcons_3D'];
	comment "
		Execute the following to remove the 3D markers:
		
		TG_LoadoutBoxes = [];
		publicVariable 'TG_LoadoutBoxes';
		remoteExec ['', 'TG_JIP_loadoutBoxIcons_3D'];
	";
};

[_object] call TG_fnc_initLoadoutHUD;
