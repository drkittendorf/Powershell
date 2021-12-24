$source = "G:\BATCH_TEST\" #Change to your file location
$theListImWorkingWith = Get-ChildItem -Path $source -Recurse -Include *.png #change png to your file type
foreach ($i in $theListImWorkingWith )
{
$dirOfRename = (get-item $i).Directory.Parent #Goes 2 Levels up in File structure
Write-Output "$dirOfRename" #Outputs the folder name that will be added to your file
$i | Rename-Item -NewName {$dirOfRename.Name + ' - ' + $_.Name}
}
