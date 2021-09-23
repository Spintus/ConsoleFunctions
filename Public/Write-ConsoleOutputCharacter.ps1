# Copies a number of characters to consecutive cells of a console screen buffer.
function Write-ConsoleOutputCharacter
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/writeconsoleoutputcharacter',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutputcharacter)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutputcharacter)
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
