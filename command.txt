https://mobaxterm.mobatek.net/

#ssh
   
  ssh -L 5555:localhost:5432 pharmmd@170.10.10.142






http://download.aptana.com/studio3/plugin/install
sudo /etc/init.d/postgresql restart


Fix warning tip:
rvm reset
rvm version


git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor vim
rvm --ruby-version --create use ruby-1.9.3-p484@phuser


rvm info
rvm get latest
rvm use ruby-1.9.3-p286 --default
rvm use ruby-1.9.3-p286 --default
rvm gemset create rails3.2.8
rvm gemset delete certus

http://ruby.taobao.org

gem install -p http://23.94.104.112:8089 rails

whereis ruby


rails new path/to/your/new/application
cd path/to/your/new/application
rails server
params: RAILS_ENV=production
unicorn_rails RAILS_ENV=production

unicorn_rails -p 3000
redis-server

pgrep -lf unicorn_rails

rvm use ruby-1.9.3-p286@rails3.1.3 --default

ps auxf | grep unicorn_rails 
grep unicorn_rails
kill -s TTIN 12113 #port
kill -9 number
killall -HUP inetd


-- generate dbs
rake db:migrate
rake db:rollback

rails generate model Product name:string description:text

rails generate migration AddPartNumberToProducts
rails generate migration AddPartNumberToProducts part_number:string
rails generate migration RemovePartNumberFromProducts part_number:string
rails generate migration AddDetailsToProducts part_number:string price:decimal

rails generate scaffold Book name:string description:text


rails g migration add_user_to_book user:references

rails generate migration AddUserIdToBooks user_id:integer

rake db:migrate VERSION=20080906120000
rake doc:rails


source /etc/profile.d/rvm.sh
curl -L get.rvm.io | bash -s stable

https://code.google.com/p/git-core/downloads/detail?name=

wget http://git-core.googlecode.com/files/git-1.8.0.tar.gz

tar -zxvf  git-1.7.9.6.tar.gz -C  /usr/local/src/

cd /usr/local/src/git-1.8.0

$ ssh-keygen -t rsa -C "your_email@youremail.com"

ssh-keygen -t rsa -C "git@github.com"
ssh -T git@github.com


git clone git@github.com:lanejianzhang/sun.git

git remote add upstream git@github.com:lanejianzhang/sun.git

git pull upstream master
git fetch upstream

ssh -T git@github.com

rpm -i http://yum.postgresql.org/9.2/redhat/rhel-5-i386/pgdg-redhat92-9.2-7.noarch.rpm

f.select :country, :options => ['USA', 'Canada', 'Mexico'], :selected => 'USA', :class => 'selector'





git clone git@github.com:frankmaster/sun.git



sudo apt-get install postgresql-server-dev-9.1 
sudo apt-get install pgadmin3
sudo apt-get install build-essential 

#su  postgres   
-bash-3.2$psql -U postgres   
postgres=#alter user postgres with password 'new password';  
postgres=#\q

sudo -u postgres psql
sudo /etc/init.d/postgresql restart
sudo apt-get install libmysql-ruby libmysqlclient-dev

sudo -u postgres createdb dbname
sudo -u postgres dropdb dbname

sudo update-alternatives --config editor

sudo gedit /etc/postgresql/9.1/main/pg_hba.conf
ALTER USER postgres WITH ENCRYPTED PASSWORD 'zhangjian';

sudo aptitude install openssh-server


sudo apt-get install sqlite3
sudo apt-get install libsqlite3-dev
sudo apt-get install libxslt-dev libxml2-dev
sudo gem install nokogiri

sudo apt-get install mysql-server mysql-client
#/etc/mysql/my.cnf
#bind-address = 127.0.0.1
mysql -u root -p
enter password
use mysql;
update user set host ='%' where user = 'root'

sudo /etc/init.d/mysql restart

// using current version exe
bundle exec rake ....
apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev

sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion


sudo apt-get install libxslt-dev libxml2-dev
sudo gem install nokogiri

sudo apt-get install curl
sudo apt-get install libcurl3 libcurl3-dev


cd /tmp
wget http://redis.googlecode.com/files/redis-2.6.10.tar.gz
tar -zxf redis-2.6.10.tar.gz
cd redis-2.6.10
make
sudo make install

