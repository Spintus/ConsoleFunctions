# Copies a number of characters from consecutive cells of a console screen buffer.
function Read-ConsoleOutputCharacter
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/readconsoleoutputcharacter',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutputcharacter)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::readconsoleoutputcharacter)
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
