BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}
Describe "Folder on C Drive" {
    Context "Real Drive: C" {        
        It "Test Folder Path on C" {
            $FolderLocation = 'C:\ExampleTestFolder'
            $FolderLocation | Should -Exist
        }
    }
}

Describe "Folder on G Drive" {
    Context "Fake Drive: G" {        
        It "Test Folder Path on G" {
            $FolderLocation = 'G:\ExampleTestFolder'
            Mock -CommandName Test-Path -MockWith { $true }
            Test-Path -Path $FolderLocation | Should -BeTrue
        }
    }
}
