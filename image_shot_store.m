% 建立图片存储文件夹
if exist('image','dir')~= 7
    mkdir([cd,'/image']) % 与下一句一样
end
directory=[cd,'/image/']; %当前工作目录下文件夹

%定义一个监控界面
hf = figure('Units', 'Normalized', 'Menubar', 'None','NumberTitle', 'off', 'Name', '实时拍照系统');
ha = axes('Parent', hf, 'Units', 'Normalized', 'Position', [0.05 0.2 0.85 0.7]);
axis off
%定义三个按钮控件
hb1 = uicontrol('Parent', hf, 'Units', 'Normalized','Position', [0.2 0.05 0.15 0.1], 'String', '预览', 'Callback', ['imaqhwinfo;'...
    'obj = videoinput(''winvideo'');'...
    'set(obj, ''FramesPerTrigger'', 1);'...
    'set(obj, ''TriggerRepeat'', Inf);'...
    'objRes = get(obj, ''VideoResolution'');' ...
    'nBands = get(obj, ''NumberOfBands'');' ...
    'hImage = image(zeros(objRes(2), objRes(1), nBands));' ...
    'preview(obj, hImage);']);
hb2 = uicontrol('Parent', hf, 'Units', 'Normalized','Position', [0.45 0.05 0.15 0.1], 'String', '拍照', 'Callback', 'image_shot(1,directory,obj);');
hb3 = uicontrol('Parent', hf, 'Units', 'Normalized','Position', [0.7 0.05 0.15 0.1], 'String', '关闭', 'Callback', 'image_shot(0,directory,obj);');