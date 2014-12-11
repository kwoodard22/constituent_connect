require 'rails_helper'

feature "Manage Users" do 
  def create_users
    User.create!(                    # User1
       user: 'Kelsey',
       email: 'kelsey@congress.gov',
       active_status: true
    )
    User.create!(                    # User2
       user: 'John',
       email: 'john@congress.gov',
       active_status: true
    )
  end

  scenario "Show admin page" do
    visit admin_path
    expect(page.find('.header')).to have_content(/Current Users/)
    expect(page).to have_content("No current users")
  end

end

  # scenario "List ALL Users" do
  #   users = create_users
  #   visit admin_path               # WHEN
  #   expect(page.find('.current_users')).to have_content(/Dogs/)    # THEN
  #   expect(page).to have_no_content("No posts available")
  # end
#   scenario "Redirect to New Post Form" do
#     visit posts_path

#     click_on 'ADD NEW POST' 
#     expect(current_path).to eq(new_post_path)
#   end

#   scenario "Add new Post" do
#     post = create_post
#     visit new_post_path(post)
#     fill_in 'Subject', with: 'Dogs'
#     fill_in 'Body', with: 'Are the best.'
#     select '2014', from: 'post[published(1i)]'
#     select 'October', from: 'post[published(2i)]'
#     click_on 'Create Post'

#   expect(current_path).to eq(post_path(Post.last.id))
#   # expect(find('.notice')).to have_content(/success/i)

#   end

#   scenario "Edit an Album & be redirected to see new post" do
#     post = create_post
#     visit edit_post_path(post)

#     fill_in 'Subject', with: 'Cats'
#     fill_in 'Body', with: 'Are the best.'
#     select '2014', from: 'post[published(1i)]'
#     select 'October', from: 'post[published(2i)]'
#     select '31', from: 'post[published(3i)]'
#     click_on 'Update Post'

#     expect(current_path).to eq(post_path(post))       #when we edit the page it takes right back to show page of the album

#   end

#   scenario "Delete a post & redirect to index page" do
#     post = create_post

#     visit post_path(post)
#     click_on 'Destroy'

#     expect(current_path).to eq(posts_path)
#     expect(posts_path).to_not have_content("Dogs")
#   end

# end