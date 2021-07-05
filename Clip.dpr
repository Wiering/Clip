program Clip;

{$APPTYPE CONSOLE}

uses
  Windows, ClipBrd;

{$R *.RES}

  var
    Filename: string;
    S, T: string;
    F: TextFile;
    i: Integer;
    c: Char;

begin
  if ParamCount > 0 then
  begin
    { write to clipboard }

    Filename := '';
    for i := 1 to ParamCount do
      Filename := Filename + ' ' + ParamStr (i);
    Delete (Filename, 1, 1);

    AssignFile (F, Filename);
    T := '';
    try
      Reset (F);
      try
        while not Eof (F) do
        begin
          ReadLn (F, S);
          if T <> '' then
            T := T + #13#10;
          T := T + S;
        end;
      finally
        CloseFile (F);
      end;
    except
      T := Filename;
    end;

    ClipBrd.Clipboard.SetTextBuf (PChar (T));
  end
  else
  begin
  
    { read from clipboard }
    WriteLn (ClipBrd.Clipboard.AsText);

  end;
end.
