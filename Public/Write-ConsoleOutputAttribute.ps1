# Copies a number of foreground and background color attributes to consecutive cells of a console screen buffer.
function Write-ConsoleOutputAttribute
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/writeconsoleoutputattribute',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutputattribute)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutputattribute)
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
