# Retrieves the number of unread input records in the console's input buffer.
function Get-NumberOfConsoleInputEvents
{
    [CmdletBinding(
        HelpUri = 'https://docs.microsoft.com/en-us/windows/console/getnumberofconsoleinputevents',
        RemotingCapability = 'None'
    )]
    param()

    dynamicParam
    {
        Get-DynamicParamForMethod -Method ([ConsoleClassLibrary.ConsoleFunctions]::getnumberofconsoleinputevents)
    }

    process
    {
        try
        {
            $invokeMethodOverloadFromBoundParamHash = @{
                Method       = ([ConsoleClassLibrary.ConsoleFunctions]::getnumberofconsoleinputevents)
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
