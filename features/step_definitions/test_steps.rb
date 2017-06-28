#Navigate to google.co.uk
Given(/^esteja no email$/) do
  visit 'http://temp-mail.org/pt/'
end

#Write "yahoo" search text to the search bar
When(/^informar email e clicar em recuperar$/) do |searchText|
  fill_in 'lst-ib', :with => searchText
end

#In the current page, we should see "yahoo" text
Then(/^o sistema envia email para caixa temporaria$/) do |expectedText|
  page.should have_content(expectedText)
end