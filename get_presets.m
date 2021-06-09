function relax_values = get_presets

% SK Cord presets
FA_SK_cord_bssfp = [7,14,21,28,35,42,49,56,63,70];
FA_SK_cord_spgr = [2,4,6,8,10,12,14,16,18,20];
assignin('base','FA_SK_cord_bssfp', FA_SK_cord_bssfp)
assignin('base','FA_SK_cord_spgr', FA_SK_cord_spgr)

% Zhang et al. MT affect mcDESPOT
FA_Zhang_MT_bssfp = [6,11,16,22,30,38,46,54,62];
FA_Zhang_MT_spgr = [2,3,4,5,6.5,8,10,13,16];
assignin('base','FA_Zhang_MT_bssfp',FA_Zhang_MT_bssfp);
assignin('base','FA_Zhang_MT_spgr',FA_Zhang_MT_spgr);

% -------------------------------------------------
% Bouwan 2008 Neuroimage Spinal cord values
% T1 : N/A
% T2 : 70
% T2*: 46

% Stanisz et al. 2005 MRM
% -- Brain WM --
% T1: 1084
% T2: 69
%
% -- Brain GM --
% T1: 1820
% T2: 99
%
% -- Spinal Cord -- 
% T1: 993
% T2: 78
% -------------------------------------------------

% Presets [T1, T2, T2s]
% 1 = blank
% 2 = WM Brain
% 3 = GM Brain
% 4 = Cord
% Currently T2 and T2s is the same. From Stanisz MRM 2005

relax_values = [
    0, 0, 0;
    1084, 69, 69;
    1820, 99, 99;
    993, 70, 46.2];

end