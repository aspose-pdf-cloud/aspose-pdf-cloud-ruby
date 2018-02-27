=begin
--------------------------------------------------------------------------------------------------------------------
  Copyright (c) 2018 Aspose.Pdf for Cloud
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

module AsposePdfCloud
  class HttpStatusCode

    CONTINUE = 100.freeze
    SWITCHING_PROTOCOLS = 101.freeze
    OK = 200.freeze
    CREATED = 201.freeze
    ACCEPTED = 202.freeze
    NON_AUTHORITATIVE_INFORMATION = 203.freeze
    NO_CONTENT = 204.freeze
    RESET_CONTENT = 205.freeze
    PARTIAL_CONTENT = 206.freeze
    MULTIPLE_CHOICES = 300.freeze
    AMBIGUOUS = 300.freeze
    MOVED_PERMANENTLY = 301.freeze
    MOVED = 301.freeze
    FOUND = 302.freeze
    REDIRECT = 302.freeze
    SEE_OTHER = 303.freeze
    REDIRECT_METHOD = 303.freeze
    NOT_MODIFIED = 304.freeze
    USE_PROXY = 305.freeze
    UNUSED = 306.freeze
    TEMPORARY_REDIRECT = 307.freeze
    REDIRECT_KEEP_VERB = 307.freeze
    BAD_REQUEST = 400.freeze
    UNAUTHORIZED = 401.freeze
    PAYMENT_REQUIRED = 402.freeze
    FORBIDDEN = 403.freeze
    NOT_FOUND = 404.freeze
    METHOD_NOT_ALLOWED = 405.freeze
    NOT_ACCEPTABLE = 406.freeze
    PROXY_AUTHENTICATION_REQUIRED = 407.freeze
    REQUEST_TIMEOUT = 408.freeze
    CONFLICT = 409.freeze
    GONE = 410.freeze
    LENGTH_REQUIRED = 411.freeze
    PRECONDITION_FAILED = 412.freeze
    REQUEST_ENTITY_TOO_LARGE = 413.freeze
    REQUEST_URI_TOO_LONG = 414.freeze
    UNSUPPORTED_MEDIA_TYPE = 415.freeze
    REQUESTED_RANGE_NOT_SATISFIABLE = 416.freeze
    EXPECTATION_FAILED = 417.freeze
    UPGRADE_REQUIRED = 426.freeze
    INTERNAL_SERVER_ERROR = 500.freeze
    NOT_IMPLEMENTED = 501.freeze
    BAD_GATEWAY = 502.freeze
    SERVICE_UNAVAILABLE = 503.freeze
    GATEWAY_TIMEOUT = 504.freeze
    HTTP_VERSION_NOT_SUPPORTED = 505.freeze

    # Builds the enum from string
    # @param [Fixnum] The enum value in the form of the string
    # @return [Fixnum] The enum value
    def build_from_hash(value)
      constantValues = HttpStatusCode.constants.select{ |const_name| HttpStatusCode.const_get(const_name) == value}
      raise "Invalid ENUM value #{value} for class #HttpStatusCode" if constantValues.empty?
      value
      #constantValues[0]
    end

  end
  
end
