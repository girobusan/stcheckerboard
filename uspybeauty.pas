unit uspybeauty;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function SpyGrouping(s:ansistring; pad:boolean=true):ansistring;

implementation

function SpyGrouping(s:ansistring; pad:boolean=true):ansistring; //Group them like a REAL spy!
var
   r:ansistring='';
   i:integer;
   p:integer=0;
const
  FiveHoles='00000';
begin
     for i:=1 to (length(s)) do
         begin
         r:=r+s[i];
         if ((i mod 5) = 0) then r:=r+' ';  //constants are for sissies. Аnyway -
         end;
      if pad then p:= length(r) mod 5;                 //ALL spies ALL the time group them by 5.
      SpyGrouping:=r + copy(FiveHoles, 1, p)
end;

end.

