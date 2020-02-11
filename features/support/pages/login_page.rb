class LoginPage
  include Capybara::DSL

  def go
    visit "/"
  end

  def with(email, password)
    find("#emailId").set email
    find("#passId").set password
    click_button "Entrar"
  end

  def alert
    messageAlert = find(".alert span").text
  end
end
