module Lita
  module Handlers
    class ComputerDogs < Handler
      route(/computer dog/i, :computer_dog)
    
      def computer_dog(response)
        reply_to_name = response.user.metadata['mention_name'].nil? ?
                         "#{response.user.name}" :
                        "#{response.user.metadata['mention_name']}"
        post = random_post

        response.reply "#{post[:image]}"
      end


      private

      def random_post
        resp = Curl.get('http://computerdogs.tumblr.com/random') do |curl|
          curl.follow_location = true
        end
        doc = Nokogiri::HTML(resp.body_str)

        img = doc.at("li[class=post]//img")['src']

        {image: img} 
      end

    end

    Lita.register_handler(ComputerDogs)
  end
end
