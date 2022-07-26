require 'rails_helper'

RSpec.describe "journals/index", type: :view do
  before(:each) do
    assign(:journals, [
      Journal.create!(
        journal_name: "Journal Name",
        journal_link: "Journal Link",
        read: false
      ),
      Journal.create!(
        journal_name: "Journal Name",
        journal_link: "Journal Link",
        read: false
      )
    ])
  end

  it "renders a list of journals" do
    render
    assert_select "tr>td", text: "Journal Name".to_s, count: 2
    assert_select "tr>td", text: "Journal Link".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
