Pod::Spec.new do |spec|
  spec.name         = "CloudConnect"
  spec.version      = "1.0.2"
  spec.summary      = "This is small and light cloud connect framework.."
  spec.description  = <<-DESC
                   Cloud connect is a small and lightweight Swift framework that allows to connect to cloud and being notified response a super-easy way!
                   DESC
  spec.homepage     = "https://appcoda.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "YOUR_NAME" => "YOUR_EMAIL" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :http => 'file:' + __dir__ + "/" }
  # spec.source       = { :git => "https://github.com/awasthi027/cloudconnect.git", :branch => "master", :tag => "#{spec.version}" }
  spec.source_files = "CloudConnect/**/*.{swift}"
  spec.swift_version = "5.0"
end



