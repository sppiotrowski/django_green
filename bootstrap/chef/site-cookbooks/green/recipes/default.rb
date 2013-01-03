application "green" do
  path "/srv/green"
  owner "vagrant"
  group "vagrant"
  repository "https://github.com/sppiotrowski/django_green.git"
  revision "master"
  packages ["git-core", "vim"]

  django do
    packages ["Django", "gunicorn"]
  end

  gunicorn do
    app_module :django
    port 8181
  end
  
end
