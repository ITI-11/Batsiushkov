Dim Menu 
do 
WScript.Stdout.WriteLine "����:" 
WScript.Stdout.WriteLine "----------------------------------------------------------" 
WScript.Stdout.WriteLine "1)���������� �� ������." 
WScript.Stdout.WriteLine "2)�������� ����� � ��������� �����." 
WScript.Stdout.WriteLine "3)�������� �������� � ���������� � ��� ����� ������������." 
WScript.Stdout.WriteLine "4)�����." 
WScript.Stdout.WriteLine "----------------------------------------------------------" 
WScript.Stdout.WriteLine "�������� ����� ���� � ������� �� ��������������� �������." 
Menu = WScript.StdIn.ReadLine 

If (Menu="1") Then 
Wscript.Stdout.WriteLine "�������� �.�., ������ ���-11 =)" 

elseif(Menu="2") Then 
Set FSO1 = CreateObject("Scripting.FileSystemObject")
Dim FSO, F, SubFolders , S, Folder, Road 
WScript.StdOut.WriteLine "������� ����:" 
Road = WScript.StdIn.ReadLine 
If fso1.FolderExists(Road) Then
Set FSO = WScript.CreateObject("Scripting.FileSystemObject") 
Set F = FSO.GetFolder(Road) 
Set SubFolders  = F.SubFolders 
For Each Folder In SubFolders 
s = s & Folder & VbCrLf 

Next 
set new_folder=FSO.CreateFolder("����� �������")
 
else
WScript.StdOut.WriteLine "������ ���� �� ������."
End If 

elseif(Menu="3") Then 
Dim USER, FileName, FSO2 
strComputer = "." 
USER =CreateObject("WScript.Network").UserName 
Set FSO2 = WScript.CreateObject("Scripting.FileSystemObject") 
set FileName = FSO2.CreateTextFile("name.txt",true) 
FileName.Write(USER) 
FileName.close
Set Open = CreateObject("WScript.Shell")
Open.Run "C:\Windows\system32\notepad.exe D:\�����\OC\2 ����\name.txt"
Wscript.Stdout.WriteLine "��� ������������ ��������� � �������� � ������ name.txt" 
End If 

Loop until (Menu="4")