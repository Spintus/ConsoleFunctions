# Sets the size and visibility of the cursor for the specified console screen buffer.
function Set-ConsoleCursorInfo
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/setconsolecursorinfo',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::setconsolecursorinfo)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::setconsolecursorinfo)
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
