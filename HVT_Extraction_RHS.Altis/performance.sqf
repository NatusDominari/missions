/* 
Adjusts the client side performance parameters
so that every client has the same environment.
*/

params ["_view_distance"];

setViewDistance _view_distance;
setObjectViewDistance _view_distance;
setTerrainGrid 25;
setDetailMapBlendPars [_view_distance + 50, _view_distance + 100];