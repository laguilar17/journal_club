require 'rails_helper'

RSpec.describe "journals/show", type: :view do
  before(:each) do
    @journal = assign(:journal, Journal.create!(
      journal_name: "Journal Name",
      journal_link: "Journal Link",
      read: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Journal Name/)
    expect(rendered).to match(/Journal Link/)
    expect(rendered).to match(/false/)
  end
end
