function varargout = untitled1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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

function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
clear all;
global a;
a = arduino();

function clockwise_Callback(hObject, eventdata, handles)

while get(hObject,'Value')
global a;
writeDigitalPin(a, 'D8', 1);
writeDigitalPin(a, 'D9', 0);
writeDigitalPin(a, 'D10', 0);
writeDigitalPin(a, 'D11', 1);
pause(0.0002);
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9', 0);
writeDigitalPin(a, 'D10', 1);
writeDigitalPin(a, 'D11', 1);
pause(0.0002);
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9', 1);
writeDigitalPin(a, 'D10', 1);
writeDigitalPin(a, 'D11', 0);
pause(0.0002);
writeDigitalPin(a, 'D8', 1);
writeDigitalPin(a, 'D9', 1);
writeDigitalPin(a, 'D10', 0);
writeDigitalPin(a, 'D11', 0);
pause(0.0002);
end


function anticlockwise_Callback(hObject, eventdata, handles)


global a;
writeDigitalPin(a, 'D8', 1);
writeDigitalPin(a, 'D9', 1);
writeDigitalPin(a, 'D10', 0);
writeDigitalPin(a, 'D11', 0);
pause(0.0002);
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9', 1);
writeDigitalPin(a, 'D10', 1);
writeDigitalPin(a, 'D11', 0);
pause(0.0002);
writeDigitalPin(a, 'D8', 0);
writeDigitalPin(a, 'D9', 0);
writeDigitalPin(a, 'D10', 1);
writeDigitalPin(a, 'D11', 1);
pause(0.0002);
writeDigitalPin(a, 'D8', 1);
writeDigitalPin(a, 'D9', 0);
writeDigitalPin(a, 'D10', 0);
writeDigitalPin(a, 'D11', 1);
pause(0.0002);
end

