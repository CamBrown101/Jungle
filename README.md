# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Also added testing with Capybara and Poltergiest.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Screenshots

![Admin page for deleting and adding items](https://github.com/CamBrown101/Jungle/blob/master/Screenshots/admin_page.png?raw=true)

![Image of the cart before checking out](https://github.com/CamBrown101/Jungle/blob/master/Screenshots/cart.png?raw=true)

![Image of the main page with all products listed. Out of stock and sale badge showing as well.](https://github.com/CamBrown101/Jungle/blob/master/Screenshots/products_page.png)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

## Dependencies for testing

- Capybara
- Poltergeist
