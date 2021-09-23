# Retrieves the size of the largest possible console window.
function Get-LargestConsoleWindowSize
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/getlargestconsolewindowsize',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::getlargestconsolewindowsize)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::getlargestconsolewindowsize)
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
