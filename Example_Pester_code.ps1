function Example_Pester_code {
    if (-Not (Test-Path 'C:\ExampleTestFolder') ){
        New-Item -Path "c:\" -Name "ExampleTestFolder" -ItemType "directory"
    }
    else{
        Write-output "Folder Exist"
    }

    # Folder on Fake G Drive
    if (-Not (Test-Path 'G:\ExampleTestFolder') ){
        New-Item -Path "G:\" -Name "ExampleTestFolder" -ItemType "directory"
    }
    else{
        Write-output "Folder Exist"
    }
}
Example_Pester_code