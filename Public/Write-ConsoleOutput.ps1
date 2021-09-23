# Writes character and color attribute data to a specified rectangular block of character cells in a console screen buffer.
function Write-ConsoleOutput
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/writeconsoleoutput',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutput)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::writeconsoleoutput)
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
