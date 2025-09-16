# Pin npm packages by running ./bin/importmap

pin "application", preload: true

# config/importmap.rb
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.0/lib/assets/compiled/rails-ujs.js"
