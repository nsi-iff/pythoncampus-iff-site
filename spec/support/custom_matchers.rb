RSpec::Matchers.define :have_link_to do |href|
  match do |page|
    page.should have_css("a[href=\"#{href}\"]")
  end

  failure_message_for_should do
    "expected page to have link to #{href}, but it didn't"
  end

  failure_message_for_should_not do
    "expected page to not have link to #{href}, but it did"
  end
end


RSpec::Matchers.define :have_image do |image|
  match do |page|
    page.should have_css("img[src*=\"#{image}\"]")
  end

  failure_message_for_should do
    "expected page to have image #{image}, but it didn't"
  end

  failure_message_for_should_not do
    "expected page to not have image #{image}, but it did"
  end
end

