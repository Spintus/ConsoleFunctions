# Writes a character to the console screen buffer a specified number of times.
function Fill-ConsoleOutputCharacter
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/fillconsoleoutputcharacter',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::fillconsoleoutputcharacter)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::fillconsoleoutputcharacter)
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
