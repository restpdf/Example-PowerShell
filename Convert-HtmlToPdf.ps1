$apiKey = '<api-key>'

$restPdfIoSplat = @{
    Method      = 'POST'
    Uri         = 'https://api.restpdf.io/pdf'
    ContentType = 'application/json'
    OutFile     = 'google.pdf'
    Headers     = @{
        'X-API-KEY' = $apiKey
    }
    Body        = @{
        'output' = 'data'
        'html'   = '<p>sdaasd</p>'
    } | ConvertTo-Json
}
                                    
Invoke-RestMethod @restPdfIoSplat