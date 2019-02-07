module ApplicationHelper
  def google_authenticator_qrcode(devise_resource)
    issuer = '' # TODO: issuer name
    label = "#{issuer}:#{devise_resource.email}"
    data = devise_resource.otp_provisioning_uri(label, issuer: issuer)
    escaped_data = Rack::Utils.escape(data)
    url = "https://chart.googleapis.com/chart?chs=200x200&chld=M|0&cht=qr&chl=#{escaped_data}"
    image_tag(url, alt: 'Google Authenticator QRCode')
  end
end
