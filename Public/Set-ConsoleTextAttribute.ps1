# Sets the foreground (text) and background color attributes of characters written to the console screen buffer.
function Set-ConsoleTextAttribute
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/setconsoletextattribute',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::setconsoletextattribute)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::setconsoletextattribute)
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
