# Returns the size, in bytes, of the buffer needed to store the names of all executables that have console aliases defined.
function Get-ConsoleAliasExesLength
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/getconsolealiasexeslength',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::getconsolealiasexeslength)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::getconsolealiasexeslength)
                ParameterSet = $PSCmdlet.ParameterSetName
                Parameters   = $PSBoundParameters
            }
            Invoke-MethodOverloadFromBoundParam @invokeMethodOverloadFromBoundParamHash
        }
        catch
        {
            throw
        }
    }
}
