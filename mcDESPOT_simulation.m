function varargout = mcDESPOT_simulation(varargin)
% MCDESPOT_SIMULATION MATLAB code for mcDESPOT_simulation.fig
%      MCDESPOT_SIMULATION, by itself, creates a new MCDESPOT_SIMULATION or raises the existing
%      singleton*.
%
%      H = MCDESPOT_SIMULATION returns the handle to a new MCDESPOT_SIMULATION or the handle to
%      the existing singleton*.
%
%      MCDESPOT_SIMULATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MCDESPOT_SIMULATION.M with the given input arguments.
%
%      MCDESPOT_SIMULATION('Property','Value',...) creates a new MCDESPOT_SIMULATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mcDESPOT_simulation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mcDESPOT_simulation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mcDESPOT_simulation

% Last Modified by GUIDE v2.5 26-Sep-2016 10:26:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mcDESPOT_simulation_OpeningFcn, ...
                   'gui_OutputFcn',  @mcDESPOT_simulation_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% To store data in the handles structure:
% handles.data=data;
% guidata(hObject, handles);



% --- Executes just before mcDESPOT_simulation is made visible.
function mcDESPOT_simulation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mcDESPOT_simulation (see VARARGIN)

% Choose default command line output for mcDESPOT_simulation
handles.output = hObject;

% Presets [T1, T2, T2s]
% 1 = blank
% 2 = WM Brain
% 3 = GM Brain
% 4 = Cord
% 5 = CSF
% Currently T2 and T2s is the same fopr brain. From Stanisz MRM 2005

comp_values = get_presets();

handles.comp_values = comp_values;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mcDESPOT_simulation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mcDESPOT_simulation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function T1_1_Callback(hObject, eventdata, handles)
% hObject    handle to T1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T1_1 as text
%        str2double(get(hObject,'String')) returns contents of T1_1 as a double
set(handles.presets_c1, 'Value', 6)

% --- Executes during object creation, after setting all properties.
function T1_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T2_1_Callback(hObject, eventdata, handles)
% hObject    handle to T2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T2_1 as text
%        str2double(get(hObject,'String')) returns contents of T2_1 as a double
set(handles.presets_c1, 'Value', 6)

% --- Executes during object creation, after setting all properties.
function T2_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T2s_1_Callback(hObject, eventdata, handles)
% hObject    handle to T2s_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T2s_1 as text
%        str2double(get(hObject,'String')) returns contents of T2s_1 as a double
set(handles.presets_c1, 'Value', 6)

% --- Executes during object creation, after setting all properties.
function T2s_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2s_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T1_2_Callback(hObject, eventdata, handles)
% hObject    handle to text111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text111 as text
%        str2double(get(hObject,'String')) returns contents of text111 as a double
set(handles.presets_c2, 'Value', 6)

% --- Executes during object creation, after setting all properties.
function text111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T2_2_Callback(hObject, eventdata, handles)
% hObject    handle to T2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T2_2 as text
%        str2double(get(hObject,'String')) returns contents of T2_2 as a double
set(handles.presets_c2, 'Value', 6)

% --- Executes during object creation, after setting all properties.
function T2_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T2s_2_Callback(hObject, eventdata, handles)
% hObject    handle to T2s_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T2s_2 as text
%        str2double(get(hObject,'String')) returns contents of T2s_2 as a double
set(handles.presets_c2, 'Value', 6)


% --- Executes during object creation, after setting all properties.
function T2s_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2s_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rad_2comp.
function rad_2comp_Callback(hObject, eventdata, handles)
% hObject    handle to rad_2comp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rad_2comp


% --- Executes on button press in push_plot.
function push_plot_Callback(hObject, eventdata, handles)
% hObject    handle to push_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
legend('off')
cla

% Alpha
a0_plot = str2num(get(handles.a0_plot,'String'));
a1_plot = str2num(get(handles.a1_plot,'String'));

% SPGR
TE_spgr = str2num(get(handles.TE_spgr,'String'));
TR_spgr = str2num(get(handles.TR_spgr,'String'));
alpha_spgr = linspace(deg2rad(a0_plot),deg2rad(a1_plot),100);

% bSSFP
TE_bssfp = str2num(get(handles.TE_bssfp,'String'));
TR_bssfp = str2num(get(handles.TR_bssfp,'String'));
alpha_bssfp = linspace(deg2rad(a0_plot),deg2rad(a1_plot),100);

hold on
% Component 1
T1_1 = str2num(get(handles.T1_1,'String'));
T2_1 = str2num(get(handles.T2_1,'String'));
T2s_1 = str2num(get(handles.T2s_1,'String'));
[spgr_c1, spgr_optangle_1, spgr_optangle_2] = spgr(TR_spgr, TE_spgr, T1_1, T2s_1, alpha_spgr);
bssfp_c1 = bssfp(TR_bssfp, TE_bssfp, T1_1, T2_1, alpha_bssfp);

