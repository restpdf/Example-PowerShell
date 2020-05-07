$apiKey = '<api-key>'

$restPdfIoSplat = @{
    Method      = 'POST'
    Uri         = 'https://api.restpdf.io/v1/pdf'
    ContentType = 'application/json'
    OutFile     = 'google.pdf'
    Headers     = @{
        'X-API-KEY' = $apiKey
    }
    Body        = @{
        'output' = 'data'
        'url'    = 'http://www.google.co.uk'
    } | ConvertTo-Json
}
                                    
Invoke-RestMethod @restPdfIoSplat