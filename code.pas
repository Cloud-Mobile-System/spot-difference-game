var
svy1frm,svy2frm,svy3frm,svy4frm:TclGameForm;
lyt1,lyt2,lyt3,lyt4,lyt5,lyt6,lyt7,lyt8,lyt9,lyt10,lyt11,lyt12,lyt13,lyt14,lyt15,lyt16 : TclLayout;
frk1btn,frk2btn,frk3btn,frk4btn,frk5btn,frk6btn,frk7btn,frk8btn,frk9btn,frk10btn,frk11btn,frk12btn,frk13btn,frk14btn,frk15btn,frk16btn,frk17btn,frk18btn,
frk19btn,frk20btn,frk21btn,frk22btn,frk23btn,frk24btn,frk25btn,frk26btn,frk27btn,frk28btn,frk29btn,frk30btn,frk31btn,frk32btn,frk33btn,frk34btn,frk35btn,frk36btn,
frk37btn,frk38btn,frk39btn,frk40btn,frk41btn,frk42btn,frk43btn,frk44btn,
sayfagcsbtn,geribtn,sayfagcsbtn2,geribtn2,sayfagcsbtn3,geribtn3,basadnbtn,geribtn4:TClProButton;
rsm4_1,rsm4_2,rsm5_1,rsm5_2,rsm6_1,rsm6_2,rsm7_1,rsm7_2: TClProImage;
bslklbl,bslklbl2,bslklbl3,bslklbl4,blglbl,blglbl2,blglbl3,blglbl4,symlbl,symlbl2,symlbl3,symlbl4: TClProLabel;
PnlBody,PnlBody2,PnlBody3,PnlBody4:TclProPanel;
VSBoxBody,VSBoxBody2,VSBoxBody3,VSBoxBody4:TCLVertScrollBox;
sym,sym2,sym3,sym4:Integer;
frkses,kazanmases:Single;

Procedure clmsyanasayfa
begin
TClProButton(svy1frm.clFindComponent('BtnGoBack')).Click;
end;

Procedure frksesprcdr
  begin
    svy1frm.PlayGameSound(frkses);
  End;

Procedure kazanmasesprcdr
  begin
    svy1frm.PlayGameSound(kazanmases);
  End;

procedure btnenbld1
begin
  if sym=4 then
  begin
  sayfagcsbtn.Enabled:=True;
  blglbl.Visible:=True;
  kazanmasesprcdr;
  end;
end;

procedure btnenbld2
begin
  if sym2=5 then
  begin
  sayfagcsbtn2.Enabled:=True;
  blglbl2.Visible:=True;
  kazanmasesprcdr;
  end;
end;

procedure btnenbld3
begin
  if sym3=6 then
  begin
  sayfagcsbtn3.Enabled:=True;
  blglbl3.Visible:=True;
  kazanmasesprcdr;
  end;
end;

procedure btnenbld4
begin
  if sym4=7 then
  begin
  blglbl4.Visible:=True;
  basadnbtn.Visible:=True;
  kazanmasesprcdr;
  end;
end;
  
  procedure fark1
