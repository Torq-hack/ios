# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Torq' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Torq
  pod 'Cosmos', '~> 17.0'
  pod 'SoundWave'
  pod 'Charts'
  pod 'Bubbles'
  pod 'Koloda'
  pod 'Alamofire'
  pod 'AlamofireImage'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
#        target.build_configurations.each do |config|
#            config.build_settings['SWIFT_VERSION'] = '3.0'
#        end
        if target.name == 'Bubbles'
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '3.0'
            end
        end
    end
  end
end
