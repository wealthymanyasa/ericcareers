
## About ERICCAREERS

ERICCAREERS is a job portal that provides information about the various jobs available OR that have been posted by users.

###Benefits of ERICCAREERS

- Easy of use , Simple, fast user registration and job posting.
- Easy edit job post functionality.
- Easy filter by job tag functionality.
- Easy to use search functionality.
- Easy to use delete wrongly posted jobs.

ERICCAREERS is accessible to anyone who has access to the internet.

## How to configure the laravel app on localhost
- Create a database locally named erriccareers utf8_general_ci
- Pull Laravel/php project from my github repo [My GIT Repository](https://github.com/my-github-repo/my-git-repository)
Rename .env.example file to .envinside your project root and fill the database information. (windows wont let you do it, so you have to open your console cd your project root directory and run mv .env.example .env )
Open the console and cd your project root directory
Run composer install or php composer.phar install
Run php artisan key:generate
Run php artisan migrate
Run php artisan db:seed to run seeders, if any.
Run php artisan serve
## Security Vulnerabilities

If you discover a security vulnerability within ERICCAREERS, please send an e-mail to Obert Manyasa via [omanyasa@yahoo.com](mailto:omanyasa@yahoo.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