begin
sym:=sym+1;
btnenbld1;
clComponent.SetupComponent(frk1btn,'{"Align" : "Center","Width":55,"Height":23,
"MarginTop" : 195,"MarginRight" : 265,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk1btn.Enabled:=False;
clComponent.SetupComponent(frk2btn,'{"Align" : "Center","Width":55,"Height":23,
"MarginTop" : 175,"MarginRight" : 265,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk2btn.Enabled:=False;
symlbl.Text:= IntToStr(sym)+'/4';
frksesprcdr;
end

procedure fark2
begin
sym:=sym+1;
btnenbld1;
clComponent.SetupComponent(frk3btn,'{"Align" : "Center","Width":27,"Height":27,
"MarginTop" : 38,"MarginRight" : 235,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk3btn.Enabled:=False;
clComponent.SetupComponent(frk4btn,'{"Align" : "Center","Width":27,"Height":27,
"MarginTop" : 20,"MarginRight" : 235,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk4btn.Enabled:=False;
symlbl.Text:= IntToStr(sym)+'/4';
frksesprcdr;
end;

procedure fark3
begin
sym:=sym+1;
btnenbld1;
clComponent.SetupComponent(frk5btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginTop" : 78,"MarginLeft" : 170,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk5btn.Enabled:=False;
clComponent.SetupComponent(frk6btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginTop" : 58,"MarginLeft" : 170,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk6btn.Enabled:=False;
symlbl.Text:= IntToStr(sym)+'/4';
frksesprcdr;
end;

procedure fark4
begin
sym:=sym+1;
btnenbld1;
clComponent.SetupComponent(frk7btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginBottom" : 32,"MarginLeft" : 188,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk7btn.Enabled:=False;
clComponent.SetupComponent(frk8btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginBottom" : 52,"MarginLeft" : 188,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk8btn.Enabled:=False;
symlbl.Text:= IntToStr(sym)+'/4';
frksesprcdr;
end;

procedure blm1;
begin
svy1frm := TclGameForm.Create(Self);
svy1frm.SetFormColor('#FAEBD7','',clGNone);
sym:=0;

svy1frm.AddGameAssetFromUrl('https://clomosy.com/demos/true.wav');
frkses := svy1frm.RegisterSound('true.wav');
svy1frm.SoundIsActive:=True;

svy1frm.AddGameAssetFromUrl('https://clomosy.com/demos/win.wav');
kazanmases := svy1frm.RegisterSound('win.wav');
svy1frm.SoundIsActive:=True;

PnlBody := svy1frm.AddNewProPanel(svy1frm,'PnlBody');
clComponent.SetupComponent(PnlBody,'{"Align":"Client",
"MarginTop":5,
"MarginLeft":10,
"MarginRight":10,
"MarginBottom":5,
"BackgroundColor":"null","RoundHeight":10,"RoundWidth":10}');

VSBoxBody := svy1frm.AddNewVertScrollBox(PnlBody,'VSBoxBody');
VSBoxBody.Align := alClient;

lyt1 := svy1frm.AddNewLayout(VSBoxBody,'lyt1');
lyt1.Align:=alMostTop
lyt1.Height := 30;

lyt2 := svy1frm.AddNewLayout(VSBoxBody,'lyt2');
lyt2.Align:=alTop;
lyt2.Height := 330;

lyt3 := svy1frm.AddNewLayout(VSBoxBody,'lyt3');
lyt3.Align:=alTop
lyt3.Height := 330;

lyt4 := svy1frm.AddNewLayout(VSBoxBody,'lyt4');
lyt4.Align:=alTop
lyt4.Height := 58;

bslklbl := svy1frm.AddNewProLabel(lyt1,'bslklbl',' 4 FARKI BUL ');
clComponent.SetupComponent(bslklbl,'{"Align" : "Top","Width":40,"Height":23,"MarginTop":10,"TextColor":"#008080","TextSize":20,"TextBold":"yes",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

rsm4_1 := svy1frm.AddNewProImage(lyt2,'rsm4_1');
clComponent.SetupComponent(rsm4_1,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev1_1.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":50}');

rsm4_2 := svy1frm.AddNewProImage(lyt3,'rsm4_2');
clComponent.SetupComponent(rsm4_2,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev1_2.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":70}');

symlbl := svy1frm.AddNewProLabel(lyt4,'symlbl','0/4');
clComponent.SetupComponent(symlbl,'{"Align" : "Center","Width":100,"Height":25,"MarginBottom":95,"BackgroundColor":"#FFF5EE",
"RoundHeight":6,"RoundWidth":6,"BorderColor":"#008080","BorderWidth":3,"TextSize":20,"TextBold":"yes","TextColor":"#008080",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

blglbl := svy1frm.AddNewProLabel(lyt4,'blglbl','   TEBRİKLER HEPSİNİ BULDUNUZ   ');
clComponent.SetupComponent(blglbl,'{"Align" : "center","BackgroundColor":"#FFF5EE","TextColor":"#008080",
"Width":320,"Height":28,"MarginBottom":40,"TextSize":20,"TextBold":"yes","RoundHeight":10,"RoundWidth":10,
"BorderColor":"#008080","BorderWidth":3,"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');
blglbl.Visible:=False;

sayfagcsbtn:= svy1frm.AddNewProButton(lyt4,'sayfagcsbtn','');
clComponent.SetupComponent(sayfagcsbtn,'{"Align" : "Bottom","Width":80,"Height":60,
"MarginBottom":7,"MarginLeft":70,
"ImgUrl":"https://img.icons8.com/flat-round/100/circled-right.png"}');
sayfagcsbtn.Enabled:=False;

geribtn:= svy1frm.AddNewProButton(svy1frm,'geribtn','');
clComponent.SetupComponent(geribtn,'{"Align" : "None","Width":60,"Height":40,
"ImgUrl":"https://img.icons8.com/flat-round/64/circled-left.png"}');
geribtn.Position.X:=8;
geribtn.Position.Y:=5;
svy1frm.AddNewEvent(geribtn,tbeOnClick,'clmsyanasayfa');

frk1btn := svy1frm.AddNewProButton(lyt2,'frk1btn','');
clComponent.SetupComponent(frk1btn,'{"Align" : "Center","Width":55,"Height":23,
"MarginTop" : 195,"MarginRight" : 265}');
svy1frm.AddNewEvent(frk1btn,tbeOnClick,'fark1');

frk2btn := svy1frm.AddNewProButton(lyt3,'frk2btn','');
clComponent.SetupComponent(frk2btn,'{"Align" : "Center","Width":55,"Height":23,
"MarginTop" : 175,"MarginRight" : 265}');
svy1frm.AddNewEvent(frk2btn,tbeOnClick,'fark1');

frk3btn := svy1frm.AddNewProButton(lyt2,'frk3btn','');
clComponent.SetupComponent(frk3btn,'{"Align" : "Center","Width":27,"Height":27,
"MarginTop" : 38,"MarginRight" : 235}');
svy1frm.AddNewEvent(frk3btn,tbeOnClick,'fark2');

frk4btn := svy1frm.AddNewProButton(lyt3,'frk4btn','');
clComponent.SetupComponent(frk4btn,'{"Align" : "Center","Width":27,"Height":27,
"MarginTop" : 20,"MarginRight" : 235}');
svy1frm.AddNewEvent(frk4btn,tbeOnClick,'fark2');

frk5btn := svy1frm.AddNewProButton(lyt2,'frk5btn','');
clComponent.SetupComponent(frk5btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginTop" : 78,"MarginLeft" : 170}');
svy1frm.AddNewEvent(frk5btn,tbeOnClick,'fark3');

frk6btn := svy1frm.AddNewProButton(lyt3,'frk6btn','');
clComponent.SetupComponent(frk6btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginTop" : 58,"MarginLeft" : 170}');
svy1frm.AddNewEvent(frk6btn,tbeOnClick,'fark3');

frk7btn := svy1frm.AddNewProButton(lyt2,'frk7btn','');
clComponent.SetupComponent(frk7btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginBottom" : 32,"MarginLeft" : 188}');
svy1frm.AddNewEvent(frk7btn,tbeOnClick,'fark4');

frk8btn := svy1frm.AddNewProButton(lyt3,'frk8btn','');
clComponent.SetupComponent(frk8btn,'{"Align" : "Center","Width":20,"Height":25,
"MarginBottom" : 52,"MarginLeft" : 188}');
svy1frm.AddNewEvent(frk8btn,tbeOnClick,'fark4');

svy1frm.AddNewEvent(sayfagcsbtn,tbeOnClick,'blm2');
svy1frm.Run;
end;

procedure fark5
begin
sym2:=sym2+1;
btnenbld2;
clComponent.SetupComponent(frk9btn,'{"Align" : "Center","Width":45,"Height":90,
"MarginTop" : 115,"MarginRight" : 310,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk9btn.Enabled:=False;
clComponent.SetupComponent(frk10btn,'{"Align" : "Center","Width":45,"Height":90,
"MarginTop" : 90,"MarginRight" : 310,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk10btn.Enabled:=False;
symlbl2.Text:= IntToStr(sym2)+'/5 ';
frksesprcdr;
end;

procedure fark6
begin
sym2:=sym2+1;
btnenbld2;
clComponent.SetupComponent(frk11btn,'{"Align" : "Center","Width":50,"Height":30,
"MarginTop" : 40,"MarginRight" : 90,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk11btn.Enabled:=False;
clComponent.SetupComponent(frk12btn,'{"Align" : "Center","Width":50,"Height":30,
"MarginTop" : 20,"MarginRight" : 90,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk12btn.Enabled:=False;
symlbl2.Text:= IntToStr(sym2)+'/5';
frksesprcdr;
end;

procedure fark7
begin
sym2:=sym2+1;
btnenbld2;
clComponent.SetupComponent(frk13btn,'{"Align" : "Center","Width":45,"Height":30,
"MarginTop" : 95,"MarginRight" :120,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk13btn.Enabled:=False;
clComponent.SetupComponent(frk14btn,'{"Align" : "Center","Width":45,"Height":30,
"MarginTop" : 75,"MarginRight" : 120,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk14btn.Enabled:=False;
symlbl2.Text:= IntToStr(sym2)+'/5';
frksesprcdr;
end;

procedure fark8
begin
sym2:=sym2+1;
btnenbld2;
clComponent.SetupComponent(frk15btn,'{"Align" : "Center","Width":65,"Height":30,
"MarginBottom" : 172,"MarginLeft" : 120,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk15btn.Enabled:=False;
clComponent.SetupComponent(frk16btn,'{"Align" : "Center","Width":65,"Height":30,
"MarginBottom" : 192,"MarginLeft" : 120,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk16btn.Enabled:=False;
symlbl2.Text:= IntToStr(sym2)+'/5';
frksesprcdr;
end;

procedure fark9
begin
sym2:=sym2+1;
btnenbld2;
clComponent.SetupComponent(frk17btn,'{"Align" : "Center","Width":45,"Height":90,
"MarginBottom" : 8,"MarginLeft" : 300,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk17btn.Enabled:=False;
clComponent.SetupComponent(frk18btn,'{"Align" : "Center","Width":45,"Height":90,
"MarginBottom" : 28,"MarginLeft" : 300,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk18btn.Enabled:=False;
symlbl2.Text:= IntToStr(sym2)+'/5';
frksesprcdr;
end;

procedure blm2
begin
svy2frm := TclGameForm.Create(Self);
svy2frm.SetFormColor('#FAEBD7','',clGNone);
sym2:=0;

svy2frm.AddGameAssetFromUrl('https://clomosy.com/demos/true.wav');
frkses := svy2frm.RegisterSound('true.wav');
svy2frm.SoundIsActive:=True;

svy2frm.AddGameAssetFromUrl('https://clomosy.com/demos/win.wav');
kazanmases := svy2frm.RegisterSound('win.wav');
svy2frm.SoundIsActive:=True;

PnlBody2 := svy2frm.AddNewProPanel(svy2frm,'PnlBody2');
clComponent.SetupComponent(PnlBody2,'{"Align":"Client",
"MarginTop":5,
"MarginLeft":10,
"MarginRight":10,
"MarginBottom":5,
"BackgroundColor":"null","RoundHeight":10,"RoundWidth":10}');

VSBoxBody2 := svy2frm.AddNewVertScrollBox(PnlBody2,'VSBoxBody2');
VSBoxBody2.Align := alClient;

lyt5 := svy2frm.AddNewLayout(VSBoxBody2,'lyt5');
lyt5.Align:=alMostTop
lyt5.Height := 30;

lyt6 := svy2frm.AddNewLayout(VSBoxBody2,'lyt6');
lyt6.Align:=alTop;
lyt6.Height := 330;

lyt7 := svy2frm.AddNewLayout(VSBoxBody2,'lyt7');
lyt7.Align:=alTop
lyt7.Height := 330;

lyt8 := svy2frm.AddNewLayout(VSBoxBody2,'lyt8');
lyt8.Align:=alTop
lyt8.Height := 58;

bslklbl2 := svy2frm.AddNewProLabel(lyt5,'bslklbl2',' 5 FARKI BUL ');
clComponent.SetupComponent(bslklbl2,'{"Align" : "Top","Width":40,"Height":23,"MarginTop":10,"TextColor":"#008080","TextSize":20,"TextBold":"yes",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

rsm5_1 := svy2frm.AddNewProImage(lyt6,'rsm5_1');
clComponent.SetupComponent(rsm5_1,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev2_1.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":50}');

rsm5_2 := svy2frm.AddNewProImage(lyt7,'rsm5_2');
clComponent.SetupComponent(rsm5_2,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev2_2.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":70}');

symlbl2 := svy2frm.AddNewProLabel(lyt8,'symlbl2','0/5');
clComponent.SetupComponent(symlbl2,'{"Align" : "Center","Width":100,"Height":25,"MarginBottom":95,"BackgroundColor":"#FFF5EE",
"RoundHeight":6,"RoundWidth":6,"BorderColor":"#008080","BorderWidth":3,"TextSize":20,"TextBold":"yes","TextColor":"#008080",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

blglbl2 := svy2frm.AddNewProLabel(lyt8,'blglbl2','   TEBRİKLER HEPSİNİ BULDUNUZ   ');
clComponent.SetupComponent(blglbl2,'{"Align" : "center","BackgroundColor":"#FFF5EE","TextColor":"#008080",
"Width":320,"Height":28,"MarginBottom":40,"TextSize":20,"TextBold":"yes","RoundHeight":10,"RoundWidth":10,
"BorderColor":"#008080","BorderWidth":3,"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');
blglbl2.Visible:=False;

sayfagcsbtn2:= svy2frm.AddNewProButton(lyt8,'sayfagcsbtn2','');
clComponent.SetupComponent(sayfagcsbtn2,'{"Align" : "Bottom","Width":80,"Height":60,
"MarginBottom":7,"MarginLeft":70,
"ImgUrl":"https://img.icons8.com/flat-round/100/circled-right.png"}');
sayfagcsbtn2.Enabled:=False;

geribtn2:= svy2frm.AddNewProButton(svy2frm,'geribtn2','');
clComponent.SetupComponent(geribtn2,'{"Align" : "None","Width":60,"Height":40,
"ImgUrl":"https://img.icons8.com/flat-round/64/circled-left.png"}');
geribtn2.Position.X:=8;
geribtn2.Position.Y:=5;
svy2frm.AddNewEvent(geribtn2,tbeOnClick,'blm1');

frk9btn := svy2frm.AddNewProButton(lyt6,'frk9btn','');
clComponent.SetupComponent(frk9btn,'{"Align" : "Center","Width":35,"Height":90,
"MarginTop" : 115,"MarginRight" : 310}');
svy2frm.AddNewEvent(frk9btn,tbeOnClick,'fark5');

frk10btn := svy2frm.AddNewProButton(lyt7,'frk10btn','');
clComponent.SetupComponent(frk10btn,'{"Align" : "Center","Width":35,"Height":90,
"MarginTop" : 90,"MarginRight" : 310}');
svy2frm.AddNewEvent(frk10btn,tbeOnClick,'fark5');

frk11btn := svy2frm.AddNewProButton(lyt6,'frk11btn','');
clComponent.SetupComponent(frk11btn,'{"Align" : "Center","Width":40,"Height":25,
"MarginTop" : 40,"MarginRight" : 90}');
svy2frm.AddNewEvent(frk11btn,tbeOnClick,'fark6');

frk12btn := svy2frm.AddNewProButton(lyt7,'frk12btn','');
clComponent.SetupComponent(frk12btn,'{"Align" : "Center","Width":40,"Height":25,
"MarginTop" : 20,"MarginRight" : 90}');
svy2frm.AddNewEvent(frk12btn,tbeOnClick,'fark6');

frk13btn := svy2frm.AddNewProButton(lyt6,'frk13btn','');
clComponent.SetupComponent(frk13btn,'{"Align" : "Center","Width":35,"Height":25,
"MarginTop" : 95,"MarginRight" :120}');
svy2frm.AddNewEvent(frk13btn,tbeOnClick,'fark7');

frk14btn := svy2frm.AddNewProButton(lyt7,'frk14btn','');
clComponent.SetupComponent(frk14btn,'{"Align" : "Center","Width":35,"Height":25,
"MarginTop" : 75,"MarginRight" : 120}');
svy2frm.AddNewEvent(frk14btn,tbeOnClick,'fark7');

frk15btn := svy2frm.AddNewProButton(lyt6,'frk15btn','');
clComponent.SetupComponent(frk15btn,'{"Align" : "Center","Width":55,"Height":18,
"MarginBottom" : 172,"MarginLeft" : 120}');
svy2frm.AddNewEvent(frk15btn,tbeOnClick,'fark8');

frk16btn := svy2frm.AddNewProButton(lyt7,'frk16btn','');
clComponent.SetupComponent(frk16btn,'{"Align" : "Center","Width":55,"Height":18,
"MarginBottom" : 192,"MarginLeft" : 120}');
svy2frm.AddNewEvent(frk16btn,tbeOnClick,'fark8');

frk17btn := svy2frm.AddNewProButton(lyt6,'frk17btn','');
clComponent.SetupComponent(frk17btn,'{"Align" : "Center","Width":20,"Height":80,
"MarginBottom" : 8,"MarginLeft" : 300}');
svy2frm.AddNewEvent(frk17btn,tbeOnClick,'fark9');

frk18btn := svy2frm.AddNewProButton(lyt7,'frk18btn','');
clComponent.SetupComponent(frk18btn,'{"Align" : "Center","Width":20,"Height":80,
"MarginBottom" : 28,"MarginLeft" : 300}');
svy2frm.AddNewEvent(frk18btn,tbeOnClick,'fark9');

svy2frm.AddNewEvent(sayfagcsbtn2,tbeOnClick,'blm3');

svy2frm.Run;
end;

procedure fark10
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk19btn,'{"Align" : "Center","Width":15,"Height":100,
"MarginTop" : 70,"MarginRight" : 298,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk19btn.Enabled:=False;
clComponent.SetupComponent(frk20btn,'{"Align" : "Center","Width":15,"Height":100,
"MarginTop" : 50,"MarginRight" : 298,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk20btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure fark11
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk21btn,'{"Align" : "Center","Width":50,"Height":30,
"MarginBottom" : 82,"MarginRight" : 255,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk21btn.Enabled:=False;
clComponent.SetupComponent(frk22btn,'{"Align" : "Center","Width":50,"Height":30,
"MarginBottom" : 102,"MarginRight" : 255,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk22btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure fark12
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk23btn,'{"Align" : "Center","Width":45,"Height":18,
"MarginBottom" : 130,"MarginRight" :175,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk23btn.Enabled:=False;
clComponent.SetupComponent(frk24btn,'{"Align" : "Center","Width":45,"Height":18,
"MarginBottom" : 152,"MarginRight" : 175,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk24btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure fark13
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk25btn,'{"Align" : "Center","Width":40,"Height":22,
"MarginBottom" : 36,"MarginRight" : 110,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk25btn.Enabled:=False;
clComponent.SetupComponent(frk26btn,'{"Align" : "Center","Width":40,"Height":22,
"MarginBottom" : 56,"MarginRight" : 110,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk26btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure fark14
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk27btn,'{"Align" : "Center","Width":48,"Height":55,
"MarginTop" : 83,"MarginLeft" : 34,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk27btn.Enabled:=False;
clComponent.SetupComponent(frk28btn,'{"Align" : "Center","Width":48,"Height":55,
"MarginTop" : 63,"MarginLeft" : 34,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk28btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure fark15
begin
sym3:=sym3+1;
btnenbld3;
clComponent.SetupComponent(frk29btn,'{"Align" : "Center","Width":50,"Height":25,
"MarginBottom" : 65,"MarginLeft" : 263,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk29btn.Enabled:=False;
clComponent.SetupComponent(frk30btn,'{"Align" : "Center","Width":50,"Height":25,
"MarginBottom" : 85,"MarginLeft" : 263,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk30btn.Enabled:=False;
symlbl3.Text:= IntToStr(sym3)+'/6';
frksesprcdr;
end;

procedure blm3
begin
svy3frm := TclGameForm.Create(Self);
svy3frm.SetFormColor('#FAEBD7','',clGNone);
sym3:=0;

svy3frm.AddGameAssetFromUrl('https://clomosy.com/demos/true.wav');
frkses := svy3frm.RegisterSound('true.wav');
svy3frm.SoundIsActive:=True;

svy3frm.AddGameAssetFromUrl('https://clomosy.com/demos/win.wav');
kazanmases := svy3frm.RegisterSound('win.wav');
svy3frm.SoundIsActive:=True;

PnlBody3 := svy3frm.AddNewProPanel(svy3frm,'PnlBody3');
clComponent.SetupComponent(PnlBody3,'{"Align":"Client",
"MarginTop":5,
"MarginLeft":10,
"MarginRight":10,
"MarginBottom":5,
"BackgroundColor":"null","RoundHeight":10,"RoundWidth":10}');

VSBoxBody3 := svy3frm.AddNewVertScrollBox(PnlBody3,'VSBoxBody3');
VSBoxBody3.Align := alClient;

lyt9 := svy3frm.AddNewLayout(VSBoxBody3,'lyt9');
lyt9.Align:=alMostTop
lyt9.Height := 30;

lyt10 := svy3frm.AddNewLayout(VSBoxBody3,'lyt10');
lyt10.Align:=alTop;
lyt10.Height := 330;

lyt11 := svy3frm.AddNewLayout(VSBoxBody3,'lyt11');
lyt11.Align:=alTop
lyt11.Height := 330;

lyt12 := svy3frm.AddNewLayout(VSBoxBody3,'lyt12');
lyt12.Align:=alTop
lyt12.Height := 58;

bslklbl3 := svy3frm.AddNewProLabel(lyt9,'bslklbl3',' 6 FARKI BUL ');
clComponent.SetupComponent(bslklbl3,'{"Align" : "Top","Width":40,"Height":23,"MarginTop":10,"TextColor":"#008080","TextSize":20,"TextBold":"yes",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

rsm6_1 := svy3frm.AddNewProImage(lyt10,'rsm6_1');
clComponent.SetupComponent(rsm6_1,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/NFindSev3_1.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":50}');

rsm6_2 := svy3frm.AddNewProImage(lyt11,'rsm6_2');
clComponent.SetupComponent(rsm6_2,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/NFindSev3_2.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":70}');

symlbl3 := svy3frm.AddNewProLabel(lyt12,'symlbl3','0/6');
clComponent.SetupComponent(symlbl3,'{"Align" : "Center","Width":100,"Height":25,"MarginBottom":95,"BackgroundColor":"#FFF5EE",
"RoundHeight":6,"RoundWidth":6,"BorderColor":"#008080","BorderWidth":3,"TextSize":20,"TextBold":"yes","TextColor":"#008080",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

blglbl3 := svy3frm.AddNewProLabel(lyt12,'blglbl3','   TEBRİKLER HEPSİNİ BULDUNUZ   ');
clComponent.SetupComponent(blglbl3,'{"Align" : "center","BackgroundColor":"#FFF5EE","TextColor":"#008080",
"Width":320,"Height":28,"MarginBottom":40,"TextSize":20,"TextBold":"yes","RoundHeight":10,"RoundWidth":10,
"BorderColor":"#008080","BorderWidth":3,"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');
blglbl3.Visible:=False;

sayfagcsbtn3:= svy3frm.AddNewProButton(lyt12,'sayfagcsbtn3','');
clComponent.SetupComponent(sayfagcsbtn3,'{"Align" : "Bottom","Width":80,"Height":60,
"MarginBottom":7,"MarginLeft":70,
"ImgUrl":"https://img.icons8.com/flat-round/100/circled-right.png"}');
sayfagcsbtn3.Enabled:=False;

geribtn3:= svy3frm.AddNewProButton(svy3frm,'geribtn3','');
clComponent.SetupComponent(geribtn3,'{"Align" : "None","Width":60,"Height":40,
"ImgUrl":"https://img.icons8.com/flat-round/64/circled-left.png"}');
geribtn3.Position.X:=8;
geribtn3.Position.Y:=5;
svy3frm.AddNewEvent(geribtn3,tbeOnClick,'blm2');

frk19btn := svy3frm.AddNewProButton(lyt10,'frk19btn','');
clComponent.SetupComponent(frk19btn,'{"Align" : "Center","Width":7,"Height":75,
"MarginTop" : 70,"MarginRight" : 298}');
svy3frm.AddNewEvent(frk19btn,tbeOnClick,'fark10');

frk20btn := svy3frm.AddNewProButton(lyt11,'frk20btn','');
clComponent.SetupComponent(frk20btn,'{"Align" : "Center","Width":7,"Height":75,
"MarginTop" : 50,"MarginRight" : 298}');
svy3frm.AddNewEvent(frk20btn,tbeOnClick,'fark10');

frk21btn := svy3frm.AddNewProButton(lyt10,'frk21btn','');
clComponent.SetupComponent(frk21btn,'{"Align" : "Center","Width":30,"Height":15,
"MarginBottom" : 82,"MarginRight" : 255}');
svy3frm.AddNewEvent(frk21btn,tbeOnClick,'fark11');

frk22btn := svy3frm.AddNewProButton(lyt11,'frk22btn','');
clComponent.SetupComponent(frk22btn,'{"Align" : "Center","Width":30,"Height":15,
"MarginBottom" : 102,"MarginRight" : 255}');
svy3frm.AddNewEvent(frk22btn,tbeOnClick,'fark11');

frk23btn := svy3frm.AddNewProButton(lyt10,'frk23btn','');
clComponent.SetupComponent(frk23btn,'{"Align" : "Center","Width":35,"Height":10,
"MarginBottom" : 130,"MarginRight" :175}');
svy3frm.AddNewEvent(frk23btn,tbeOnClick,'fark12');

frk24btn := svy3frm.AddNewProButton(lyt11,'frk24btn','');
clComponent.SetupComponent(frk24btn,'{"Align" : "Center","Width":35,"Height":10,
"MarginBottom" : 152,"MarginRight" : 175}');
svy3frm.AddNewEvent(frk24btn,tbeOnClick,'fark12');

frk25btn := svy3frm.AddNewProButton(lyt10,'frk25btn','');
clComponent.SetupComponent(frk25btn,'{"Align" : "Center","Width":30,"Height":12,
"MarginBottom" : 36,"MarginRight" : 110}');
svy3frm.AddNewEvent(frk25btn,tbeOnClick,'fark13');

frk26btn := svy3frm.AddNewProButton(lyt11,'frk26btn','');
clComponent.SetupComponent(frk26btn,'{"Align" : "Center","Width":30,"Height":12,
"MarginBottom" : 56,"MarginRight" : 110}');
svy3frm.AddNewEvent(frk26btn,tbeOnClick,'fark13');

frk27btn := svy3frm.AddNewProButton(lyt10,'frk27btn','');
clComponent.SetupComponent(frk27btn,'{"Align" : "Center","Width":48,"Height":55,
"MarginTop" : 83,"MarginLeft" : 34}');
svy3frm.AddNewEvent(frk27btn,tbeOnClick,'fark14');

frk28btn := svy3frm.AddNewProButton(lyt11,'frk28btn','');
clComponent.SetupComponent(frk28btn,'{"Align" : "Center","Width":48,"Height":55,
"MarginTop" : 63,"MarginLeft" : 34}');
svy3frm.AddNewEvent(frk28btn,tbeOnClick,'fark14');

frk29btn := svy3frm.AddNewProButton(lyt10,'frk29btn','');
clComponent.SetupComponent(frk29btn,'{"Align" : "Center","Width":40,"Height":15,
"MarginBottom" : 65,"MarginLeft" : 263}');
svy3frm.AddNewEvent(frk29btn,tbeOnClick,'fark15');

frk30btn := svy3frm.AddNewProButton(lyt11,'frk30btn','');
clComponent.SetupComponent(frk30btn,'{"Align" : "Center","Width":40,"Height":15,
"MarginBottom" : 85,"MarginLeft" : 263}');
svy3frm.AddNewEvent(frk30btn,tbeOnClick,'fark15');

svy3frm.AddNewEvent(sayfagcsbtn3,tbeOnClick,'blm4');

svy3frm.Run;
end;

procedure fark16
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk31btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginTop" : 163,"MarginRight" : 190,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk31btn.Enabled:=False;
clComponent.SetupComponent(frk32btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginTop" : 143,"MarginRight" : 190,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk32btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark17
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk33btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginBottom" : 190,"MarginRight" : 212,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk33btn.Enabled:=False;
clComponent.SetupComponent(frk34btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginBottom" : 210,"MarginRight" : 212,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk34btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark18
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk35btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginBottom" : 90,"MarginRight" :40,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk35btn.Enabled:=False;
clComponent.SetupComponent(frk36btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginBottom" : 110,"MarginRight" : 40,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk36btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark19
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk37btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginTop" : 60,"MarginRight" : 168,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk37btn.Enabled:=False;
clComponent.SetupComponent(frk38btn,'{"Align" : "Center","Width":25,"Height":25,
"MarginTop" : 40,"MarginRight" : 168,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk38btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark20
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk39btn,'{"Align" : "Center","Width":30,"Height":25,
"MarginTop" : 105,"MarginLeft" : 50,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk39btn.Enabled:=False;
clComponent.SetupComponent(frk40btn,'{"Align" : "Center","Width":30,"Height":25,
"MarginTop" : 85,"MarginLeft" : 50,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk40btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark21
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk41btn,'{"Align" : "Center","Width":33,"Height":25,
"MarginTop" : 16,"MarginLeft" : 138,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk41btn.Enabled:=False;
clComponent.SetupComponent(frk42btn,'{"Align" : "Center","Width":33,"Height":25,
"MarginBottom" : 3,"MarginLeft" : 138,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk42btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure fark22
begin
sym4:=sym4+1;
btnenbld4;
clComponent.SetupComponent(frk43btn,'{"Align" : "Center","Width":30,"Height":30,
"MarginTop" : 175,"MarginLeft" : 225,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk43btn.Enabled:=False;
clComponent.SetupComponent(frk44btn,'{"Align" : "Center","Width":30,"Height":30,
"MarginTop" : 155,"MarginLeft" : 225,"ImgUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Green_tick.svg/2048px-Green_tick.svg.png"}');
frk44btn.Enabled:=False;
symlbl4.Text:= IntToStr(sym4)+'/7';
frksesprcdr;
end;

procedure blm4
begin
svy4frm := TclGameForm.Create(Self);
svy4frm.SetFormColor('#FAEBD7','',clGNone);
sym4:=0;

svy4frm.AddGameAssetFromUrl('https://clomosy.com/demos/true.wav');
frkses := svy4frm.RegisterSound('true.wav');
svy4frm.SoundIsActive:=True;

svy4frm.AddGameAssetFromUrl('https://clomosy.com/demos/win.wav');
kazanmases := svy4frm.RegisterSound('win.wav');
svy4frm.SoundIsActive:=True;

PnlBody4 := svy4frm.AddNewProPanel(svy4frm,'PnlBody4');
clComponent.SetupComponent(PnlBody4,'{"Align":"Client",
"MarginTop":5,
"MarginLeft":10,
"MarginRight":10,
"MarginBottom":5,
"BackgroundColor":"null","RoundHeight":10,"RoundWidth":10}');

VSBoxBody4 := svy4frm.AddNewVertScrollBox(PnlBody4,'VSBoxBody4');
VSBoxBody4.Align := alClient;

lyt13 := svy4frm.AddNewLayout(VSBoxBody4,'lyt13');
lyt13.Align:=alMostTop
lyt13.Height := 30;

lyt14 := svy4frm.AddNewLayout(VSBoxBody4,'lyt14');
lyt14.Align:=alTop;
lyt14.Height := 330;

lyt15 := svy4frm.AddNewLayout(VSBoxBody4,'lyt15');
lyt15.Align:=alTop
lyt15.Height := 330;

lyt16 := svy4frm.AddNewLayout(VSBoxBody4,'lyt16');
lyt16.Align:=alTop
lyt16.Height := 58;

bslklbl4 := svy4frm.AddNewProLabel(lyt13,'bslklbl4',' 7 FARKI BUL ');
clComponent.SetupComponent(bslklbl4,'{"Align" : "Top","Width":40,"Height":23,"MarginTop":10,"TextColor":"#008080","TextSize":20,"TextBold":"yes",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

rsm7_1 := svy4frm.AddNewProImage(lyt14,'rsm7_1');
clComponent.SetupComponent(rsm7_1,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev4_1.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":50}');

rsm7_2 := svy4frm.AddNewProImage(lyt15,'rsm7_2');
clComponent.SetupComponent(rsm7_2,'{"Align" : "Center","Width":360,"Height":300,
"ImgUrl":"https://clomosy.com/demos/FindSev4_2.png","ImgFit":"yes","BackgroundColor":"null","MarginBottom":70}');

symlbl4 := svy4frm.AddNewProLabel(lyt16,'symlbl4','0/7');
clComponent.SetupComponent(symlbl4,'{"Align" : "Center","Width":100,"Height":25,"MarginBottom":150,"BackgroundColor":"#FFF5EE",
"RoundHeight":6,"RoundWidth":6,"BorderColor":"#008080","BorderWidth":3,"TextSize":20,"TextBold":"yes","TextColor":"#008080",
"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');

blglbl4 := svy4frm.AddNewProLabel(lyt16,'blglbl4','OYUN BİTTİ');
clComponent.SetupComponent(blglbl4,'{"Align" : "center","BackgroundColor":"#FFF5EE","TextColor":"#008080",
"Width":320,"Height":35,"MarginBottom":75,"TextSize":20,"TextBold":"yes","RoundHeight":10,"RoundWidth":10,
"BorderColor":"#008080","BorderWidth":3,"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');
svy4frm.AddNewEvent(blglbl4,tbeOnClick,'ShowMessage(''TEBRİKLER'')');
blglbl4.Visible:=False;

basadnbtn := svy4frm.AddNewProButton(lyt16,'basadnbtn',' TEKRAR OYNA ');
clComponent.SetupComponent(basadnbtn,'{"Align" : "center","BackgroundColor":"#FFF5EE","TextColor":"#008080",
"Width":320,"Height":35,"TextSize":20,"TextBold":"yes","RoundHeight":10,"RoundWidth":10,
"BorderColor":"#008080","BorderWidth":3,"TextVerticalAlign":"center","TextHorizontalAlign":"center"}');
basadnbtn.Visible:=False;
svy4frm.AddNewEvent(basadnbtn,tbeOnClick,'blm1');

geribtn4:= svy4frm.AddNewProButton(svy4frm,'geribtn4','');
clComponent.SetupComponent(geribtn4,'{"Align" : "None","Width":60,"Height":40,
"ImgUrl":"https://img.icons8.com/flat-round/64/circled-left.png"}');
geribtn4.Position.X:=8;
geribtn4.Position.Y:=5;
svy4frm.AddNewEvent(geribtn4,tbeOnClick,'blm3');

frk31btn := svy4frm.AddNewProButton(lyt14,'frk31btn','');
clComponent.SetupComponent(frk31btn,'{"Align" : "Center","Width":15,"Height":15,
"MarginTop" : 163,"MarginRight" : 190}');
svy4frm.AddNewEvent(frk31btn,tbeOnClick,'fark16');

frk32btn := svy4frm.AddNewProButton(lyt15,'frk32btn','');
clComponent.SetupComponent(frk32btn,'{"Align" : "Center","Width":15,"Height":15,
"MarginTop" : 143,"MarginRight" : 190}');
svy4frm.AddNewEvent(frk32btn,tbeOnClick,'fark16');

frk33btn := svy4frm.AddNewProButton(lyt14,'frk33btn','');
clComponent.SetupComponent(frk33btn,'{"Align" : "Center","Width":15,"Height":15,
"MarginBottom" : 190,"MarginRight" : 212}');
svy4frm.AddNewEvent(frk33btn,tbeOnClick,'fark17');

frk34btn := svy4frm.AddNewProButton(lyt15,'frk34btn','');
clComponent.SetupComponent(frk34btn,'{"Align" : "Center","Width":15,"Height":15,
"MarginBottom" : 210,"MarginRight" : 212}');
svy4frm.AddNewEvent(frk34btn,tbeOnClick,'fark17');

frk35btn := svy4frm.AddNewProButton(lyt14,'frk35btn','');
clComponent.SetupComponent(frk35btn,'{"Align" : "Center","Width":15,"Height":47,
"MarginBottom" : 90,"MarginRight" :40}');
svy4frm.AddNewEvent(frk35btn,tbeOnClick,'fark18');

frk36btn := svy4frm.AddNewProButton(lyt15,'frk36btn','');
clComponent.SetupComponent(frk36btn,'{"Align" : "Center","Width":15,"Height":47,
"MarginBottom" : 110,"MarginRight" : 40}');
svy4frm.AddNewEvent(frk36btn,tbeOnClick,'fark18');

frk37btn := svy4frm.AddNewProButton(lyt14,'frk37btn','');
clComponent.SetupComponent(frk37btn,'{"Align" : "Center","Width":20,"Height":8,
"MarginTop" : 60,"MarginRight" : 168}');
svy4frm.AddNewEvent(frk37btn,tbeOnClick,'fark19');

frk38btn := svy4frm.AddNewProButton(lyt15,'frk38btn','');
clComponent.SetupComponent(frk38btn,'{"Align" : "Center","Width":20,"Height":8,
"MarginTop" : 40,"MarginRight" : 168}');
svy4frm.AddNewEvent(frk38btn,tbeOnClick,'fark19');

frk39btn := svy4frm.AddNewProButton(lyt14,'frk39btn','');
clComponent.SetupComponent(frk39btn,'{"Align" : "Center","Width":30,"Height":12,
"MarginTop" : 105,"MarginLeft" : 50}');
svy4frm.AddNewEvent(frk39btn,tbeOnClick,'fark20');

frk40btn := svy4frm.AddNewProButton(lyt15,'frk40btn','');
clComponent.SetupComponent(frk40btn,'{"Align" : "Center","Width":30,"Height":12,
"MarginTop" : 85,"MarginLeft" : 50}');
svy4frm.AddNewEvent(frk40btn,tbeOnClick,'fark20');

frk41btn := svy4frm.AddNewProButton(lyt14,'frk41btn','');
clComponent.SetupComponent(frk41btn,'{"Align" : "Center","Width":33,"Height":12,
"MarginTop" : 16,"MarginLeft" : 138}');
svy4frm.AddNewEvent(frk41btn,tbeOnClick,'fark21');

frk42btn := svy4frm.AddNewProButton(lyt15,'frk42btn','');
clComponent.SetupComponent(frk42btn,'{"Align" : "Center","Width":33,"Height":12,
"MarginBottom" : 3,"MarginLeft" : 138}');
svy4frm.AddNewEvent(frk42btn,tbeOnClick,'fark21');

frk43btn := svy4frm.AddNewProButton(lyt14,'frk43btn','');
clComponent.SetupComponent(frk43btn,'{"Align" : "Center","Width":30,"Height":30,
"MarginTop" : 175,"MarginLeft" : 225}');
svy4frm.AddNewEvent(frk43btn,tbeOnClick,'fark22');

frk44btn := svy4frm.AddNewProButton(lyt15,'frk44btn','');
clComponent.SetupComponent(frk44btn,'{"Align" : "Center","Width":30,"Height":30,
"MarginTop" : 155,"MarginLeft" : 225}');
svy4frm.AddNewEvent(frk44btn,tbeOnClick,'fark22');

svy4frm.Run;
end;

begin
blm1;
end;
