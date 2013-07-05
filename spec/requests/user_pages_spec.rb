require 'spec_helper'

subject { page }

describe "UserPages" do
  before { visit signup_path }
    it { should have_selector('h1', text: 'Sign up')}
    it { should have_selector('title', text: full_title('Sign up'))}
  end
end
