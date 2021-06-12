# GOAL

This is a demo to show-case how to change the default `YYYY-MM-DD` order in a date input using the [simple_form gem](https://github.com/heartcombo/simple_form).

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

For this demo, we'll have the column `visited_on` on restaurant reviews to make a custom input for dates.

To do that, we did, [add the DB migration](https://github.com/andrerferrer/custom-simple-form-input-demo/commit/ff622c186ba13bfa3ac476eab9c567a887e254a3) and [add visited on to the form](https://github.com/andrerferrer/custom-simple-form-input-demo/commit/c4b10fa9a088452c690cc785fa52f1dd2dce4776)

### 1. Add the order options in the input

```erb
# app/views/restaurants/show.html.erb
<%= f.input :visited_on, 
                order: %i[day month year] %>
```

### If you want to check it locally
```sh
repo_name="day-month-year-demo"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/
```

And we're good to go 🤓

Good Luck and Have Fun