sudo /etc/init.d/redis-server start
redis-server start

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make

sudo apt-get install pdftk 
sudo apt-get install netpbm

sudo apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev




----------------
cd ~/
wget http://phantomjs.googlecode.com/files/phantomjs-1.7.0-linux-x86_64.tar.bz2
mv ~/phantomjs-1.7.0-linux-x86_64.tar.bz2 /usr/local/share
cd /usr/local/share
sudo tar xvf phantomjs-1.7.0-linux-x86_64.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.7.0-linux-x86_64 /usr/local/share/phantomjs
sudo ln -s /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/phantomjs 
phantomjs --version


sudo apt-get install libqt4-dev libqtwebkit-dev
bundle update selenium-webdriver

git reset --hard HEAD




gem install rails
rails new blog
rails server
rails generate controller welcome index
root "welcome#index"

Blog::Application.routes.draw do
 
  resources :posts
 
  root to: "welcome#index"
end

 rake routes
    posts GET    /posts(.:format)          posts#index
          POST   /posts(.:format)          posts#create
 new_post GET    /posts/new(.:format)      posts#new
edit_post GET    /posts/:id/edit(.:format) posts#edit
     post GET    /posts/:id(.:format)      posts#show
          PATCH  /posts/:id(.:format)      posts#update
          PUT    /posts/:id(.:format)      posts#update
          DELETE /posts/:id(.:format)      posts#destroy
     root        /                         welcome#index
	 
rails g controller posts
rails generate model Post title:string text:text
 rake db:migrate
    params.require(:post).permit(:title, :text)  See the permit? It allows us to accept both title and text in this action.
	
class PeopleController < ActionController::Base
  # This will raise an ActiveModel::ForbiddenAttributes exception because it's using mass assignment
  # without an explicit permit step.
  def create
    Person.create(params[:person])
  end

  # This will pass with flying colors as long as there's a person key in the parameters, otherwise
  # it'll raise a ActionController::MissingParameter exception, which will get caught by 
  # ActionController::Base and turned into that 400 Bad Request reply.
  def update
    redirect_to current_account.people.find(params[:id]).tap do |person|
      person.update_attributes!(person_params)
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def person_params
      params.required(:person).permit(:name, :age)
    end
end	

rails generate model Comment commenter:string body:text post:references
class Comment < ActiveRecord::Base
  belongs_to :post
end


”sudo gedit /etc/default/grub”
GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash” => GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash text”
sudo update-grub


git fsck --unreachable #
git fsck #一致性检查
git gc  #压缩
git gc --prune=now # clear dangling blobs in git

##After someone deletes a branch from a remote repository, git will not automatically delete the local repository branches when a user does a git pull or git fetch. However, if the user would like to have all tracking branches removed from their local repository that have been deleted in a remote repository, they can type:
git remote prune origin

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java7-installer
sudo apt-get remove oracle-java7-installer

sudo apt-get install openssh-server

sudo apt install git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global core.excludesfile ~/.gitignore_global


# vi /etc/fstab
#add
/dev/sdb5    /home/frank/disk   ext4    defaults     0     2

Command:
sudo mount -t ext4 /dev/sdb5 /home/frank/diskb


#-------debug info
\Log::debug("api-client request", array("url"=> $request->getUri()->__toString()));
\Log::debug("api-client request", array("body"=> $request->getBody()->__toString()));
\Log::debug("api-client response", array("status"=> $response->getStatusCode()));
\Log::debug("api-client response", array("body"=> $response->getBody()->__toString()));

#添加用户组
usermod -a -G groupA user

mount -o remount,rw /



# PROXY
sudo apt-get install polipo
sudo vi /etc/polipo/config
---------------------------
logSyslog = true
logFile = /var/log/polipo/polipo.log
proxyAddress = "0.0.0.0"
socksParentProxy = "127.0.0.1:1080"
socksProxyType = socks5
chunkHighMark = 50331648
objectHighMark = 16384
serverMaxSlots = 64
serverSlots = 16
serverSlots1 = 32
--------------------------------------
sudo /etc/init.d/polipo restart


//Mem check total physical-memory
sudo dmidecode -t 17 | grep  Size
//mem check
free -m
 cat /proc/meminfo
 vmstat -s
 top 
 htop
 sudo dmidecode -t 17

