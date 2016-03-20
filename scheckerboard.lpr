program scheckerboard;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, ucheckerboard, uspybeauty
  { you can add units after this };
var
  codetest:TCodeTable;
  testtext:ansistring= 'Ye, that good, old ale!';
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
  writeln(testtext + '='+ SpyGrouping(codetest.Encode(testtext)) );
  rec:= codetest.Encode(testtext);
  writeln( codetest.Decode(rec));

end.

