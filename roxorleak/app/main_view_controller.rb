class MainViewController < UIViewController
  def viewDidLoad
    super

    @url = 'https://skydrive.live.com/embed?cid=0A8F6D73B19F49AC&resid=A8F6D73B19F49AC%21133&authkey=AJ7Lv1tikfVDprc'

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[10, 10], [100, 100]]
    button.setTitle "Call Service", forState: UIControlStateNormal
    button.addTarget self, action:"call_service", forControlEvents: UIControlEventTouchUpInside
    view.addSubview button
  end

  def call_service
    BW::HTTP.get(@url) do |resp|
      NSLog "Received response"
    end
  end
end