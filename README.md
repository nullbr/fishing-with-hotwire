# Rails Hotwire App

Welcome to the Gone Fishing App! This application serves as a starting point for building a web application using the Ruby on Rails framework.

## Getting Started

### Prerequisites

Before running this application, make sure you have the following installed on your system:

- Ruby (version 3.0.0 or later)
- Rails (version 7.0.2 or later)
- PostgreSQL (version 10 or later)

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/nullbr/fishing-with-hotwire.git
   ```

2. Navigate to the project directory:

   ```shell
   cd fishing-with-hotwire
   ```

3. Install the dependencies:

   ```shell
   bundle install
   ```

4. Set up the database:

   ```shell
   rails db:migrate
   rails db:seed
   ```

5. Install assets dependencies:

   ```shell
   rails assets:precompile
   ```

6. Start the server:

   ```shell
   rails server
   ```

7. Open your browser and visit `http://localhost:3000` to see the application running.

## Configuration

This Rails application comes with sensible defaults, but you can customize it according to your needs. Here are some important files and directories you might want to configure:

- `config/database.yml`: Modify the database configuration settings such as username, password, host, etc.

- `config/secrets.yml`: Store secret keys and credentials used by the application. Make sure to update the secret key base and other sensitive information.

- `config/environments/`: Customize the application's environment-specific settings.

- `app/views/`: Define the views and templates for your application.

## Development

During development, you can use the following commands:

- `rails console`: Start the Rails console to interact with your application and perform debugging tasks.

- `rails routes`: Display a list of all defined routes in your application.

- `rails generate`: Use Rails generators to quickly scaffold models, controllers, views, and more.

- `bundle exec rspec`: Run the tests using RSpec.

## Deployment

To deploy your Rails 7 application to a production environment, you can follow these general steps:

1. Set up a server with the necessary dependencies (e.g., Ruby, Rails, PostgreSQL, etc.).

2. Configure your web server (e.g., Nginx, Apache) to serve the application.

3. Set up a production database and update the database configuration in `config/database.yml` accordingly.

4. Precompile the assets:

   ```shell
   rails assets:precompile RAILS_ENV=production
   ```

5. Start the Rails server in production mode:

   ```shell
   rails server -e production
   ```

For more detailed instructions on deploying a Rails application, refer to the official Rails documentation.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.
