# CSRF Example

This tiny app was built as a fun way to demonstrate how a CSRF attack works.

## Instructions

To run, clone the repo, create and seed the DB, run `rails server`, and navigate to `localhost:3000` in your favorite browser. In a separate tab, open `lib/attacker.html`.

Once both are up and running, observe the two account balances, and try submitting the form in `attacker.html`. Examine the server output and refresh the app--nothing bad should have happened!

Next, comment out [app/controllers/application_controller.rb:4](https://github.com/danapczynski/csrf_example/blob/master/app/controllers/application_controller.rb#L4) and submit the form again. Refresh the app again. What happened this time?
