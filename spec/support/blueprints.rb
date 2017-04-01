require 'machinist/active_record'

 Workout.blueprint do
     weight {"170"}
     exercise {"Push-Ups"}
     repetition {"67"}
     time {"2"}
 end
# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
