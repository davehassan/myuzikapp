module ApplicationHelper
  def auth_token
    <<-HTML.html_safe
      <input
        type="hidden"
        name="authenticity_token"
        value="#{form_authenticity_token}"
      >
    HTML
  end

  def log_out_button
    <<-HTML.html_safe
      <form action="#{session_url}" method="POST">
        <input type="hidden" name="_method" value="DELETE">
        #{auth_token}

        <button>Log Out!</button>
      </form>
    HTML
  end
end
