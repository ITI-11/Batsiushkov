Dim Menu 
do 
WScript.Stdout.WriteLine "Меню:" 
WScript.Stdout.WriteLine "----------------------------------------------------------" 
WScript.Stdout.WriteLine "1)Информация об авторе." 
WScript.Stdout.WriteLine "2)Создание папки в указанном месте." 
WScript.Stdout.WriteLine "3)Открытие блакнота и сохранение в нем имени пользователя." 
WScript.Stdout.WriteLine "4)Выход." 
WScript.Stdout.WriteLine "----------------------------------------------------------" 
WScript.Stdout.WriteLine "Выберите пункт меню и нажмите на соответствующую клавишу." 
Menu = WScript.StdIn.ReadLine 

If (Menu="1") Then 
Wscript.Stdout.WriteLine "Батюшков А.С., группа ИТИ-11 =)" 

elseif(Menu="2") Then 
Set FSO1 = CreateObject("Scripting.FileSystemObject")
Dim FSO, F, SubFolders , S, Folder, Road 
WScript.StdOut.WriteLine "Введите путь:" 
Road = WScript.StdIn.ReadLine 
If fso1.FolderExists(Road) Then
Set FSO = WScript.CreateObject("Scripting.FileSystemObject") 
Set F = FSO.GetFolder(Road) 
Set SubFolders  = F.SubFolders 
For Each Folder In SubFolders 
s = s & Folder & VbCrLf 

Next 
set new_folder=FSO.CreateFolder("Новый каталог")
 
else
WScript.StdOut.WriteLine "Данный путь не найден."
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
Open.Run "C:\Windows\system32\notepad.exe D:\учёба\OC\2 лаба\name.txt"
Wscript.Stdout.WriteLine "Имя пользователя сохранено в блокноте с именем name.txt" 
End If 

Loop until (Menu="4")