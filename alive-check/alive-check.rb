require "net/http"
require 'net/https'

# サーバーとTCPコネクションできるかの確認スクリプト

SERVER_URL = ""
SERVER_URL.freeze

begin

uri = URI.parse(SERVER_URL)
response = Net::HTTP.get_response(uri)

rescue => e
    `curl -X POST -H "Authorization: Bearer hoge" -F "message=★★SERVER DOWN★★" https://notify-api.line.me/api/notify`
end