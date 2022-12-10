class MapQuery < ApplicationRecord
  def initialize(address)
    @shop_param = address
  end
  def uri
    # フォームから飛んできた住所をエスケープして変数に格納
    address = URI.encode_www_form({address: @shop_param})
    # Geocoding APIを叩く
    URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address}&key=#{ENV["GOOGLE_MAP_API_KEY"]}")
  end

  def result
    # 返ってきたJSONをパースしてapi_response という変数に格納
    api_response = Net::HTTP.get_response(uri)
    response_body = JSON.parse(api_response.body)
    response_body["results"][0]["geometry"]["location"]
  end
end
