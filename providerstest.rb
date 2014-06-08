require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)
#ActiveRecord::Base.colorize_logging = false

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database  => "/home/sergio/apps/myapp/db/development.sqlite3"
)



class Provider < ActiveRecord::Base
end


proveedor = Provider.new(:nombre_comercial => 'Black and Blue',
    :nombre_contacto => 'The Rolling Stones', :email => 'Fool To Cry', :password => 'Fool To Cry')

proveedor.save
#puts Album.find(1).tracks.length
#puts Album.find(2).tracks.length

#puts Album.find_by_title('Sticky Fingers').title
#puts Track.find_by_title('Fool To Cry').album_id