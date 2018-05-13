function colorImg = IdMap2colorMap(IdMaps,colorPalette)

if ~exist('colorPalette','var')
    colorPalette = [0 0 0
                  255	187	120
                174	199	232
                31	119	180
                255	127	14
                44	160	44
                152	223	138
                214	39	40
                255	152	150
                148	103	189
                197	176	213
                140	86	75
                196	156	148
                227	119	194
                247	182	210
                127	127	127
                199	199	199
                188	189	34
                219	219	141
                23	190	207
                158	218	229
                57	59	121
                82	84	163
                107	110	207
                156	158	222
                99	121	57
                140	162	82
                181	207	107
                206	219	156
                140	109	49
                189	158	57
                231	186	82
                231	203	148
                132	60	57
                173	73	74
                214	97	107
                231	150	156
                123	65	115
                165	81	148
                206	109	189
                222	158	214]/255;
end
colorPalette = [colorPalette;colorPalette*0.5];
colorImg = reshape(colorPalette(IdMaps+1,:),size(IdMaps,1),size(IdMaps,2),[]);
%{
for i = 1:length(nyu40class)
    hold on 
    plot(1,i, '-*', 'LineWidth',20,'Color',colorPalette(i+1,:))
    
end
legend(nyu40class,'FontSize',20)
%}
end