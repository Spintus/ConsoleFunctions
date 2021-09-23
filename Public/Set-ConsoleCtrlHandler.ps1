# Adds or removes an application-defined HandlerRoutine from the list of handler functions for the calling process.
function Set-ConsoleCtrlHandler
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/setconsolectrlhandler',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::setconsolectrlhandler)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::setconsolectrlhandler)
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