set(handles.spgr_optangle_1,'String', num2str(rad2deg(spgr_optangle_1)))
set(handles.spgr_optangle_2,'String', num2str(rad2deg(spgr_optangle_2)))

if get(handles.SPGR1_plotbox,'Value')
    plot(rad2deg(alpha_spgr), spgr_c1, '-r', 'DisplayName', 'SPGR 1')
end
if get(handles.bSSFP1_plotbox,'Value')
    plot(rad2deg(alpha_bssfp), bssfp_c1, '-b', 'DisplayName', 'bSSFP 1')
end

% Component 2
T1_2 = str2num(get(handles.T1_2,'String'));
T2_2 = str2num(get(handles.T2_2,'String'));
T2s_2 = str2num(get(handles.T2s_2,'String'));

if get(handles.SPGR2_plotbox,'Value')
    spgr_c2 = spgr(TR_spgr, TE_spgr, T1_2, T2s_2, alpha_spgr);
    plot(rad2deg(alpha_spgr), spgr_c2, '--r', 'DisplayName', 'SPGR 2')
end
if get(handles.bSSFP2_plotbox,'Value')
    bssfp_c2 = bssfp(TR_bssfp, TE_bssfp, T1_2, T2_2, alpha_bssfp);
    plot(rad2deg(alpha_bssfp), bssfp_c2, '--b', 'DisplayName', 'bSSFP 2')
end

% Image contrast
if get(handles.SPGR_contrast_plotbox, 'Value')
    SPGR_contrast = spgr_c1 - spgr_c2;
    plot(rad2deg(alpha_spgr), SPGR_contrast, '--k', 'DisplayName', 'SPGR Contrast')
end
if get(handles.bSSFP_contrast_plotbox, 'Value')
    bSSFP_contrast = bssfp_c1 - bssfp_c2;
    plot(rad2deg(alpha_bssfp), bSSFP_contrast, '-k', 'DisplayName', 'bSSFP Contrast')
end

% Additional sampling scheme
if get(handles.cbox_wspace_spgr,'Value')
    wspace_vars = get(handles.wspace_spgr_alpha,'String');
    i = get(handles.wspace_spgr_alpha,'Value');
    alpha_samp = evalin('base', wspace_vars{i});
    spgr_sample = spgr(TR_spgr, TE_spgr, T1_1, T2s_1, deg2rad(alpha_samp));
    plot(alpha_samp, spgr_sample, 'xr', 'DisplayName', 'SPGR Sample')
end

if get(handles.cbox_wspace_bssfp,'Value')
    wspace_vars = get(handles.wspace_bssfp_alpha,'String');
    i = get(handles.wspace_bssfp_alpha,'Value');
    alpha_samp = evalin('base',wspace_vars{i});
    bssfp_samp = bssfp(TR_bssfp, TE_bssfp, T1_1, T2_1, deg2rad(alpha_samp));
    plot(alpha_samp, bssfp_samp, 'xb', 'DisplayName', 'bSSFP Sample')
end

legend(gca, 'show')

plot(rad2deg(spgr_optangle_1),spgr(TR_spgr, TE_spgr, T1_1, T2s_1, spgr_optangle_1), 'ro',...
    'DisplayName', 'Opt FA1');
plot(rad2deg(spgr_optangle_2),spgr(TR_spgr, TE_spgr, T1_1, T2s_1, spgr_optangle_2), 'ro',...
    'DisplayName', 'Opt FA2');

xlabel('Flip angle [deg]')
ylabel('Signal [a.u.]')
    


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in presets_c1.
function presets_c1_Callback(hObject, eventdata, handles)
% hObject    handle to presets_c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns presets_c1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from presets_c1
i = ceil(get(handles.presets_c1, 'Value'));
if i < 5
    set(handles.T1_1, 'String', handles.comp_values(i,1))
    set(handles.T2_1, 'String', handles.comp_values(i,2))
    set(handles.T2s_1, 'String', handles.comp_values(i,3))
end

% --- Executes during object creation, after setting all properties.
function presets_c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to presets_c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in presets_c2.
function presets_c2_Callback(hObject, eventdata, handles)
% hObject    handle to presets_c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns presets_c2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from presets_c2
i = ceil(get(handles.presets_c2, 'Value'));
if i < 5
    set(handles.T1_2, 'String', handles.comp_values(i,1))
    set(handles.T2_2, 'String', handles.comp_values(i,2))
    set(handles.T2s_2, 'String', handles.comp_values(i,3))
end

% --- Executes during object creation, after setting all properties.
function presets_c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to presets_c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function TE_spgr_Callback(hObject, eventdata, handles)
% hObject    handle to TE_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TE_spgr as text
%        str2double(get(hObject,'String')) returns contents of TE_spgr as a double

% --- Executes during object creation, after setting all properties.
function TE_spgr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TE_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function TR_spgr_Callback(hObject, eventdata, handles)
% hObject    handle to TR_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TR_spgr as text
%        str2double(get(hObject,'String')) returns contents of TR_spgr as a double


