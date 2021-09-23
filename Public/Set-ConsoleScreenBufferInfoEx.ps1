# Sets extended information about the specified console screen buffer.
function Set-ConsoleScreenBufferInfoEx
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/setconsolescreenbufferinfoex',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::setconsolescreenbufferinfoex)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::setconsolescreenbufferinfoex)
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
