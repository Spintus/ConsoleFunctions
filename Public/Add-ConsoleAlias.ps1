# Defines a console alias for the specified executable.
function Add-ConsoleAlias
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/addconsolealias',
        RemotingCapability = 'None'
    )]
    [OutputType([bool])]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::AddConsoleAlias)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::AddConsoleAlias)
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
