# Reads character and color attribute data from a rectangular block of character cells in a console screen buffer.
function Read-ConsoleOutput
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/readconsoleoutput',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutput)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutput)
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
