









var
    Board       : IPCB_Board;

Procedure Start;
Var
    Parameters      : String;
    ProcessLauncher : IProcessLauncher;

begin


    Parameters := 'Apply=True|Expr=';
    Parameters := Parameters + 'IsComponent and OnTopLayer and IsSMTComponent';
    Parameters := Parameters + '|Index=1|Zoom=False|Select=True|Mask=True';
    ProcessLauncher := Client;
    ProcessLauncher.PostMessage('PCB:RunQuery', 'Clear', Length('Clear'), Client.CurrentView);
    ProcessLauncher.PostMessage('PCB:RunQuery', Parameters, Length(Parameters), Client.CurrentView);

    PCBServer.PostProcess;

    Board := PCBServer.GetCurrentPCBBoard;
    if Board = nil then exit;
    ShowInfo('= '+  inttostr(    Board.SelectecObjectCount));

end;
