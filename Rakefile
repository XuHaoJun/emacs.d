task :upgrade_submodules do
  puts '---- Upgradeing submodules! ----'
  sh 'git submodule foreach git pull origin master'
end

task :init_submodules do
  puts '---- Initing submodules! ----'
  sh 'git submodule init'
  sh 'git submodule update'
end

task :upgrade_emacs_packages do
  Dir.chdir File.expand_path('~/.emacs.d')
  puts '---- Pulling lastest emacs packages ----'
  sh './script/upgrade-emacs-packages.el'
end

def rename_dotemacs
  needed_rename = (File.dirname(__FILE__) !=
                   File.expand_path('~/.emacs.d'))
  if needed_rename
    ['~/.emacs.d', '~/.emacs'].each do |dotemacs|
      expand_dotemacs = File.expand_path(dotemacs)
      if File.exist? expand_dotemacs
        File.rename(expand_dotemacs, expand_dotemacs + '.old')
      end
    end
    File.rename(File.dirname(__FILE__),
                File.expand_path('~/.emacs.d'))
    return File.dirname(__FILE__)
  else
    return false
  end
end

task :default do
  renamed = rename_dotemacs
  Dir.chdir File.expand_path('~/.emacs.d') if renamed
  puts '---- Pulling lastest Version ----'
  sh 'git pull'
  sh 'rake init_submodules'
  sh 'rake upgrade_submodules'
  sh 'rake upgrade_emacs_packages'
end
