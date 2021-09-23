# Copies a specified number of foreground and background color attributes from consecutive cells of a console screen buffer.
function Read-ConsoleOutputAttribute
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/readconsoleoutputattribute',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutputattribute)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutputattribute)
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
