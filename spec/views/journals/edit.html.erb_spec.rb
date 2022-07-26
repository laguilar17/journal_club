require 'rails_helper'

RSpec.describe "journals/edit", type: :view do
  before(:each) do
    @journal = assign(:journal, Journal.create!(
      journal_name: "MyString",
      journal_link: "MyString",
      read: false
    ))
  end

  it "renders the edit journal form" do
    render

    assert_select "form[action=?][method=?]", journal_path(@journal), "post" do

      assert_select "input[name=?]", "journal[journal_name]"

      assert_select "input[name=?]", "journal[journal_link]"

      assert_select "input[name=?]", "journal[read]"
    end
  end
end
