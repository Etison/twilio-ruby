##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Api < Domain
      class V2010 < Version
        class AccountContext < InstanceContext
          class SmsList < ListResource
            class ShortCodeList < ListResource
              ##
              # Initialize the ShortCodeList
              # @param [Version] version Version that contains the resource
              # @param [String] account_sid A 34 character string that uniquely identifies this
              #   resource.
              
              # @return [ShortCodeList] ShortCodeList
              def initialize(version, account_sid: nil)
                super(version)
                
                # Path Solution
                @solution = {
                    account_sid: account_sid
                }
                @uri = "/Accounts/#{@solution[:account_sid]}/SMS/ShortCodes.json"
              end
              
              ##
              # Lists ShortCodeInstance records from the API as a list.
              # Unlike stream(), this operation is eager and will load `limit` records into
              # memory before returning.
              # @param [String] friendly_name Only show the ShortCode resources with friendly
              #   names that exactly match this name
              # @param [String] short_code Only show the ShortCode resources that match this
              #   pattern. You can specify partial numbers and use '*' as a wildcard for any digit
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #                   guarantees to never return more than limit.  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
              #  the default value of 50 records.  If no page_size is                      defined
              #  but a limit is defined, stream() will attempt to read                      the
              #  limit with the most efficient page size,                      i.e. min(limit, 1000)
              
              # @return [Array] Array of up to limit results
              def list(friendly_name: nil, short_code: nil, limit: nil, page_size: nil)
                self.stream(
                    friendly_name: friendly_name,
                    short_code: short_code,
                    limit: limit,
                    page_size: page_size
                ).entries
              end
              
              ##
              # Streams ShortCodeInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [String] friendly_name Only show the ShortCode resources with friendly
              #   names that exactly match this name
              # @param [String] short_code Only show the ShortCode resources that match this
              #   pattern. You can specify partial numbers and use '*' as a wildcard for any digit
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to                      read the
              #  limit with the most efficient page size,                       i.e. min(limit, 1000)
              
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(friendly_name: nil, short_code: nil, limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)
                
                page = self.page(
                    friendly_name: friendly_name,
                    short_code: short_code,
                    page_size: limits['page_size'],
                )
                
                @version.stream(page, limit: limits['limit'], page_limit: limits['page_limit'])
              end
              
              ##
              # When passed a block, yields ShortCodeInstance records from the API.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [String] friendly_name Only show the ShortCode resources with friendly
              #   names that exactly match this name
              # @param [String] short_code Only show the ShortCode resources that match this
              #   pattern. You can specify partial numbers and use '*' as a wildcard for any digit
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to read the
              #                       limit with the most efficient page size, i.e. min(limit, 1000)
              def each
                limits = @version.read_limits
                
                page = self.page(
                    page_size: limits['page_size'],
                )
                
                @version.stream(page,
                                limit: limits['limit'],
                                page_limit: limits['page_limit']).each {|x| yield x}
              end
              
              ##
              # Retrieve a single page of ShortCodeInstance records from the API.
              # Request is executed immediately.
              # @param [String] friendly_name Only show the ShortCode resources with friendly
              #   names that exactly match this name
              # @param [String] short_code Only show the ShortCode resources that match this
              #   pattern. You can specify partial numbers and use '*' as a wildcard for any digit
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              
              # @return [Page] Page of ShortCodeInstance
              def page(friendly_name: nil, short_code: nil, page_token: nil, page_number: nil, page_size: nil)
                params = {
                    'FriendlyName' => friendly_name,
                    'ShortCode' => short_code,
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                }
                response = @version.page(
                    'GET',
                    @uri,
                    params
                )
                return ShortCodePage.new(
                    @version,
                    response,
                    account_sid: @solution['account_sid'],
                )
              end
              
              ##
              # Constructs a ShortCodeContext
              # @param [String] sid The short-code Sid that uniquely identifies this resource
              
              # @return [ShortCodeContext] ShortCodeContext
              def get(sid)
                ShortCodeContext.new(
                    @version,
                    account_sid: @solution[:account_sid],
                    sid: sid,
                )
              end
              
              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Api.V2010.ShortCodeList>'
              end
            end
          
            class ShortCodePage < Page
              ##
              # Initialize the ShortCodePage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [String] account_sid A 34 character string that uniquely identifies this
              #   resource.
              
              # @return [ShortCodePage] ShortCodePage
              def initialize(version, response, account_sid: nil)
                super(version, response)
                
                # Path Solution
                @solution = {
                    'account_sid' => account_sid,
                }
              end
              
              ##
              # Build an instance of ShortCodeInstance
              # @param [Hash] payload Payload response from the API
              
              # @return [ShortCodeInstance] ShortCodeInstance
              def get_instance(payload)
                return ShortCodeInstance.new(
                    @version,
                    payload,
                    account_sid: @solution['account_sid'],
                )
              end
              
              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Api.V2010.ShortCodePage>'
              end
            end
          
            class ShortCodeContext < InstanceContext
              ##
              # Initialize the ShortCodeContext
              # @param [Version] version Version that contains the resource
              # @param [String] account_sid The account_sid
              # @param [String] sid The short-code Sid that uniquely identifies this resource
              
              # @return [ShortCodeContext] ShortCodeContext
              def initialize(version, account_sid, sid)
                super(version)
                
                # Path Solution
                @solution = {
                    account_sid: account_sid,
                    sid: sid,
                }
                @uri = "/Accounts/#{@solution[:account_sid]}/SMS/ShortCodes/#{@solution[:sid]}.json"
              end
              
              ##
              # Fetch a ShortCodeInstance
              # @return [ShortCodeInstance] Fetched ShortCodeInstance
              def fetch
                params = {}
                
                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )
                
                return ShortCodeInstance.new(
                    @version,
                    payload,
                    account_sid: @solution['account_sid'],
                    sid: @solution['sid'],
                )
              end
              
              ##
              # Update the ShortCodeInstance
              # @param [String] friendly_name A human readable descriptive text for this
              #   resource, up to 64 characters long. By default, the `FriendlyName` is just the
              #   short code.
              # @param [String] api_version SMSs to this short code will start a new TwiML
              #   session with this API version.
              # @param [String] sms_url The URL Twilio will request when receiving an incoming
              #   SMS message to this short code.
              # @param [String] sms_method The HTTP method Twilio will use when making requests
              #   to the `SmsUrl`. Either `GET` or `POST`.
              # @param [String] sms_fallback_url The URL that Twilio will request if an error
              #   occurs retrieving or executing the TwiML from `SmsUrl`.
              # @param [String] sms_fallback_method The HTTP method Twilio will use when
              #   requesting the above URL. Either `GET` or `POST`.
              
              # @return [ShortCodeInstance] Updated ShortCodeInstance
              def update(friendly_name: nil, api_version: nil, sms_url: nil, sms_method: nil, sms_fallback_url: nil, sms_fallback_method: nil)
                data = {
                    'FriendlyName' => friendly_name,
                    'ApiVersion' => api_version,
                    'SmsUrl' => sms_url,
                    'SmsMethod' => sms_method,
                    'SmsFallbackUrl' => sms_fallback_url,
                    'SmsFallbackMethod' => sms_fallback_method,
                }
                
                payload = @version.update(
                    'POST',
                    @uri,
                    data: data,
                )
                
                return ShortCodeInstance.new(
                    @version,
                    payload,
                    account_sid: @solution['account_sid'],
                    sid: @solution['sid'],
                )
              end
              
              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Api.V2010.ShortCodeContext #{context}>"
              end
            end
          
            class ShortCodeInstance < InstanceResource
              ##
              # Initialize the ShortCodeInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] account_sid A 34 character string that uniquely identifies this
              #   resource.
              # @param [String] sid The short-code Sid that uniquely identifies this resource
              
              # @return [ShortCodeInstance] ShortCodeInstance
              def initialize(version, payload, account_sid: nil, sid: nil)
                super(version)
                
                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'api_version' => payload['api_version'],
                    'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                    'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                    'friendly_name' => payload['friendly_name'],
                    'short_code' => payload['short_code'],
                    'sid' => payload['sid'],
                    'sms_fallback_method' => payload['sms_fallback_method'],
                    'sms_fallback_url' => payload['sms_fallback_url'],
                    'sms_method' => payload['sms_method'],
                    'sms_url' => payload['sms_url'],
                    'uri' => payload['uri'],
                }
                
                # Context
                @instance_context = nil
                @params = {
                    'account_sid' => account_sid,
                    'sid' => sid || @properties['sid'],
                }
              end
              
              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @param [Version] version Version that contains the resource
              
              # @return [ShortCodeContext] ShortCodeContext for this ShortCodeInstance
              def context
                unless @instance_context
                  @instance_context = ShortCodeContext.new(
                      @version,
                      @params['account_sid'],
                      @params['sid'],
                  )
                end
                @instance_context
              end
              
              def account_sid
                @properties['account_sid']
              end
              
              def api_version
                @properties['api_version']
              end
              
              def date_created
                @properties['date_created']
              end
              
              def date_updated
                @properties['date_updated']
              end
              
              def friendly_name
                @properties['friendly_name']
              end
              
              def short_code
                @properties['short_code']
              end
              
              def sid
                @properties['sid']
              end
              
              def sms_fallback_method
                @properties['sms_fallback_method']
              end
              
              def sms_fallback_url
                @properties['sms_fallback_url']
              end
              
              def sms_method
                @properties['sms_method']
              end
              
              def sms_url
                @properties['sms_url']
              end
              
              def uri
                @properties['uri']
              end
              
              ##
              # Fetch a ShortCodeInstance
              # @return [ShortCodeInstance] Fetched ShortCodeInstance
              def fetch
                @context.fetch()
              end
              
              ##
              # Update the ShortCodeInstance
              # @param [String] friendly_name A human readable descriptive text for this
              #   resource, up to 64 characters long. By default, the `FriendlyName` is just the
              #   short code.
              # @param [String] api_version SMSs to this short code will start a new TwiML
              #   session with this API version.
              # @param [String] sms_url The URL Twilio will request when receiving an incoming
              #   SMS message to this short code.
              # @param [String] sms_method The HTTP method Twilio will use when making requests
              #   to the `SmsUrl`. Either `GET` or `POST`.
              # @param [String] sms_fallback_url The URL that Twilio will request if an error
              #   occurs retrieving or executing the TwiML from `SmsUrl`.
              # @param [String] sms_fallback_method The HTTP method Twilio will use when
              #   requesting the above URL. Either `GET` or `POST`.
              
              # @return [ShortCodeInstance] Updated ShortCodeInstance
              def update(friendly_name: nil, api_version: nil, sms_url: nil, sms_method: nil, sms_fallback_url: nil, sms_fallback_method: nil)
                @context.update(
                    api_version: nil,
                    sms_url: nil,
                    sms_method: nil,
                    sms_fallback_url: nil,
                    sms_fallback_method: nil,
                )
              end
              
              ##
              # Provide a user friendly representation
              def to_s
                context = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Api.V2010.ShortCodeInstance #{context}>"
              end
            end
          end
        end
      end
    end
  end
end