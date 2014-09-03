class Spinach::Features::SnippetSearch < Spinach::FeatureSteps
  include SharedAuthentication
  include SharedPaths
  include SharedSnippet
  include UserSnippets

  step 'I search for "snippet"' do
    fill_in "search", with: "snippet"
    click_button :submit
  end

  Then 'I should see "Personal snippet one" in results' do
    page.should have_content "Personal snippet one"
  end

  And 'I should see "Personal snippet private" in results' do
    page.should have_content "Personal snippet private"
  end

  Then 'I should not see "Personal snippet one" in results' do
    page.should_not have_content "Personal snippet one"
  end

  And 'I should not see "Personal snippet private" in results' do
    page.should_not have_content "Personal snippet private"
  end

end
