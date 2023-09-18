require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the DesignSystemHelper. For example:
#
# describe DesignSystemHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe DesignSystemHelper, type: :helper do
  describe 'define_technology_image_pattern()' do
    it 'given C# technology then should return csharp.svg' do
      expect(helper.define_technology_image_pattern('C#')).to eq('csharp.svg')
    end

    it 'given C++ technology then should return cpluplus.svg' do
      expect(helper.define_technology_image_pattern('C++')).to eq('cplusplus.svg')
    end

    it 'given random technology then should return it in lowercase and without spaces' do
      expect(helper.define_technology_image_pattern('Test Technology')).to eq('testtechnology.svg')
    end
  end
end
