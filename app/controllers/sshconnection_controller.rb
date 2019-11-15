class SshconnectionController < ApplicationController
  def index
  end

  def connect
  	host = '159.65.168.219'
    user = 'root'
    #PASS = 'password'

    Net::SSH.start( host, user,
                    :auth_methods => ['publickey'],
                    :passphrase => 'Caspita',
                    :host_key => "ssh-rsa",
                    :keys => [ '~/.ssh/id_rsa' ],
                    :verify_host_key => :never ) do |session|
      begin
      rescue Net::SSH::HostKeyMismatch => e
        puts "remembering new key: #{e.fingerprint}"
        e.remember_host!
        retry
      end
      output = session.exec!('ls -al')
      puts output
      #redirect_to action: "index"
      render 'sshconnection/connect'
    end
  end
end
