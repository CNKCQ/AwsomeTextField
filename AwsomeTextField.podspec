#
#  Be sure to run `pod spec lint IDCardKeyboard.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "AwsomeTextField"
  s.version      = "1.0.3"
  s.summary      = "it's a custom textField."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                    it's a custom textField, a elegant textField
                   DESC

  s.homepage     = "https://github.com/CNKCQ/AwsomeTextField.git"
  s.screenshots  = "https://cloud.githubusercontent.com/assets/8440220/20137814/c47c9966-a6b7-11e6-850d-03ee6fa42d00.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "Apache", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  s.author             = { "KingCQ" => "wangchengqvan@gmail.com" }
  # Or just: s.author    = "KingCQ"
  # s.authors            = { "KingCQ" => "wangchengqvan@gmail.com" }
  # s.social_media_url   = "http://twitter.com/KingCQ"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  #  When using multiple platforms
  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.9'
  # s.tvos.deployment_target = '9.0'
  # s.watchos.deployment_target = '2.0'


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/CNKCQ/AwsomeTextField.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
  s.source_files  = "AwsomeTextField/Class", "AwsomeTextField/Class/*.{h,m,swift}"
  s.exclude_files = "AwsomeTextField/Exclude"


  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = "UIKit"

end
