# frozen_string_literal: true

module OpenapiClient
  class Client
    attr_reader :configuration, :connection

    def initialize(base_url: nil, **options, &block)
      @configuration = Configuration.new(base_url: base_url, **options, &block)
      @connection = Connection.new(@configuration)
    end

    def account
      @account ||= OpenapiClient::Api::Account.new(@connection)
    end

    def affiliate
      @affiliate ||= OpenapiClient::Api::Affiliate.new(@connection)
    end

    def backups
      @backups ||= OpenapiClient::Api::Backups.new(@connection)
    end

    def billing
      @billing ||= OpenapiClient::Api::Billing.new(@connection)
    end

    def buy_now_servers_list
      @buy_now_servers_list ||= OpenapiClient::Api::BuyNowServersList.new(@connection)
    end

    def captcha
      @captcha ||= OpenapiClient::Api::Captcha.new(@connection)
    end

    def dns
      @dns ||= OpenapiClient::Api::Dns.new(@connection)
    end

    def domains
      @domains ||= OpenapiClient::Api::Domains.new(@connection)
    end

    def floating_ips
      @floating_ips ||= OpenapiClient::Api::FloatingIps.new(@connection)
    end

    def home
      @home ||= OpenapiClient::Api::Home.new(@connection)
    end

    def info
      @info ||= OpenapiClient::Api::Info.new(@connection)
    end

    def licenses
      @licenses ||= OpenapiClient::Api::Licenses.new(@connection)
    end

    def login
      @login ||= OpenapiClient::Api::Login.new(@connection)
    end

    def logout
      @logout ||= OpenapiClient::Api::Logout.new(@connection)
    end

    def mail
      @mail ||= OpenapiClient::Api::Mail.new(@connection)
    end

    def oauth
      @oauth ||= OpenapiClient::Api::Oauth.new(@connection)
    end

    def ping
      @ping ||= OpenapiClient::Api::Ping.new(@connection)
    end

    def qs
      @qs ||= OpenapiClient::Api::Qs.new(@connection)
    end

    def scrub_ips
      @scrub_ips ||= OpenapiClient::Api::ScrubIps.new(@connection)
    end

    def search
      @search ||= OpenapiClient::Api::Search.new(@connection)
    end

    def servers
      @servers ||= OpenapiClient::Api::Servers.new(@connection)
    end

    def signup
      @signup ||= OpenapiClient::Api::Signup.new(@connection)
    end

    def ssl
      @ssl ||= OpenapiClient::Api::Ssl.new(@connection)
    end

    def tickets
      @tickets ||= OpenapiClient::Api::Tickets.new(@connection)
    end

    def vps
      @vps ||= OpenapiClient::Api::Vps.new(@connection)
    end

    def websites
      @websites ||= OpenapiClient::Api::Websites.new(@connection)
    end
  end
end
