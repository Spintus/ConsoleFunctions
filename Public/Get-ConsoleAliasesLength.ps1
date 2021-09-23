# Returns the size, in bytes, of the buffer needed to store all of the console aliases for the specified executable.
function Get-ConsoleAliasesLength
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/getconsolealiaseslength',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::getconsolealiaseslength)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::getconsolealiaseslength)
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
