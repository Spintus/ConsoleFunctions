# Sends a specified signal to a console process group that shares the console associated with the calling process.
function Generate-ConsoleCtrlEvent
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/generateconsolectrlevent',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::generateconsolectrlevent)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::generateconsolectrlevent)
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
