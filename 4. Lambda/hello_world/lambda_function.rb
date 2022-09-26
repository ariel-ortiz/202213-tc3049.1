require 'json'
require 'date'

def lambda_handler(event:, context:)
  mensaje = event.dig('queryStringParameters', 'oxxo') || 'nada que ver'
  method = event.dig('requestContext', 'http', 'method') || 'unknown'
  {
    statusCode: 200,
    body: JSON.generate(
      {
        message: mensaje,
        method: method,
        memory: context.memory_limit_in_mb,
        code: 42,
        is_ok: true,
        colors: ['red', 'green', 'blue'],
        date: DateTime.now().to_s,
        wtf: "!#$%&"
      })
  }
end
