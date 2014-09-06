//#include "baseControl_Defines.hpp";
disableSerialization;

findDisplay 9050;
ctrlShow [9061, false];
ctrlShow [9060, false];
ctrlShow [9059, false];
ctrlShow [9058, false];
ctrlShow [9057, false];
ctrlShow [9056, false];
ctrlShow [9055, false];

{
	(_this displayCtrl _x) ctrlShow false;
}forEach [9061, 9060, 9059, 9058, 9057, 9056, 9055];