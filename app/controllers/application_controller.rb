class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

end
