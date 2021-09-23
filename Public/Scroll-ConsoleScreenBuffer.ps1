# Moves a block of data in a screen buffer.
function Scroll-ConsoleScreenBuffer
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/scrollconsolescreenbuffer',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::scrollconsolescreenbuffer)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::scrollconsolescreenbuffer)
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
