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
          class SandboxList < ListResource
            ##
            # Initialize the SandboxList
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid The account_sid
            
            # @return [SandboxList] SandboxList
            def initialize(version, account_sid: nil)
              super(version)
              
              # Path Solution
              @solution = {
                  account_sid: account_sid
              }
            end
            
            ##
            # Constructs a SandboxContext
            # @return [SandboxContext] SandboxContext
            def get
              SandboxContext.new(
                  @version,
                  account_sid: @solution[:account_sid],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Api.V2010.SandboxList>'
            end
          end
        
          class SandboxPage < Page
            ##
            # Initialize the SandboxPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [String] account_sid The account_sid
            
            # @return [SandboxPage] SandboxPage
            def initialize(version, response, account_sid: nil)
              super(version, response)
              
              # Path Solution
              @solution = {
                  'account_sid' => account_sid,
              }
            end
            
            ##
            # Build an instance of SandboxInstance
            # @param [Hash] payload Payload response from the API
            
            # @return [SandboxInstance] SandboxInstance
            def get_instance(payload)
              return SandboxInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Api.V2010.SandboxPage>'
            end
          end
        
          class SandboxContext < InstanceContext
            ##
            # Initialize the SandboxContext
            # @param [Version] version Version that contains the resource
            # @param [String] account_sid The account_sid
            
            # @return [SandboxContext] SandboxContext
            def initialize(version, account_sid)
              super(version)
              
              # Path Solution
              @solution = {
                  account_sid: account_sid,
              }
              @uri = "/Accounts/#{@solution[:account_sid]}/Sandbox.json"
            end
            
            ##
            # Fetch a SandboxInstance
            # @return [SandboxInstance] Fetched SandboxInstance
            def fetch
              params = {}
              
              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )
              
              return SandboxInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Update the SandboxInstance
            # @param [String] voice_url The voice_url
            # @param [String] voice_method The voice_method
            # @param [String] sms_url The sms_url
            # @param [String] sms_method The sms_method
            # @param [String] status_callback The status_callback
            # @param [String] status_callback_method The status_callback_method
            
            # @return [SandboxInstance] Updated SandboxInstance
            def update(voice_url: nil, voice_method: nil, sms_url: nil, sms_method: nil, status_callback: nil, status_callback_method: nil)
              data = {
                  'VoiceUrl' => voice_url,
                  'VoiceMethod' => voice_method,
                  'SmsUrl' => sms_url,
                  'SmsMethod' => sms_method,
                  'StatusCallback' => status_callback,
                  'StatusCallbackMethod' => status_callback_method,
              }
              
              payload = @version.update(
                  'POST',
                  @uri,
                  data: data,
              )
              
              return SandboxInstance.new(
                  @version,
                  payload,
                  account_sid: @solution['account_sid'],
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Api.V2010.SandboxContext #{context}>"
            end
          end
        
          class SandboxInstance < InstanceResource
            ##
            # Initialize the SandboxInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] account_sid The account_sid
            
            # @return [SandboxInstance] SandboxInstance
            def initialize(version, payload, account_sid: nil)
              super(version)
              
              # Marshaled Properties
              @properties = {
                  'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                  'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                  'pin' => payload['pin'].to_i,
                  'account_sid' => payload['account_sid'],
                  'phone_number' => payload['phone_number'],
                  'application_sid' => payload['application_sid'],
                  'api_version' => payload['api_version'],
                  'voice_url' => payload['voice_url'],
                  'voice_method' => payload['voice_method'],
                  'sms_url' => payload['sms_url'],
                  'sms_method' => payload['sms_method'],
                  'status_callback' => payload['status_callback'],
                  'status_callback_method' => payload['status_callback_method'],
                  'uri' => payload['uri'],
              }
              
              # Context
              @instance_context = nil
              @params = {
                  'account_sid' => account_sid,
              }
            end
            
            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @param [Version] version Version that contains the resource
            
            # @return [SandboxContext] SandboxContext for this SandboxInstance
            def context
              unless @instance_context
                @instance_context = SandboxContext.new(
                    @version,
                    @params['account_sid'],
                )
              end
              @instance_context
            end
            
            def date_created
              @properties['date_created']
            end
            
            def date_updated
              @properties['date_updated']
            end
            
            def pin
              @properties['pin']
            end
            
            def account_sid
              @properties['account_sid']
            end
            
            def phone_number
              @properties['phone_number']
            end
            
            def application_sid
              @properties['application_sid']
            end
            
            def api_version
              @properties['api_version']
            end
            
            def voice_url
              @properties['voice_url']
            end
            
            def voice_method
              @properties['voice_method']
            end
            
            def sms_url
              @properties['sms_url']
            end
            
            def sms_method
              @properties['sms_method']
            end
            
            def status_callback
              @properties['status_callback']
            end
            
            def status_callback_method
              @properties['status_callback_method']
            end
            
            def uri
              @properties['uri']
            end
            
            ##
            # Fetch a SandboxInstance
            # @return [SandboxInstance] Fetched SandboxInstance
            def fetch
              @context.fetch()
            end
            
            ##
            # Update the SandboxInstance
            # @param [String] voice_url The voice_url
            # @param [String] voice_method The voice_method
            # @param [String] sms_url The sms_url
            # @param [String] sms_method The sms_method
            # @param [String] status_callback The status_callback
            # @param [String] status_callback_method The status_callback_method
            
            # @return [SandboxInstance] Updated SandboxInstance
            def update(voice_url: nil, voice_method: nil, sms_url: nil, sms_method: nil, status_callback: nil, status_callback_method: nil)
              @context.update(
                  voice_method: nil,
                  sms_url: nil,
                  sms_method: nil,
                  status_callback: nil,
                  status_callback_method: nil,
              )
            end
            
            ##
            # Provide a user friendly representation
            def to_s
              context = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Api.V2010.SandboxInstance #{context}>"
            end
          end
        end
      end
    end
  end
end