% --- Executes during object creation, after setting all properties.
function TR_spgr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TR_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function T1_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a0_spgr_Callback(hObject, eventdata, handles)
% hObject    handle to a0_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a0_spgr as text
%        str2double(get(hObject,'String')) returns contents of a0_spgr as a double


% --- Executes during object creation, after setting all properties.
function a0_spgr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a0_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a1_spgr_Callback(hObject, eventdata, handles)
% hObject    handle to a1_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1_spgr as text
%        str2double(get(hObject,'String')) returns contents of a1_spgr as a double


% --- Executes during object creation, after setting all properties.
function a1_spgr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TE_bssfp_Callback(hObject, eventdata, handles)
% hObject    handle to TE_bssfp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TE_bssfp as text
%        str2double(get(hObject,'String')) returns contents of TE_bssfp as a double


% --- Executes during object creation, after setting all properties.
function TE_bssfp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TE_bssfp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR_bssfp_Callback(hObject, eventdata, handles)
% hObject    handle to TR_bssfp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TR_bssfp as text
%        str2double(get(hObject,'String')) returns contents of TR_bssfp as a double
TE = str2num(get(handles.TR_bssfp, 'String'))/2;
set(handles.TE_bssfp, 'String', TE);

% --- Executes during object creation, after setting all properties.
function TR_bssfp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TR_bssfp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function a0_plot_Callback(hObject, eventdata, handles)
% hObject    handle to a0_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a0_plot as text
%        str2double(get(hObject,'String')) returns contents of a0_plot as a double


% --- Executes during object creation, after setting all properties.
function a0_plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a0_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_plot_Callback(hObject, eventdata, handles)
% hObject    handle to a1_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1_plot as text
%        str2double(get(hObject,'String')) returns contents of a1_plot as a double


% --- Executes during object creation, after setting all properties.
function a1_plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SPGR1_plotbox.
function SPGR1_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to SPGR1_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SPGR1_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on button press in SPGR2_plotbox.
function SPGR2_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to SPGR2_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SPGR2_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on button press in bSSFP1_plotbox.
function bSSFP1_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to bSSFP1_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bSSFP1_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on button press in bSSFP2_plotbox.
function bSSFP2_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to bSSFP2_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bSSFP2_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on button press in bSSFP_contrast_plotbox.
function bSSFP_contrast_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to bSSFP_contrast_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bSSFP_contrast_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on button press in SPGR_contrast_plotbox.
function SPGR_contrast_plotbox_Callback(hObject, eventdata, handles)
% hObject    handle to SPGR_contrast_plotbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of SPGR_contrast_plotbox
push_plot_Callback(hObject, eventdata, handles)


% --- Executes on selection change in wspace_spgr_alpha.
function wspace_spgr_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to wspace_spgr_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wspace_spgr_alpha contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wspace_spgr_alpha


% --- Executes during object creation, after setting all properties.
function wspace_spgr_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wspace_spgr_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cbox_wspace_spgr.
function cbox_wspace_spgr_Callback(hObject, eventdata, handles)
% hObject    handle to cbox_wspace_spgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbox_wspace_spgr
vars = evalin('base','who');
set(handles.wspace_spgr_alpha,'String',vars);

% --- Executes on button press in cbox_wspace_bssfp.
function cbox_wspace_bssfp_Callback(hObject, eventdata, handles)
% hObject    handle to cbox_wspace_bssfp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbox_wspace_bssfp
vars = evalin('base','who');
set(handles.wspace_bssfp_alpha,'String',vars);

% --- Executes on selection change in wspace_bssfp_alpha.
function wspace_bssfp_alpha_Callback(hObject, eventdata, handles)
% hObject    handle to wspace_bssfp_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wspace_bssfp_alpha contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wspace_bssfp_alpha


% --- Executes during object creation, after setting all properties.
function wspace_bssfp_alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wspace_bssfp_alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function file_menu_Callback(hObject, eventdata, handles)
% hObject    handle to file_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_menu_Callback(hObject, eventdata, handles)
% hObject    handle to about_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_eq_Callback(hObject, eventdata, handles)
% hObject    handle to about_eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_relax_Callback(hObject, eventdata, handles)
% hObject    handle to about_relax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in acq_presets.
function acq_presets_Callback(hObject, eventdata, handles)
% hObject    handle to acq_presets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns acq_presets contents as cell array
%        contents{get(hObject,'Value')} returns selected item from acq_presets

aq_i = get(handles.acq_presets, 'Value');
if aq_i == 2
    set(handles.TE_spgr, 'String', '2.2')
    set(handles.TR_spgr, 'String', '5')
    set(handles.TR_bssfp, 'String', '3.5')
elseif aq_i == 3
    set(handles.TE_spgr, 'String', '1.9')
    set(handles.TR_spgr, 'String', '6.3')
    set(handles.TR_bssfp, 'String', '7')
end

% --- Executes during object creation, after setting all properties.
function acq_presets_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acq_presets (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
