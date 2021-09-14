function varargout = Individual_Project(varargin)
% INDIVIDUAL_PROJECT MATLAB code for Individual_Project.fig
%      INDIVIDUAL_PROJECT, by itself, creates a new INDIVIDUAL_PROJECT or raises the existing
%      singleton*.
%
%      H = INDIVIDUAL_PROJECT returns the handle to a new INDIVIDUAL_PROJECT or the handle to
%      the existing singleton*.
%
%      INDIVIDUAL_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDIVIDUAL_PROJECT.M with the given input arguments.
%
%      INDIVIDUAL_PROJECT('Property','Value',...) creates a new INDIVIDUAL_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Individual_Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Individual_Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Individual_Project

% Last Modified by GUIDE v2.5 13-Dec-2018 16:25:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Individual_Project_OpeningFcn, ...
                   'gui_OutputFcn',  @Individual_Project_OutputFcn, ...
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


% --- Executes just before Individual_Project is made visible.
function Individual_Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Individual_Project (see VARARGIN)

% Choose default command line output for Individual_Project
handles.output = hObject;
handles.bore = 0.0875;
handles.stroke = 0.083;
handles.ComRatio = 8;
handles.A = 4;
handles.QLHV = 44000;
handles.k = 1.35;
handles.Cv = 0.718;
handles.Cp = 1.004;
handles.R = 0.287;
handles.vol = 0;
handles.press = 0;
handles.temp = 300;
handles.Mi = 0.000289835;
handles.Ti = 300;
handles.Q = 1.5;
handles.Pe = 100;
handles.Pi = 50;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Individual_Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Individual_Project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bore_edit_Callback(hObject, eventdata, handles)
% hObject    handle to bore_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bore_edit as text
%        str2double(get(hObject,'String')) returns contents of bore_edit as a double

handles.bore = str2double(get(hObject,'String'))% Update bore when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function bore_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bore_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stroke_edit_Callback(hObject, eventdata, handles)
% hObject    handle to stroke_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stroke_edit as text
%        str2double(get(hObject,'String')) returns contents of stroke_edit as a double

handles.stroke = str2double(get(hObject,'String'))% Update stroke when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function stroke_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stroke_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ComRatio_edit_Callback(hObject, eventdata, handles)
% hObject    handle to ComRatio_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ComRatio_edit as text
%        str2double(get(hObject,'String')) returns contents of ComRatio_edit as a double

handles.ComRatio = str2double(get(hObject,'String'))% Update compression ratio when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function ComRatio_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ComRatio_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pi_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Pi_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pi_edit as text
%        str2double(get(hObject,'String')) returns contents of Pi_edit as a double

handles.Pi = str2double(get(hObject,'String'))% Update Pi when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Pi_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pi_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pe_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Pe_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pe_edit as text
%        str2double(get(hObject,'String')) returns contents of Pe_edit as a double

handles.Pe = str2double(get(hObject,'String'))% Update Pe when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Pe_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pe_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QLHV_edit_Callback(hObject, eventdata, handles)
% hObject    handle to QLHV_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QLHV_edit as text
%        str2double(get(hObject,'String')) returns contents of QLHV_edit as a double

handles.QLHV = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function QLHV_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QLHV_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_edit_Callback(hObject, eventdata, handles)
% hObject    handle to k_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_edit as text
%        str2double(get(hObject,'String')) returns contents of k_edit as a double

handles.k = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function k_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cv_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Cv_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cv_edit as text
%        str2double(get(hObject,'String')) returns contents of Cv_edit as a double

handles.Cv = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Cv_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cv_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cp_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Cp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cp_edit as text
%        str2double(get(hObject,'String')) returns contents of Cp_edit as a double

handles.Cp = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Cp_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_edit_Callback(hObject, eventdata, handles)
% hObject    handle to R_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R_edit as text
%        str2double(get(hObject,'String')) returns contents of R_edit as a double

handles.R = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function R_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Ti_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Ti_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ti_edit as text
%        str2double(get(hObject,'String')) returns contents of Ti_edit as a double

handles.Ti = str2double(get(hObject,'String'))% Update connecting rod length when user types it in.
% Update handles structure
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Ti_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ti_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Plot.
function Plot_Callback(hObject, eventdata, handles)
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Initialize variables
totVol = pi*handles.bore^2*handles.stroke/4;
ClearVol = totVol/handles.ComRatio;
A = handles.A;
ComRatio = handles.ComRatio;
Ti = handles.Ti;
k = handles.k;
Q = handles.Q;
Cv = handles.Cv;
R = handles.R;
Pe = handles.Pe;
Pi = handles.Pi;

% Weibe function initialize variables
thetaStart = 0;
thetaDur = 1;
n = 3;
a = 5;

% Create vector of zeros
crankAngle = (-180:1:540);
N = length(crankAngle);
vol = zeros(N,1);
temp = zeros(N,1);
temp(1) = Ti;
press = zeros(N,1);
press(1) = Pi;
mass = zeros(N,1);
weibe = zeros(N,1);
eta = zeros(N,1);
eta(1) = 0;

% This for loop fills the weibe vector
for i=1:N
    weibe(i) = 1-exp(-a*((crankAngle(i)-thetaStart)/thetaDur)^n);
end

% This for loop fills the eta vector
for i=2:N
    if crankAngle(i) > thetaStart
        eta(i) = weibe(i)-weibe(i-1);
    else
        eta(i) = 0;
    end
end

% This for loop fills the volume vector
for i=1:N
    vol(i) = (1+1/2*(ComRatio-1)*(A+1-cosd(crankAngle(i))-(A^2-sind(crankAngle(i))^2)^(1/2)))*ClearVol;
end
Mi = press(1)*vol(1)/(R*temp(1));
% This for loop fills the mass vector from -180 to 180 degrees
for i=1:361
    mass(i) = Mi;
end

% This for loop fills the temperature vector from -180 to 180 degrees
for i=2:361
    temp(i) = temp(i-1)*(vol(i-1)/vol(i))^(k-1)+eta(i)*Q/(mass(i)*Cv);
end

% This for loop fills the pressure vector from -180 to 180 degrees
for i=2:361
    press(i) = mass(i)*R*temp(i)/vol(i);
end

temp(362) = temp(361)*(Pe/press(361))^(k-1)/k;

% This for loop fills the temperature vector from 181 to 360 degrees
for i=363:541
    temp(i) = temp(362);
end

% This for loop fills the pressure vector from 181 to 360 degrees
for i=362:541
    press(i) = Pe;
end

% This for loop fills the pressure vector from 361 to N degrees
for i=542:N
    press(i) = Pi;
end

% This for loop fills the masse vector from 181 to N degrees
for i=361:N
    mass(i) = press(i)*vol(i)/(R*temp(i));
end

Mvol = max(vol);
mvol = min(vol);
Mpress = max(press);
mpress = min(press);

semilogy(vol,press,'r','Linewidth',2)
xlabel('Volume m^3')
ylabel('Pressure kPa')

% i = 1
% axes(handles.axes1)
% while i <= N
%     hold on
%     semilogy(vol(i:i+1),press(i:i+1),'r','Linewidth',2)
%     xlabel('Volume m^3')
%     ylabel('Pressure kPa')
%     pause(0.001)
%     i = i+1;
% end
