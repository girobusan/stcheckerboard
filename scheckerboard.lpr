program scheckerboard;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, ucheckerboard
  { you can add units after this };
var
  codetest:TCodeTable;
  testtext:ansistring= 'Второй год Штирлиц отмечал 1 мая в Берлине';
  rec:ansistring;
  wt:unicodestring;
  //tf:TLresource;
    S: TResourceStream;
    B:TStringList;



{$R *.res}

begin
  S := TResourceStream.Create(HInstance, 'SONET-C', RT_RCDATA);
  b:= TStringList.Create;
  b.LoadFromStream(S);


  codetest.CreateFromStrings(b);
  writeln(testtext + '='+ codetest.Encode(testtext));
  rec:= codetest.Encode(testtext);
  writeln( codetest.Decode(rec));
  writeln(length(testtext));
  writeln(length( Utf8decode(testtext) ));
  wt:= Utf8decode(testtext);
  writeln(length(wt));
end.

