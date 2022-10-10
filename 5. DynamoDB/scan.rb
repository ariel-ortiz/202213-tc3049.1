require 'aws-sdk-dynamodb'

dynamodb = Aws::DynamoDB::Client.new

res = dynamodb.scan(table_name: 'lenguajes')
items = res.items
p items
