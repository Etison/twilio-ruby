##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview < Domain
      ##
      # Initialize the Preview Domain
      def initialize(twilio)
        super

        @base_url = 'https://preview.twilio.com'
        @host = 'preview.twilio.com'
        @port = 443

        # Versions
        @sync = nil
        @wireless = nil
        @marketplace = nil
        @bulk_exports = nil
        @proxy = nil
        @hosted_numbers = nil
      end

      ##
      # Version sync of preview
      def sync
        @sync ||= Sync.new self
      end

      ##
      # Version wireless of preview
      def wireless
        @wireless ||= Wireless.new self
      end

      ##
      # Version marketplace of preview
      def marketplace
        @marketplace ||= Marketplace.new self
      end

      ##
      # Version bulk_exports of preview
      def bulk_exports
        @bulk_exports ||= BulkExports.new self
      end

      ##
      # Version proxy of preview
      def proxy
        @proxy ||= Proxy.new self
      end

      ##
      # Version hosted_numbers of preview
      def hosted_numbers
        @hosted_numbers ||= HostedNumbers.new self
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Service.
      # @return [Twilio::REST::Preview::Proxy::ServiceInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Proxy::ServiceList]
      def services(sid=:unset)
        self.proxy.services(sid)
      end

      ##
      # @param [String] sid The sid
      # @return [Twilio::REST::Preview::Wireless::CommandInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Wireless::CommandList]
      def commands(sid=:unset)
        self.wireless.commands(sid)
      end

      ##
      # @param [String] sid The sid
      # @return [Twilio::REST::Preview::Wireless::RatePlanInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Wireless::RatePlanList]
      def rate_plans(sid=:unset)
        self.wireless.rate_plans(sid)
      end

      ##
      # @param [String] sid The sid
      # @return [Twilio::REST::Preview::Wireless::SimInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Wireless::SimList]
      def sims(sid=:unset)
        self.wireless.sims(sid)
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Add-on.
      # @return [Twilio::REST::Preview::Marketplace::AvailableAddOnInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Marketplace::AvailableAddOnList]
      def available_add_ons(sid=:unset)
        self.marketplace.available_add_ons(sid)
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Add-on
      #   installation.
      # @return [Twilio::REST::Preview::Marketplace::InstalledAddOnInstance] if sid was passed.
      # @return [Twilio::REST::Preview::Marketplace::InstalledAddOnList]
      def installed_add_ons(sid=:unset)
        self.marketplace.installed_add_ons(sid)
      end

      ##
      # @param [String] resource_type The resource_type
      # @return [Twilio::REST::Preview::BulkExports::ExportInstance] if resource_type was passed.
      # @return [Twilio::REST::Preview::BulkExports::ExportList]
      def exports(resource_type=:unset)
        self.bulk_exports.exports(resource_type)
      end

      ##
      # @param [String] resource_type The resource_type
      # @return [Twilio::REST::Preview::BulkExports::ExportConfigurationInstance] if resource_type was passed.
      # @return [Twilio::REST::Preview::BulkExports::ExportConfigurationList]
      def export_configuration(resource_type=:unset)
        self.bulk_exports.export_configuration(resource_type)
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this
      #   HostedNumberOrder.
      # @return [Twilio::REST::Preview::HostedNumbers::HostedNumberOrderInstance] if sid was passed.
      # @return [Twilio::REST::Preview::HostedNumbers::HostedNumberOrderList]
      def hosted_number_orders(sid=:unset)
        self.hosted_numbers.hosted_number_orders(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Preview>'
      end
    end
  end
end