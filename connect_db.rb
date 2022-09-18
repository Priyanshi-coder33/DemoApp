require 'active_record'
def connect_db!  
    ActiveRecord::Base.establish_connection(    
        host: 'localhost',     
        adapter: 'postgresql',    
        database: 'bootcamp',     
        user: 'anshi',     
        password: 'Priyanshi03'  
    )
end