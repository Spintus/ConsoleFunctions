# Sets the text and background color attributes for a specified number of character cells.
function Fill-ConsoleOutputAttribute
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/fillconsoleoutputattribute',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::fillconsoleoutputattribute)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::fillconsoleoutputattribute)
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
