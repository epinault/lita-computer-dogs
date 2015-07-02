require "spec_helper"

describe Lita::Handlers::ComputerDogs, lita_handler: true do

  it { is_expected.to route("computer dog").to(:computer_dog) }
  it { is_expected.to route("show me a Computer dog now").to(:computer_dog) }

  it "sends a message with title and url of a random devops post" do
    send_message("computer dog")
    expect(replies.last).to match(URI.regexp)
  end

end
