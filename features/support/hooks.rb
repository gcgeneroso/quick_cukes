Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = BROWSER
end
