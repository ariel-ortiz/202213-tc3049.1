require 'aws-sdk-dynamodb'

dynamodb = Aws::DynamoDB::Client.new

new_item = {
    lenguaje: 'Java',
    autor: 'James Gosling',
    fecha: 1995,
    notas: 'Corre sobre una máquina virtual',
    color: 'red'
}

dynamodb.put_item(table_name: 'lenguajes', item: new_item)

puts 'Item has been put'
