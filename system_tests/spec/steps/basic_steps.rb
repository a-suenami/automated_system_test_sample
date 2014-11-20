step 'visit :page_name' do |page_name|
  page_name_and_paths = {
    'todo list page' => '/todos'
  }
  path = page_name_and_paths[page_name] || '/'
  visit path
end

step 'display :text' do |text|
  expect(page).to have_content text
end

step 'click link :target' do |target|
  click_link target
end

step 'click button :target' do |target|
  click_button target
end

step 'fill in :target with :content' do |target, content|
  fill_in target, with: content
end
