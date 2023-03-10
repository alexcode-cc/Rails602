require 'socket'
class PagesController < ApplicationController
  def about
    @host = Socket.gethostname
    @ip = Socket.ip_address_list.find { |ip| ip.ipv4? && !ip.ipv4_loopback? }.ip_address
    @remote_ip = request.remote_ip
    @adapter = ActiveRecord::Base.connection.adapter_name
  end
end
