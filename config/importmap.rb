# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "web3", to: "https://ga.jspm.io/npm:web3@1.8.0/dist/web3.min.js"
pin "hardhat", to: "https://cdn.jsdelivr.net/npm/hardhat-request@0.0.1/lib/index.min.js"
pin "tailwindcss-stimulus-components", to: "tailwindcss-stimulus-components.js"
# pin "@openzeppelin/contracts", to: "https://cdn.jsdelivr.net/npm/@openzeppelin/contracts@4.8.3/+esm"pin "tailwindcss-stimulus-components" # @5.0.2
