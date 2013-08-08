module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    boniver_url = "http://www.blogcdn.com/www.spinner.com/media/2011/05/bon-iver-456cm051611.jpg "
    image_tag(gravatar_url, size: size, alt: user.name, class: "gravatar")
  end
end
