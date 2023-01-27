=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2023 Aspose.PDF Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------------------------------------------
=end

require 'date'
require 'time'

module AsposePdfCloud
  class LettersPositioningMethods
    
    USE_EM_UNITS_AND_COMPENSATION_OF_ROUNDING_ERRORS_IN_CSS = "UseEmUnitsAndCompensationOfRoundingErrorsInCss".freeze
    USE_PIXEL_UNITS_IN_CSS_LETTER_SPACING_FOR_IE = "UsePixelUnitsInCssLetterSpacingForIE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # resolve issue with Concstant Name modification (ex: "FooName" to :FOO_NAME)
      # consantValues = LettersPositioningMethods.constants.select{|c| c.to_s == value}
      constantValues = LettersPositioningMethods.constants.select{ |const_name| LettersPositioningMethods.const_get(const_name) == value}
      
      raise "Invalid ENUM value #{value} for class #LettersPositioningMethods" if constantValues.empty?
      value
    end
  end

end
