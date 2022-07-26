require 'rails_helper'

RSpec.describe "journals/new", type: :view do
  before(:each) do
    assign(:journal, Journal.new(
      journal_name: "MyString",
      journal_link: "MyString",
      read: false
    ))
  end

  it "renders new journal form" do
    render

    assert_select "form[action=?][method=?]", journals_path, "post" do

      assert_select "input[name=?]", "journal[journal_name]"

      assert_select "input[name=?]", "journal[journal_link]"

      assert_select "input[name=?]", "journal[read]"
    end
  end
end
