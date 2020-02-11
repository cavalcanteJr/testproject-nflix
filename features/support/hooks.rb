Before do
  @login_page = LoginPage.new
  @movie_page = MoviePage.new
  @sidebar = SideBarView.new
end

Before("@login") do
  user = CONFIG["users"]["cat_manager"]
  @login_page.go
  @login_page.with(user["email"], user["password"])
end

After do |scenario|
  if scenario.failed?
    temp_shot = page.save_screenshot("logs/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot).read)
    embed(screenshot, "image/png", "Screenshot")
  end
end
